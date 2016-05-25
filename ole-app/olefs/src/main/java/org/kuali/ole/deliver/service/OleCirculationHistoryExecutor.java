package org.kuali.ole.deliver.service;

import org.apache.log4j.Logger;
import org.kuali.ole.deliver.bo.OleCirculationHistory;
import org.kuali.ole.deliver.bo.OleItemSearch;
import org.kuali.ole.deliver.bo.OleLoanDocument;
import org.kuali.ole.deliver.bo.OlePatronDocument;
import org.kuali.ole.deliver.util.ItemInfoUtil;
import org.kuali.ole.docstore.engine.service.storage.rdbms.pojo.HoldingsRecord;
import org.kuali.ole.docstore.engine.service.storage.rdbms.pojo.ItemRecord;
import org.kuali.ole.ingest.pojo.OlePatron;
import org.kuali.ole.sys.context.SpringContext;
import org.kuali.ole.util.DocstoreUtil;
import org.kuali.rice.kim.api.identity.IdentityService;
import org.kuali.rice.kim.api.services.KimApiServiceLocator;
import org.kuali.rice.kim.impl.identity.affiliation.EntityAffiliationBo;
import org.kuali.rice.kim.impl.identity.employment.EntityEmploymentBo;
import org.kuali.rice.kim.impl.identity.entity.EntityBo;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.KRADServiceLocator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by maheswarang on 3/8/16.
 */
public class OleCirculationHistoryExecutor{
    private static final Logger LOG = Logger.getLogger(OleCirculationHistoryExecutor.class);
    private BusinessObjectService businessObjectService;
    //protected List<OleLoanDocument> oleLoanDocumentList;



    public OleCirculationHistoryExecutor(){

    }


    public BusinessObjectService getBusinessObjectService() {
        if (businessObjectService == null) {
            businessObjectService = KRADServiceLocator.getBusinessObjectService();
        }
        return businessObjectService;
    }


    public void run(List<OleLoanDocument> oleLoanDocuments,OlePatronDocument olePatron) {
        OleCirculationHistory oleCirculationHistory =null;
        try{
      //  getOleDeliverRequestDocumentHelperService().getLoanDocumentWithItemInfo(oleLoanDocumentList,false);
            List<OleCirculationHistory> oleCirculationHistoryList = new ArrayList<OleCirculationHistory>();
           for(OleLoanDocument oleLoanDocument : oleLoanDocuments){
            oleCirculationHistory = createCirculationHistoryRecords(oleLoanDocument,olePatron);
            if(oleCirculationHistory!=null){
                oleCirculationHistoryList.add(oleCirculationHistory);
            }
        }
        if(oleCirculationHistoryList!=null && oleCirculationHistoryList.size()>0){
            getBusinessObjectService().save(oleCirculationHistoryList);
        }
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public OleCirculationHistory createCirculationHistoryRecords(OleLoanDocument oleLoanDocument,OlePatronDocument olePatron) {
        //LOG.info("Processing Loan Document with Loan Id: " + oleLoanDocument.getLoanId());
        OleCirculationHistory oleCirculationHistory = new OleCirculationHistory();
        try{
            oleCirculationHistory = setCirculationDetails(oleCirculationHistory, oleLoanDocument);
            oleCirculationHistory = setPatronDetails(oleCirculationHistory,olePatron);
            oleCirculationHistory = setItemDetails(oleCirculationHistory,oleLoanDocument);
        }catch(Exception e){
            oleCirculationHistory = null;
            LOG.error(e,e);
            LOG.info("Exception occured while processing the loan with Loan Id " + oleLoanDocument.getLoanId());
        }
        return oleCirculationHistory;
    }

    public OleCirculationHistory setPatronDetails(OleCirculationHistory oleCirculationHistory,OlePatronDocument olePatronDocument){
        if(olePatronDocument!=null){
            oleCirculationHistory.setStatisticalCategory(olePatronDocument.getStatisticalCategory());
            oleCirculationHistory.setProxyPatronId(olePatronDocument.getProxyPatronId());
            if (olePatronDocument.getOleBorrowerType() != null) {
                oleCirculationHistory.setPatronTypeId(olePatronDocument.getOleBorrowerType().getBorrowerTypeId());
            }
          //setAffiliationDetails(oleCirculationHistory);
        }
   return oleCirculationHistory;
    }


    public OleCirculationHistory setCirculationDetails(OleCirculationHistory oleCirculationHistory,OleLoanDocument oleLoanDocument){
        oleCirculationHistory.setLoanId(oleLoanDocument.getLoanId());
        oleCirculationHistory.setCirculationPolicyId(oleLoanDocument.getCirculationPolicyId());
        oleCirculationHistory.setCreateDate(oleLoanDocument.getCreateDate());
        oleCirculationHistory.setCirculationLocationId(oleLoanDocument.getCirculationLocationId());
        oleCirculationHistory.setDueDate(oleLoanDocument.getLoanDueDate());
        oleCirculationHistory.setPatronId(oleLoanDocument.getPatronId());
        oleCirculationHistory.setOleRequestId(oleLoanDocument.getOleRequestId());
        oleCirculationHistory.setProxyPatronId(oleLoanDocument.getProxyPatronId());
        oleCirculationHistory.setOperatorCreateId(oleLoanDocument.getLoanOperatorId());
        return oleCirculationHistory;
    }

    public OleCirculationHistory setItemDetails(OleCirculationHistory oleCirculationHistory,OleLoanDocument oleLoanDocument){
        OleItemSearch oleItemSearch = new DocstoreUtil().getOleItemSearchList(oleLoanDocument.getItemUuid());
        oleCirculationHistory.setBibAuthor(oleItemSearch.getAuthor());
        oleCirculationHistory.setBibTitle(oleItemSearch.getTitle());
        oleCirculationHistory.setItemId(oleLoanDocument.getItemId());
        oleCirculationHistory.setItemUuid(oleLoanDocument.getItemUuid());
        oleCirculationHistory.setItemLocation(oleItemSearch.getShelvingLocation());
        oleCirculationHistory.setHoldingsLocation(oleItemSearch.getShelvingLocation());
        oleCirculationHistory.setItemTypeId(oleLoanDocument.getItemTypeId());
        oleCirculationHistory.setTemporaryItemTypeId(oleLoanDocument.getTempItemTypeId());
        return oleCirculationHistory;

    }

  /*  protected void setAffiliationDetails(OleCirculationHistory oleCirculationHistory) {
        if ( entityAffiliationBo!= null) {
            oleCirculationHistory.setAffiliationId(entityAffiliationBo.getAffiliationTypeCode());
        }
        if (entityEmploymentBo != null && entityEmploymentBo.getPrimaryDepartmentCode() != null) {
            oleCirculationHistory.setDeptId(entityEmploymentBo.getPrimaryDepartmentCode());
        }
    }*/
}
