package org.kuali.ole.gobi.resolvers;

import org.kuali.ole.OLEConstants;
import org.kuali.ole.pojo.OleTxRecord;

/**
 * Created by pvsubrah on 9/3/15.
 */
public class PercentValueResolver extends TxValuResolver {

    @Override
    public boolean isInterested(String attributeName) {
        return OLEConstants.OLEBatchProcess.PERCENT.equals(attributeName);
    }

    @Override
    public void setAttributeValue(OleTxRecord oleTxRecord, String attributeValue) {
        oleTxRecord.setPercent(attributeValue);
    }
}
