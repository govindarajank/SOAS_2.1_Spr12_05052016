package org.kuali.ole.oleng.util;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.kuali.ole.utility.JSONHelperUtil;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.KRADServiceLocator;

/**
 * Created by SheikS on 12/18/2015.
 */
public class OleNgUtil extends JSONHelperUtil {
    private BusinessObjectService businessObjectService;
    private ObjectMapper objectMapper;



    public BusinessObjectService getBusinessObjectService() {
        if(null == businessObjectService) {
            businessObjectService = KRADServiceLocator.getBusinessObjectService();
        }
        return businessObjectService;
    }

    public ObjectMapper getObjectMapper() {
        if(null == objectMapper) {
            objectMapper = new ObjectMapper();
        }
        return objectMapper;
    }
}
