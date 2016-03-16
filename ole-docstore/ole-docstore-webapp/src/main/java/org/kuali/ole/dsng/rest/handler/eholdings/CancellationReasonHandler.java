package org.kuali.ole.dsng.rest.handler.eholdings;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONObject;
import org.kuali.ole.constants.OleNGConstants;
import org.kuali.ole.docstore.engine.service.storage.rdbms.pojo.HoldingsRecord;
import org.kuali.ole.Exchange;
import org.kuali.ole.dsng.rest.handler.holdings.HoldingsHandler;

import java.util.Iterator;
import java.util.List;

/**
 * Created by SheikS on 12/31/2015.
 */
public class CancellationReasonHandler extends HoldingsHandler {

    private final String TYPE = "Cancellation Reason";

    @Override
    public Boolean isInterested(String operation) {
        return operation.equals(TYPE);
    }

    @Override
    public void process(JSONObject requestJsonObject, Exchange exchange) {
        HoldingsRecord holdingRecord = (HoldingsRecord) exchange.get(OleNGConstants.HOLDINGS_RECORD);
        String cancellationReason = getStringValueFromJsonObject(requestJsonObject, TYPE);
        List<String> parsedValues = parseCommaSeperatedValues(cancellationReason);
        for (Iterator<String> iterator = parsedValues.iterator(); iterator.hasNext(); ) {
            String cancellationReasonValue = iterator.next();
            if (StringUtils.equals(holdingRecord.getCancellationReason(), cancellationReasonValue)) {
                exchange.add(OleNGConstants.MATCHED_HOLDINGS, Boolean.TRUE);
                exchange.add(OleNGConstants.MATCHED_VALUE, cancellationReasonValue);
            }
        }
    }

    @Override
    public void processDataMappings(JSONObject requestJsonObject, Exchange exchange) {
        JSONArray jsonArrayeFromJsonObject = getJSONArrayeFromJsonObject(requestJsonObject, TYPE);
        List<String> listFromJSONArray = getListFromJSONArray(jsonArrayeFromJsonObject.toString());
        if(CollectionUtils.isNotEmpty(listFromJSONArray)) {
            String cancellationReson = listFromJSONArray.get(0);
            HoldingsRecord holdingRecord = (HoldingsRecord) exchange.get(OleNGConstants.HOLDINGS_RECORD);
            holdingRecord.setCancellationReason(cancellationReson);
            exchange.add(OleNGConstants.HOLDINGS_RECORD, holdingRecord);
        }
    }
}
