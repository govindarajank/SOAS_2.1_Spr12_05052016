
# -----------------------------------------------------------------------
# AP_AUTO_APRV_EXCL_T
# -----------------------------------------------------------------------
drop table if exists AP_AUTO_APRV_EXCL_T
/

CREATE TABLE AP_AUTO_APRV_EXCL_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT AP_AUTO_APRV_EXCL_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR)

    , CONSTRAINT AP_AUTO_APRV_EXCL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_CRDT_MEMO_ACCT_CHG_T
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEMO_ACCT_CHG_T
/

CREATE TABLE AP_CRDT_MEMO_ACCT_CHG_T
(
      CRDT_MEMO_ACCT_CHG_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CRDT_MEMO_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , ACLN_PCT DECIMAL(35,20) NOT NULL
        , CRDT_MEMO_ACCT_CHG_TS DATETIME NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
    
    , CONSTRAINT AP_CRDT_MEMO_ACCT_CHG_TP1 PRIMARY KEY(CRDT_MEMO_ACCT_CHG_ID)

    , CONSTRAINT AP_CRDT_MEMO_ACCT_CHG_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX AP_CRDT_MEMO_ACCT_CHG_TI1 (CRDT_MEMO_ACCT_CHG_TS )
    
                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX AP_CRDT_MEMO_ACCT_CHG_TI2 (CRDT_MEMO_ITM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_CRDT_MEMO_ACCT_T
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEMO_ACCT_T
/

CREATE TABLE AP_CRDT_MEMO_ACCT_T
(
      CRDT_MEMO_ACCT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CRDT_MEMO_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , ACLN_PCT DECIMAL(35,20) NOT NULL
        , FDOC_LINE_NBR DECIMAL(7)
    
    , CONSTRAINT AP_CRDT_MEMO_ACCT_TP1 PRIMARY KEY(CRDT_MEMO_ACCT_ID)

    , CONSTRAINT AP_CRDT_MEMO_ACCT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX AP_CRDT_MEMO_ACCT_TI1 (CRDT_MEMO_ITM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_CRDT_MEMO_ITM_T
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEMO_ITM_T
/

CREATE TABLE AP_CRDT_MEMO_ITM_T
(
      CRDT_MEMO_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CRDT_MEMO_ID DECIMAL(9) NOT NULL
        , ITM_LN_NBR DECIMAL(4)
        , ITM_TYP_CD VARCHAR(4) NOT NULL
        , ITM_CRDT_QTY DECIMAL(11,2)
        , ITM_UNT_PRC DECIMAL(19,4)
        , ITM_EXTND_PRC DECIMAL(19,2)
        , ITM_ASND_TO_TRADE_IN_IND VARCHAR(1)
        , ITM_DESC VARCHAR(4000)
        , PO_INV_TOT_QTY DECIMAL(11,2)
        , PO_UNT_PRC DECIMAL(19,4)
        , PO_EXTND_PRC DECIMAL(19,2)
        , PMT_RQST_INV_TOT_QTY DECIMAL(11,2)
        , PMT_RQST_UNT_PRC DECIMAL(19,4)
        , PMT_RQST_EXTND_PRC DECIMAL(19,2)
        , ITM_TAX_AMT DECIMAL(19,4)
        , CPTL_AST_TRN_TYP_CD VARCHAR(4)
        , OLE_FOR_DISCNT_TYP VARCHAR(1)
        , OLE_FOR_DISCNT DECIMAL(19,4)
        , OLE_FOR_LST_PRC DECIMAL(19,4)
        , OLE_FOR_DISCNT_AMT DECIMAL(19,4)
        , OLE_FOR_UNT_CST DECIMAL(19,4)
        , OLE_EXCHANGE_RT DECIMAL(19,6)
        , OLE_CON_CST DECIMAL(19,4)
        , OLE_DOCUMENT_UUID VARCHAR(50)
    
    , CONSTRAINT AP_CRDT_MEMO_ITM_TP1 PRIMARY KEY(CRDT_MEMO_ITM_ID)

    , CONSTRAINT AP_CRDT_MEMO_ITM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX AP_CRDT_MEMO_ITM_TI1 (CRDT_MEMO_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_CRDT_MEMO_ITM_USE_TAX_T
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEMO_ITM_USE_TAX_T
/

CREATE TABLE AP_CRDT_MEMO_ITM_USE_TAX_T
(
      CRDT_MEMO_ITM_USE_TAX_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CRDT_MEMO_ITM_ID DECIMAL(10)
        , RATE_CD VARCHAR(10) NOT NULL
        , TAX_AMT DECIMAL(19,4)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
    
    , CONSTRAINT AP_CRDT_MEMO_ITM_USE_TAX_TP1 PRIMARY KEY(CRDT_MEMO_ITM_USE_TAX_ID)

    , CONSTRAINT AP_CRDT_MEMO_ITM_USE_TAX_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_CRDT_MEMO_STAT_T
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEMO_STAT_T
/

CREATE TABLE AP_CRDT_MEMO_STAT_T
(
      CRDT_MEMO_STAT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CRDT_MEMO_STAT_DESC VARCHAR(45) NOT NULL
    
    , CONSTRAINT AP_CRDT_MEMO_STAT_TP1 PRIMARY KEY(CRDT_MEMO_STAT_CD)

    , CONSTRAINT AP_CRDT_MEMO_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_CRDT_MEMO_T
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEMO_T
/

CREATE TABLE AP_CRDT_MEMO_T
(
      CRDT_MEMO_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NBR VARCHAR(14) NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_DTL_ASND_ID DECIMAL(10) NOT NULL
        , VNDR_CUST_NBR VARCHAR(30)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , INV_RQST_ID DECIMAL(9)
        , VNDR_PSTL_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , PO_ID DECIMAL(9)
        , PO_ENCUM_FSCL_YR DECIMAL(4)
        , PMT_RQST_ID DECIMAL(9)
        , CRDT_MEMO_STAT_CD VARCHAR(4)
        , CRDT_MEMO_NBR VARCHAR(35)
        , CRDT_MEMO_DT DATETIME NOT NULL
        , CRDT_MEMO_AMT DECIMAL(19,2) NOT NULL
        , CRDT_MEMO_NTE_LN1_TXT VARCHAR(90)
        , CRDT_MEMO_NTE_LN2_TXT VARCHAR(90)
        , CRDT_MEMO_NTE_LN3_TXT VARCHAR(90)
        , CRDT_MEMO_PD_TS DATETIME
        , CRDT_HLD_IND VARCHAR(1) default 'N' NOT NULL
        , AP_PRCSR_ID VARCHAR(40) NOT NULL
        , PRCS_CMP_CD VARCHAR(2) NOT NULL
        , AP_APRVL_DT DATETIME
        , ITM_MISC_CRDT_DESC VARCHAR(255)
        , CRDT_MEMO_EXTRT_DT DATETIME
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , AP_HLD_ID VARCHAR(40)
        , CONT_ACCT_IND VARCHAR(1)
        , CLOSE_PO_IND VARCHAR(1)
        , REOPEN_PO_IND VARCHAR(1)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
        , USE_TAX_IND VARCHAR(1) default 'Y' NOT NULL
        , BNK_CD VARCHAR(4)
        , VNDR_ATTN_NM VARCHAR(45)
        , ACCT_DISTR_MTD_IND VARCHAR(1) default 'P' NOT NULL
        , CRDT_MEMO_INV_TYP_ID DECIMAL(10)
        , CRDT_MEMO_INV_SUB_TYP_ID DECIMAL(10)
        , CRDT_PMT_MTHD_ID DECIMAL(10)
        , OLE_PR_BY VARCHAR(50)
    
    , CONSTRAINT AP_CRDT_MEMO_TP1 PRIMARY KEY(CRDT_MEMO_ID)

    , CONSTRAINT AP_CRDT_MEMO_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX AP_CRDT_MEMO_TI1 (PO_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX AP_CRDT_MEMO_TI2 (CRDT_MEMO_STAT_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX AP_CRDT_MEMO_TI3 (PMT_RQST_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX AP_CRDT_MEMO_TI4 (VNDR_HDR_GNRTD_ID , VNDR_DTL_ASND_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX AP_CRDT_MEMO_TI6 (FDOC_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX AP_CRDT_MEMO_TI7 (AP_PUR_DOC_LNK_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_ELCTRNC_INV_LOAD_SUM_T
# -----------------------------------------------------------------------
drop table if exists AP_ELCTRNC_INV_LOAD_SUM_T
/

CREATE TABLE AP_ELCTRNC_INV_LOAD_SUM_T
(
      INV_LOAD_SUM_ID DECIMAL(14)
        , VNDR_DUNS_NBR VARCHAR(50)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FL_PROC_DT DATETIME NOT NULL
        , INV_LOAD_SCCSS_CNT DECIMAL(4)
        , INV_LOAD_SCCSS_AMT DECIMAL(19,4)
        , INV_LOAD_FAIL_CNT DECIMAL(4)
        , INV_LOAD_FAIL_AMT DECIMAL(19,4)
    
    , CONSTRAINT AP_ELCTRNC_INV_LOAD_SUM_TP1 PRIMARY KEY(INV_LOAD_SUM_ID,VNDR_DUNS_NBR)

    , CONSTRAINT AP_ELCTRNC_INV_LOAD_SUM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_ELCTRNC_INV_MAP_T
# -----------------------------------------------------------------------
drop table if exists AP_ELCTRNC_INV_MAP_T
/

CREATE TABLE AP_ELCTRNC_INV_MAP_T
(
      AP_ELCTRNC_INV_MAP_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , INV_ITM_TYP_CD VARCHAR(11)
        , ITM_TYP_CD VARCHAR(4)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT AP_ELCTRNC_INV_MAP_TP1 PRIMARY KEY(AP_ELCTRNC_INV_MAP_ID)

    , CONSTRAINT AP_ELCTRNC_INV_MAP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_ELCTRNC_INV_RJT_DOC_T
# -----------------------------------------------------------------------
drop table if exists AP_ELCTRNC_INV_RJT_DOC_T
/

CREATE TABLE AP_ELCTRNC_INV_RJT_DOC_T
(
      INV_RJT_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_LOAD_SUM_ID DECIMAL(14)
        , INV_PROC_DT DATETIME NOT NULL
        , INV_FL_NM VARCHAR(200)
        , VNDR_DUNS_NBR VARCHAR(50)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , INV_FL_DT_TXT VARCHAR(100)
        , INV_FL_NBR VARCHAR(100)
        , INV_FL_PRPS_ID VARCHAR(50)
        , INV_FL_OPRN_ID VARCHAR(50)
        , INV_FL_DPLMNT_MODE_VAL VARCHAR(50)
        , INV_FL_HDR_TYP_IND VARCHAR(1) NOT NULL
        , INV_FL_INFO_ONLY_IND VARCHAR(1) NOT NULL
        , INV_FL_TAX_IN_LN_IND VARCHAR(1) NOT NULL
        , INV_FL_SPCL_HANDLG_IN_LN_IND VARCHAR(1) NOT NULL
        , INV_FL_SHP_IN_LN_IND VARCHAR(1) NOT NULL
        , INV_FL_DSCT_IN_LN_IND VARCHAR(1) NOT NULL
        , INV_ORD_REF_ORD_ID VARCHAR(100)
        , INV_ORD_REF_DOC_REF_PYLD_ID VARCHAR(100)
        , INV_ORD_REF_DOC_REF_TXT VARCHAR(100)
        , INV_ORD_MSTR_AGRMN_REF_ID VARCHAR(100)
        , INV_ORD_MSTR_AGRMN_REF_DT_TXT VARCHAR(100)
        , INV_ORD_MSTR_AGRMN_INFO_ID VARCHAR(100)
        , INV_ORD_MSTR_AGRMN_INFO_DT_TXT VARCHAR(100)
        , INV_ORD_PO_ORD_ID VARCHAR(100)
        , INV_ORD_PO_ORD_DT_TXT VARCHAR(100)
        , INV_ORD_SUPP_ORD_INFO_ID VARCHAR(100)
        , PO_ID DECIMAL(9)
        , INV_ITM_SUB_TOT_AMT DECIMAL(19,4)
        , INV_ITM_SUB_TOT_CRNCY_CD VARCHAR(20)
        , INV_ITM_SPCL_HANDLG_AMT DECIMAL(19,4)
        , INV_ITM_SPCL_HANDLG_CRNCY_CD VARCHAR(20)
        , INV_ITM_SHP_AMT DECIMAL(19,4)
        , INV_ITM_SHP_CRNCY_CD VARCHAR(20)
        , INV_ITM_SHP_DESC VARCHAR(300)
        , INV_ITM_TAX_AMT DECIMAL(19,4)
        , INV_ITM_TAX_CRNCY_CD VARCHAR(20)
        , INV_ITM_TAX_DESC VARCHAR(300)
        , INV_ITM_GRS_AMT DECIMAL(19,4)
        , INV_ITM_GRS_CRNCY_CD VARCHAR(20)
        , INV_ITM_DSCT_AMT DECIMAL(19,4)
        , INV_ITM_DSCT_CRNCY_CD VARCHAR(20)
        , INV_ITM_NET_AMT DECIMAL(19,4)
        , INV_ITM_NET_CRNCY_CD VARCHAR(20)
        , INV_RJT_EXTRT_DT DATETIME
        , PO_DLVY_CMP_CD VARCHAR(2)
        , INV_SHP_DT_TXT VARCHAR(100)
        , INV_ADDR_NM VARCHAR(100)
        , INV_SHP_TO_LN1_ADDR VARCHAR(200)
        , INV_SHP_TO_LN2_ADDR VARCHAR(200)
        , INV_SHP_TO_LN3_ADDR VARCHAR(200)
        , INV_CUST_NBR VARCHAR(50)
        , INV_SHP_TO_ST_CD VARCHAR(200)
        , INV_SHP_TO_CNTRY_CD VARCHAR(200)
        , INV_SHP_TO_CTY_NM VARCHAR(200)
        , INV_SHP_TO_PSTL_CD VARCHAR(200)
        , INV_PO_NBR VARCHAR(100)
        , INV_SHP_TO_CNTRY_NM VARCHAR(200)
        , INV_SHP_TO_ADDR_TYP_NM VARCHAR(30)
        , INV_BILL_TO_ADDR_NM VARCHAR(100)
        , INV_BILL_TO_LN1_ADDR VARCHAR(200)
        , INV_BILL_TO_LN2_ADDR VARCHAR(200)
        , INV_BILL_TO_LN3_ADDR VARCHAR(200)
        , INV_BILL_TO_CTY_NM VARCHAR(200)
        , INV_BILL_TO_ST_CD VARCHAR(200)
        , INV_BILL_TO_PSTL_CD VARCHAR(200)
        , INV_BILL_TO_CNTRY_CD VARCHAR(200)
        , INV_BILL_TO_CNTRY_NM VARCHAR(200)
        , INV_BILL_TO_ADDR_TYP_NM VARCHAR(30)
        , INV_RMT_TO_ADDR_NM VARCHAR(100)
        , INV_RMT_TO_LN1_ADDR VARCHAR(200)
        , INV_RMT_TO_LN2_ADDR VARCHAR(200)
        , INV_RMT_TO_LN3_ADDR VARCHAR(200)
        , INV_RMT_TO_CTY_NM VARCHAR(200)
        , INV_RMT_TO_ST_CD VARCHAR(200)
        , INV_RMT_TO_PSTL_CD VARCHAR(50)
        , INV_RMT_TO_CNTRY_CD VARCHAR(200)
        , INV_RMT_TO_CNTRY_NM VARCHAR(200)
        , INV_RMT_TO_ADDR_TYP_NM VARCHAR(30)
        , FDOC_NBR VARCHAR(14) NOT NULL
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , INV_NUM_ACPT_IND VARCHAR(1)
        , INV_RJT_RSRCH_IND VARCHAR(1)
        , AP_APRVL_DT DATETIME
        , PREQ_ID DECIMAL(9)
    
    , CONSTRAINT AP_ELCTRNC_INV_RJT_DOC_TP1 PRIMARY KEY(INV_RJT_ID)

    , CONSTRAINT AP_ELCTRNC_INV_HDR_INFO_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX AP_ELCTRNC_INV_RJT_DOC_TI1 (INV_LOAD_SUM_ID , VNDR_DUNS_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX AP_ELCTRNC_INV_RJT_DOC_TI2 (AP_PUR_DOC_LNK_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX AP_ELCTRNC_INV_RJT_DOC_TI3 (FDOC_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_ELCTRNC_INV_RJT_ITM_T
# -----------------------------------------------------------------------
drop table if exists AP_ELCTRNC_INV_RJT_ITM_T
/

CREATE TABLE AP_ELCTRNC_INV_RJT_ITM_T
(
      INV_RJT_ITM_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_RJT_ID DECIMAL(9) NOT NULL
        , INV_ITM_LN_NBR DECIMAL(4)
        , INV_ITM_QTY DECIMAL(11,4)
        , INV_ITM_UOM_CD VARCHAR(4)
        , INV_ITM_UNIT_PRC DECIMAL(19,4)
        , INV_ITM_UNIT_PRC_CRNCY_CD VARCHAR(20)
        , INV_ITM_SUB_TOT_AMT DECIMAL(19,4)
        , INV_ITM_SUB_TOT_CRNCY_CD VARCHAR(20)
        , INV_ITM_SPCL_HANDLG_AMT DECIMAL(19,4)
        , INV_ITM_SPCL_HANDLG_CRNCY_CD VARCHAR(20)
        , INV_ITM_SHP_AMT DECIMAL(19,4)
        , INV_ITM_SHP_CRNCY_CD VARCHAR(20)
        , INV_ITM_SHP_DESC VARCHAR(300)
        , INV_ITM_TAX_AMT DECIMAL(19,4)
        , INV_ITM_TAX_CRNCY_CD VARCHAR(20)
        , INV_ITM_TAX_DESC VARCHAR(300)
        , INV_ITM_GRS_AMT DECIMAL(19,4)
        , INV_ITM_GRS_CRNCY_CD VARCHAR(20)
        , INV_ITM_DSCT_AMT DECIMAL(19,4)
        , INV_ITM_DSCT_CRNCY_CD VARCHAR(20)
        , INV_ITM_NET_AMT DECIMAL(19,4)
        , INV_ITM_NET_CRNCY_CD VARCHAR(20)
        , INV_REF_ITM_LN_NBR DECIMAL(4)
        , INV_REF_ITM_SERIAL_NBR VARCHAR(100)
        , INV_REF_ITM_SUPP_PART_ID VARCHAR(100)
        , INV_REF_ITM_SUPP_PART_AUX_ID VARCHAR(100)
        , INV_REF_ITM_DESC VARCHAR(400)
        , INV_REF_ITM_MFR_PART_ID VARCHAR(100)
        , INV_REF_ITM_MFR_NM VARCHAR(100)
        , INV_REF_ITM_CNTRY_CD VARCHAR(50)
        , INV_REF_ITM_CNTRY_NM VARCHAR(100)
        , INV_CATLG_NBR VARCHAR(50)
        , INV_UOM_ACPT_IND VARCHAR(1)
        , INV_CATLG_NBR_ACPT_IND VARCHAR(1)
    
    , CONSTRAINT AP_ELCTRNC_INV_RJT_ITM_TP1 PRIMARY KEY(INV_RJT_ITM_ID)

    , CONSTRAINT AP_ELCTRNC_INV_RJT_ITM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX AP_ELCTRNC_INV_RJT_ITM_TI1 (INV_RJT_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_ELCTRNC_INV_RJT_REAS_T
# -----------------------------------------------------------------------
drop table if exists AP_ELCTRNC_INV_RJT_REAS_T
/

CREATE TABLE AP_ELCTRNC_INV_RJT_REAS_T
(
      INV_RJT_REAS_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_RJT_ID DECIMAL(9) NOT NULL
        , INV_RJT_REAS_TYP_CD VARCHAR(4) NOT NULL
        , INV_RJT_REAS_DESC VARCHAR(400) NOT NULL
        , INV_FL_NM VARCHAR(200)
    
    , CONSTRAINT AP_ELCTRNC_INV_RJT_REAS_TP1 PRIMARY KEY(INV_RJT_REAS_ID)

    , CONSTRAINT AP_ELCTRNC_INV_RJT_REAS_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                    
                                    
, INDEX AP_ELCTRNC_INV_RJT_REAS_TI1 (INV_RJT_REAS_TYP_CD )
    
                                                                                                                                                                                                
                                    
, INDEX AP_ELCTRNC_INV_RJT_REAS_TI2 (INV_RJT_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_ELCTRNC_INV_RJT_REAS_TYP_T
# -----------------------------------------------------------------------
drop table if exists AP_ELCTRNC_INV_RJT_REAS_TYP_T
/

CREATE TABLE AP_ELCTRNC_INV_RJT_REAS_TYP_T
(
      INV_RJT_REAS_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_RJT_REAS_TYP_DESC VARCHAR(200)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , INV_FAIL_IND VARCHAR(1)
        , INV_RJT_REAS_PERF_MTCH_IND VARCHAR(1)
    
    , CONSTRAINT AP_ELCTRNC_INV_RJT_REAS_TYPP1 PRIMARY KEY(INV_RJT_REAS_TYP_CD)

    , CONSTRAINT AP_ELCTRNC_INV_RJT_TYP_CD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_NEG_PMT_RQST_APRVL_LMT_T
# -----------------------------------------------------------------------
drop table if exists AP_NEG_PMT_RQST_APRVL_LMT_T
/

CREATE TABLE AP_NEG_PMT_RQST_APRVL_LMT_T
(
      AP_NEG_PMT_RQST_APRVL_LMT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ORG_CD VARCHAR(4)
        , ACCT_NBR VARCHAR(7)
        , NEG_PMT_RQST_APRVL_LMT_AMT DECIMAL(19,2)
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT AP_NEG_PMT_RQST_APRVL_LMT_TP1 PRIMARY KEY(AP_NEG_PMT_RQST_APRVL_LMT_ID)

    , CONSTRAINT AP_NEG_PMT_RQST_APRVL_LMT_TC0 UNIQUE (OBJ_ID)
    , CONSTRAINT AP_NEG_PMT_RQST_APRVL_LMT_TC1 UNIQUE (FIN_COA_CD, ORG_CD, ACCT_NBR)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_PMT_RQST_ACCT_CHG_T
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_ACCT_CHG_T
/

CREATE TABLE AP_PMT_RQST_ACCT_CHG_T
(
      PMT_RQST_ACCT_CHG_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_RQST_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , ACLN_PCT DECIMAL(35,20)
        , PMT_RQST_ACCT_CHG_TS DATETIME NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , OLE_DISENC_AMT DECIMAL(19,2) NOT NULL
    
    , CONSTRAINT AP_PMT_RQST_ACCT_CHG_TP1 PRIMARY KEY(PMT_RQST_ACCT_CHG_ID)

    , CONSTRAINT AP_PMT_RQST_ACCT_CHG_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX AP_PMT_RQST_ACCT_CHG_TI1 (PMT_RQST_ACCT_CHG_TS )
    
                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX AP_PMT_RQST_ACCT_CHG_TI2 (PMT_RQST_ITM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_PMT_RQST_ACCT_T
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_ACCT_T
/

CREATE TABLE AP_PMT_RQST_ACCT_T
(
      PMT_RQST_ACCT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_RQST_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , ACLN_PCT DECIMAL(35,20) NOT NULL
        , DISENC_AMT DECIMAL(19,2) NOT NULL
        , FDOC_LINE_NBR DECIMAL(7)
    
    , CONSTRAINT AP_PMT_RQST_ACCT_TP1 PRIMARY KEY(PMT_RQST_ACCT_ID)

    , CONSTRAINT AP_PMT_RQST_ACCT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX AP_PMT_RQST_ACCT_TI1 (PMT_RQST_ITM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_PMT_RQST_ITM_T
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_ITM_T
/

CREATE TABLE AP_PMT_RQST_ITM_T
(
      PMT_RQST_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_RQST_ID DECIMAL(9) NOT NULL
        , ITM_LN_NBR DECIMAL(3)
        , ITM_TYP_CD VARCHAR(4)
        , ITM_DESC VARCHAR(4000)
        , ITM_CATLG_NBR VARCHAR(30)
        , ITM_AUX_PART_ID VARCHAR(300)
        , ITM_UOM_CD VARCHAR(4)
        , ITM_INV_QTY DECIMAL(11,2)
        , ITM_UNIT_PRC DECIMAL(19,4)
        , PO_ITM_UNIT_PRC DECIMAL(19,4)
        , CPTL_AST_TRN_TYP_CD VARCHAR(4)
        , ITM_CPTL_AST_NTE_TXT VARCHAR(800)
        , ITM_ASND_TO_TRADE_IN_IND VARCHAR(1)
        , ITM_OSTND_INV_QTY DECIMAL(11,2)
        , ITM_OSTND_INV_AMT DECIMAL(19,2)
        , ITM_TAX_AMT DECIMAL(19,4)
        , ITM_EXTND_PRC DECIMAL(19,2)
        , OLE_ITM_OSTND_INV_PRTS DECIMAL(11,2)
        , OLE_ITM_INV_PRTS DECIMAL(11,2)
        , OLE_DISCNT DECIMAL(19,4)
        , OLE_DISCNT_TYP VARCHAR(1)
        , OLE_FOR_DISCNT_TYP VARCHAR(1)
        , OLE_FOR_DISCNT DECIMAL(19,4)
        , OLE_FOR_LST_PRC DECIMAL(19,4)
        , OLE_FOR_DISCNT_AMT DECIMAL(19,4)
        , OLE_FOR_UNT_CST DECIMAL(19,4)
        , OLE_EXCHANGE_RT DECIMAL(19,6)
        , OLE_CON_CST DECIMAL(19,4)
        , OLE_PR_QTY VARCHAR(1)
        , OLE_PR_AMT VARCHAR(1)
        , OLE_PR_MAN VARCHAR(1)
        , OLE_FRMT_ID DECIMAL(8)
        , OLE_VNDR_IT_ID VARCHAR(100)
        , OLE_PO_ITM_ID DECIMAL(10)
        , OLE_LST_PRC DECIMAL(19,4)
        , OLE_DOCUMENT_UUID VARCHAR(50)
        , OLE_ADDL_CHRG_USD VARCHAR(1) default 'N' NOT NULL
        , OLE_REQ_RCPT_STATUS_ID DECIMAL(10)
    
    , CONSTRAINT AP_PMT_RQST_ITM_TP1 PRIMARY KEY(PMT_RQST_ITM_ID)

    , CONSTRAINT AP_PMT_RQST_ITM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX AP_PMT_RQST_ITM_TI1 (PMT_RQST_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_PMT_RQST_ITM_USE_TAX_T
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_ITM_USE_TAX_T
/

CREATE TABLE AP_PMT_RQST_ITM_USE_TAX_T
(
      PMT_RQST_ITM_USE_TAX_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_RQST_ITM_ID DECIMAL(10)
        , RATE_CD VARCHAR(10) NOT NULL
        , TAX_AMT DECIMAL(19,4)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
    
    , CONSTRAINT AP_PMT_RQST_ITM_USE_TAX_TP1 PRIMARY KEY(PMT_RQST_ITM_USE_TAX_ID)

    , CONSTRAINT AP_PMT_RQST_ITM_USE_TAX_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_PMT_RQST_STAT_T
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_STAT_T
/

CREATE TABLE AP_PMT_RQST_STAT_T
(
      PMT_RQST_STAT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_RQST_STAT_DESC VARCHAR(45) NOT NULL
    
    , CONSTRAINT AP_PMT_RQST_STAT_TP1 PRIMARY KEY(PMT_RQST_STAT_CD)

    , CONSTRAINT AP_PMT_RQST_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_PMT_RQST_T
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_T
/

CREATE TABLE AP_PMT_RQST_T
(
      PMT_RQST_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_RQST_STAT_CD VARCHAR(4)
        , FDOC_NBR VARCHAR(14) NOT NULL
        , PO_ID DECIMAL(9) NOT NULL
        , PO_ENCUM_FSCL_YR DECIMAL(4) NOT NULL
        , PO_CLSIF_TYP_DESC VARCHAR(4)
        , INV_RQST_ID DECIMAL(9)
        , INV_DT DATETIME NOT NULL
        , INV_NBR VARCHAR(25)
        , VNDR_INV_AMT DECIMAL(19,2)
        , VNDR_PMT_TERMS_CD VARCHAR(5)
        , VNDR_SHP_PMT_TERM_CD VARCHAR(4)
        , VNDR_CUST_NBR VARCHAR(30)
        , PMT_RQST_PAY_DT DATETIME
        , PMT_RQST_CST_SRC_CD VARCHAR(4)
        , PMT_RQST_CNCL_IND VARCHAR(1)
        , PMT_ATT_IND VARCHAR(1)
        , IMD_PMT_IND VARCHAR(1)
        , PMT_HLD_IND VARCHAR(1)
        , PMT_NTE_LN1_TXT VARCHAR(90)
        , PMT_NTE_LN2_TXT VARCHAR(90)
        , PMT_NTE_LN3_TXT VARCHAR(90)
        , PMT_SPCL_HANDLG_INSTRC_LN1_TXT VARCHAR(90)
        , PMT_SPCL_HANDLG_INSTRC_LN2_TXT VARCHAR(90)
        , PMT_SPCL_HANDLG_INSTRC_LN3_TXT VARCHAR(90)
        , PMT_PD_DT DATETIME
        , PMT_RQST_ELCTRNC_INV_IND VARCHAR(1)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_PSTL_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , PMT_EXTRT_DT DATETIME
        , AP_PRCSR_ID VARCHAR(40) NOT NULL
        , AP_RQST_CNCL_ID VARCHAR(40)
        , AP_HLD_ID VARCHAR(40)
        , PRCS_CMP_CD VARCHAR(2)
        , AP_APRVL_DT DATETIME
        , ORIG_VNDR_HDR_GNRTD_ID DECIMAL(10)
        , ORIG_VNDR_DTL_ASND_ID DECIMAL(10)
        , ALTRNT_VNDR_HDR_GNRTD_ID DECIMAL(10)
        , ALTRNT_VNDR_DTL_ASND_ID DECIMAL(10)
        , CONT_ACCT_IND VARCHAR(1)
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , CLOSE_PO_IND VARCHAR(1)
        , REOPEN_PO_IND VARCHAR(1)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
        , RCVNG_DOC_REQ_IND VARCHAR(1)
        , PMT_RQST_PSTV_APRVL_IND VARCHAR(1)
        , USE_TAX_IND VARCHAR(1) default 'Y' NOT NULL
        , BNK_CD VARCHAR(4)
        , TAX_CLSIF_CD VARCHAR(50)
        , FTX_PCT DECIMAL(10,8)
        , STX_PCT DECIMAL(10,8)
        , TAX_CNTRY_CD VARCHAR(10)
        , GRS_UP_IND VARCHAR(1)
        , TRTY_EXMPT_IND VARCHAR(1)
        , FRGN_SRC_IND VARCHAR(1)
        , SPCL_W4_INC_AMT DECIMAL(19,2)
        , USAID_DIEM_IND VARCHAR(1)
        , INC_TAX_EXMPT_CD_OTHR_IND VARCHAR(1)
        , NQI_CUST_TAX_ID VARCHAR(50)
        , VNDR_ATTN_NM VARCHAR(45)
        , OLE_VNDR_CURR_ID DECIMAL(10)
        , OLE_VNDR_FOR_CURR_INV_AMT DECIMAL(19,2)
        , OLE_INV_TYP_ID DECIMAL(10)
        , OLE_INV_SUB_TYP_ID DECIMAL(10)
        , OLE_PMT_MTHD_ID DECIMAL(10)
        , OLE_VNDR_PO_ID VARCHAR(100)
        , ACCT_DISTR_MTD_IND VARCHAR(1) default 'P' NOT NULL
        , OLE_PR_BY VARCHAR(50)
        , OLE_PRFRMA_IND VARCHAR(1)
    
    , CONSTRAINT AP_PMT_RQST_TP1 PRIMARY KEY(PMT_RQST_ID)

    , CONSTRAINT AP_PMT_RQST_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX AP_PMT_RQST_TI1 (PMT_RQST_STAT_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX AP_PMT_RQST_TI2 (PO_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX AP_PMT_RQST_TI3 (FDOC_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX AP_PMT_RQST_TI4 (AP_PUR_DOC_LNK_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AP_SUM_ACCT_T
# -----------------------------------------------------------------------
drop table if exists AP_SUM_ACCT_T
/

CREATE TABLE AP_SUM_ACCT_T
(
      SUM_ACCT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_RQST_ID DECIMAL(9)
        , INV_RQST_ID DECIMAL(9)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , CRDT_MEMO_ID DECIMAL(9)
        , LST_UPDT_TS DATETIME
    
    , CONSTRAINT AP_SUM_ACCT_TP1 PRIMARY KEY(SUM_ACCT_ID)

    , CONSTRAINT AP_SUM_ACCT_TI1 UNIQUE (PMT_RQST_ID, INV_RQST_ID, FIN_COA_CD, ACCOUNT_NBR, SUB_ACCT_NBR, FIN_SUB_OBJ_CD, FIN_OBJECT_CD, PROJECT_CD, ORG_REFERENCE_ID)
    , CONSTRAINT AP_SUM_ACCT_TTC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_APPLICATION_DOC_T
# -----------------------------------------------------------------------
drop table if exists AR_APPLICATION_DOC_T
/

CREATE TABLE AR_APPLICATION_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT AR_APPLICATION_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT AR_APPLICATION_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CRDT_MEMO_DOC_T
# -----------------------------------------------------------------------
drop table if exists AR_CRDT_MEMO_DOC_T
/

CREATE TABLE AR_CRDT_MEMO_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_REF_INV_NBR VARCHAR(14)
    
    , CONSTRAINT AR_CRDT_MEMO_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT AR_CRDT_MEMO_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CRDT_MEMO_DTL_T
# -----------------------------------------------------------------------
drop table if exists AR_CRDT_MEMO_DTL_T
/

CREATE TABLE AR_CRDT_MEMO_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , REF_INV_ITM_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CRDT_MEMO_ITM_QTY DECIMAL(11,2)
        , CRDT_MEMO_ITM_TAX_AMT DECIMAL(19,2)
        , CRDT_MEMO_ITM_TOT_AMT DECIMAL(19,2)
    
    , CONSTRAINT AR_CRDT_MEMO_DTL_TP1 PRIMARY KEY(FDOC_NBR,REF_INV_ITM_NBR)

    , CONSTRAINT AR_CRDT_MEMO_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CSH_CTRL_DTL_T
# -----------------------------------------------------------------------
drop table if exists AR_CSH_CTRL_DTL_T
/

CREATE TABLE AR_CSH_CTRL_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_REF_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_PMT_MEDIUM_ID VARCHAR(30)
        , FDOC_LINE_AMT DECIMAL(19,2)
        , CUST_PMT_DESC VARCHAR(60)
        , CUST_NBR VARCHAR(9)
        , CUST_PMT_DT DATETIME
    
    , CONSTRAINT AR_CSH_CTRL_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_REF_NBR)

    , CONSTRAINT AR_CSH_CTRL_DTL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                            
                                    
, INDEX AR_CSH_CTRL_DTL_TI2 (CUST_NBR )
    
                                                                                                                                                                                                                                                                            
                                    
, INDEX AR_CSH_CTRL_DTL_TI3 (FDOC_REF_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CSH_CTRL_T
# -----------------------------------------------------------------------
drop table if exists AR_CSH_CTRL_T
/

CREATE TABLE AR_CSH_CTRL_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_REF_NBR VARCHAR(14)
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , CUST_PMT_MEDIUM_CD VARCHAR(2)
        , AR_CSHCTRL_TOT_AMT DECIMAL(19,2)
        , BNK_CD VARCHAR(4)
    
    , CONSTRAINT AR_CSH_CTRL_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT AR_CSH_CTRL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CUST_ADDR_T
# -----------------------------------------------------------------------
drop table if exists AR_CUST_ADDR_T
/

CREATE TABLE AR_CUST_ADDR_T
(
      CUST_NBR VARCHAR(9)
        , CUST_ADDR_ID DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_ADDR_NM VARCHAR(40)
        , CUST_LINE_1_ADDR VARCHAR(30)
        , CUST_LINE_2_ADDR VARCHAR(30)
        , CUST_CITY_NM VARCHAR(25)
        , CUST_STATE_CD VARCHAR(2)
        , CUST_ZIP_CD VARCHAR(20)
        , CUST_CNTRY_CD VARCHAR(2)
        , CUST_ADDR_INTL_PROV_NM VARCHAR(45)
        , CUST_INTL_MAIL_CD VARCHAR(20)
        , CUST_EMAIL_ADDR VARCHAR(60)
        , CUST_ADDR_TYPE_CD VARCHAR(2)
        , CUST_ADDR_END_DT DATETIME
    
    , CONSTRAINT AR_CUST_ADDR_TP1 PRIMARY KEY(CUST_NBR,CUST_ADDR_ID)

    , CONSTRAINT AR_CUST_ADDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CUST_ADDR_TYP_T
# -----------------------------------------------------------------------
drop table if exists AR_CUST_ADDR_TYP_T
/

CREATE TABLE AR_CUST_ADDR_TYP_T
(
      CUST_ADDR_TYPE_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_ADDR_TYP_DESC VARCHAR(30)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT AR_CUST_ADDR_TYP_TP1 PRIMARY KEY(CUST_ADDR_TYPE_CD)

    , CONSTRAINT AR_CUST_ADDR_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CUST_BILLING_STMT_T
# -----------------------------------------------------------------------
drop table if exists AR_CUST_BILLING_STMT_T
/

CREATE TABLE AR_CUST_BILLING_STMT_T
(
      CUST_NBR VARCHAR(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PREV_BILLED_AMT DECIMAL(19,2)
        , REPORTED_DT DATETIME
    
    , CONSTRAINT AR_CUST_BILLING_STMT_TP1 PRIMARY KEY(CUST_NBR)

    , CONSTRAINT AR_CUST_BILLING_STMT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CUST_PRCS_TYP_T
# -----------------------------------------------------------------------
drop table if exists AR_CUST_PRCS_TYP_T
/

CREATE TABLE AR_CUST_PRCS_TYP_T
(
      CUST_SPCL_PRCS_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_SPCLPRCS_DESC VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT AR_CUST_PRCS_TYP_TP1 PRIMARY KEY(CUST_SPCL_PRCS_CD)

    , CONSTRAINT AR_CUST_PRCS_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CUST_T
# -----------------------------------------------------------------------
drop table if exists AR_CUST_T
/

CREATE TABLE AR_CUST_T
(
      CUST_NBR VARCHAR(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_NM VARCHAR(60)
        , CUST_PARENT_CO_NBR VARCHAR(9)
        , CUST_TYP_CD VARCHAR(2)
        , CUST_ADDR_CHG_DT DATETIME
        , CUST_REC_ADD_DT DATETIME
        , CUST_LST_ACTV_DT DATETIME
        , CUST_ACTIVE_CD VARCHAR(1)
        , CUST_PHONE_NBR VARCHAR(20)
        , CUST_800_PHONE_NBR VARCHAR(20)
        , CUST_CNTCT_NM VARCHAR(40)
        , CUST_CNTCT_PHN_NBR VARCHAR(20)
        , CUST_FAX_NBR VARCHAR(20)
        , CUST_BIRTH_DT DATETIME
        , CUST_TAX_EXMPT_IND VARCHAR(1)
        , CUST_CRDT_LMT_AMT DECIMAL(19,2)
        , CUST_CRDT_APRV_NM VARCHAR(40)
        , CUST_EMAIL_ADDR VARCHAR(60)
        , CUST_TAX_TYP_CD VARCHAR(4)
        , CUST_TAX_NBR VARCHAR(255)
    
    , CONSTRAINT AR_CUST_TP1 PRIMARY KEY(CUST_NBR)

    , CONSTRAINT AR_CUST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_CUST_TYP_T
# -----------------------------------------------------------------------
drop table if exists AR_CUST_TYP_T
/

CREATE TABLE AR_CUST_TYP_T
(
      CUST_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_TYP_DESC VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT AR_CUST_TYP_TP1 PRIMARY KEY(CUST_TYP_CD)

    , CONSTRAINT AR_CUST_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_DOC_HDR_T
# -----------------------------------------------------------------------
drop table if exists AR_DOC_HDR_T
/

CREATE TABLE AR_DOC_HDR_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_NBR VARCHAR(9)
        , PRCS_FIN_COA_CD VARCHAR(2)
        , PRCS_ORG_CD VARCHAR(4)
        , AR_ENTRY_DT DATETIME
        , FDOC_EXPLAIN_TXT VARCHAR(400)
    
    , CONSTRAINT AR_DOC_HDR_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT AR_DOC_HDR_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                        
                                    
, INDEX AR_DOC_HDR_TI2 (CUST_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_DOC_RCURRNC_T
# -----------------------------------------------------------------------
drop table if exists AR_DOC_RCURRNC_T
/

CREATE TABLE AR_DOC_RCURRNC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_REF_NBR VARCHAR(14)
        , CUST_NBR VARCHAR(9)
        , DOC_RCURRNC_BEG_DT DATETIME
        , DOC_RCURRNC_END_DT DATETIME
        , DOC_TOT_RCURRNC_NBR DECIMAL(7)
        , DOC_RCURRNC_INTRV_CD VARCHAR(1)
        , DOC_INITR_USR_ID VARCHAR(40)
        , DOC_LST_CRTE_DT DATETIME
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT AR_DOC_RCURRNC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT AR_DOC_RCURRNC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_INV_DOC_T
# -----------------------------------------------------------------------
drop table if exists AR_INV_DOC_T
/

CREATE TABLE AR_INV_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , AR_INV_HDR_TXT VARCHAR(120)
        , AR_INV_ATTN_LN_TXT VARCHAR(80)
        , AR_INV_DUE_DT DATETIME
        , AR_BILLING_DT DATETIME
        , AR_INV_TERMS_TXT VARCHAR(40)
        , ORG_INV_NBR VARCHAR(9)
        , CUST_PO_NBR VARCHAR(25)
        , AR_PRN_INV_IND VARCHAR(1)
        , CUST_PO_DT DATETIME
        , AR_BILL_BY_COA_CD VARCHAR(2)
        , AR_BILL_BY_ORG_CD VARCHAR(4)
        , CUST_SHIP_ADDR_ID DECIMAL(7)
        , CUST_BILL_ADDR_ID DECIMAL(7)
        , CUST_SPCL_PRCS_CD VARCHAR(2)
        , CUST_REC_ATT_IND CHAR(1)
        , AR_OPEN_INV_IND VARCHAR(1)
        , PMT_FIN_COA_CD VARCHAR(2)
        , PMT_ACCT_NBR VARCHAR(7)
        , PMT_SUB_ACCT_NBR VARCHAR(5)
        , PMT_FIN_OBJ_CD VARCHAR(4)
        , PMT_FIN_SUB_OBJ_CD VARCHAR(3)
        , PMT_PROJECT_CD VARCHAR(10)
        , PMT_ORG_REF_ID VARCHAR(8)
        , AR_PRNT_DT DATETIME
        , AR_INV_CLOSE_DT DATETIME
        , CUST_NM VARCHAR(60)
        , BILL_ADDR_NM VARCHAR(40)
        , BILL_LINE_1_ADDR VARCHAR(30)
        , BILL_LINE_2_ADDR VARCHAR(30)
        , BILL_CITY_NM VARCHAR(25)
        , BILL_STATE_CD VARCHAR(2)
        , BILL_ZIP_CD VARCHAR(20)
        , BILL_CNTRY_CD VARCHAR(2)
        , BILL_ADDR_INTL_PROV_NM VARCHAR(45)
        , BILL_INTL_MAIL_CD VARCHAR(20)
        , BILL_EMAIL_ADDR VARCHAR(60)
        , BILL_ADDR_TYPE_CD VARCHAR(2)
        , SHIP_ADDR_NM VARCHAR(40)
        , SHIP_LINE_1_ADDR VARCHAR(30)
        , SHIP_LINE_2_ADDR VARCHAR(30)
        , SHIP_CITY_NM VARCHAR(25)
        , SHIP_STATE_CD VARCHAR(2)
        , SHIP_ZIP_CD VARCHAR(20)
        , SHIP_CNTRY_CD VARCHAR(2)
        , SHIP_ADDR_INTL_PROV_NM VARCHAR(45)
        , SHIP_INTL_MAIL_CD VARCHAR(20)
        , SHIP_EMAIL_ADDR VARCHAR(60)
        , SHIP_ADDR_TYPE_CD VARCHAR(2)
        , NXT_INV_ITEM_NBR DECIMAL(7)
        , RECURRED_INV_IND VARCHAR(1)
        , REPORTED_DT DATETIME
    
    , CONSTRAINT AR_INV_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT AR_INV_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_INV_DTL_T
# -----------------------------------------------------------------------
drop table if exists AR_INV_DTL_T
/

CREATE TABLE AR_INV_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , AR_INV_ITM_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FDOC_POST_YR DECIMAL(4)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FIN_AR_OBJ_CD VARCHAR(4)
        , FIN_AR_SUB_OBJ_CD VARCHAR(3)
        , AR_INV_ITM_QTY DECIMAL(11,2)
        , AR_INV_ITM_UOM_CD VARCHAR(2)
        , AR_INVITM_UNIT_PRC DECIMAL(19,4)
        , AR_INV_ITM_TOT_AMT DECIMAL(19,2)
        , AR_INV_ITM_SRVC_DT DATETIME
        , AR_INV_ITM_CD VARCHAR(6)
        , AR_INV_ITM_DESC VARCHAR(400)
        , FDOC_OVERRIDE_CD VARCHAR(100)
        , AR_INV_ITM_TAX_AMT DECIMAL(19,2)
        , AR_INV_ITM_TXBL_IND VARCHAR(1)
        , AR_INV_ITM_DSCT_LN_NBR DECIMAL(7)
    
    , CONSTRAINT AR_INV_DTL_TP1 PRIMARY KEY(FDOC_NBR,AR_INV_ITM_NBR)

    , CONSTRAINT AR_INV_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_INV_ITM_CODE_T
# -----------------------------------------------------------------------
drop table if exists AR_INV_ITM_CODE_T
/

CREATE TABLE AR_INV_ITM_CODE_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , AR_INV_ITM_CD VARCHAR(6)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AR_INV_ITM_DESC VARCHAR(40)
        , AR_RLTD_STOCK_NBR VARCHAR(10)
        , INV_FIN_COA_CD VARCHAR(2)
        , INV_ACCT_NBR VARCHAR(7)
        , INV_SUB_ACCT_NBR VARCHAR(5)
        , INV_FIN_OBJ_CD VARCHAR(4)
        , INV_FIN_SUB_OBJ_CD VARCHAR(3)
        , INV_PROJECT_CD VARCHAR(10)
        , INV_ORG_REF_ID VARCHAR(8)
        , AR_ITM_DFLT_PRC DECIMAL(19,2)
        , AR_DFLT_UOM_CD VARCHAR(2)
        , AR_ITM_DFLT_QTY DECIMAL(11,2)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
        , AR_INV_ITM_TXBL_IND VARCHAR(1)
    
    , CONSTRAINT AR_INV_ITM_CODE_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD,AR_INV_ITM_CD)

    , CONSTRAINT AR_INV_ITM_CODE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_INV_PD_APLD_MT
# -----------------------------------------------------------------------
drop table if exists AR_INV_PD_APLD_MT
/

CREATE TABLE AR_INV_PD_APLD_MT
(
      FDOC_NBR VARCHAR(14)
        , AR_PD_APLD_ITM_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_REF_INV_NBR VARCHAR(14)
        , AR_INV_ITM_NBR DECIMAL(7)
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , AR_INV_ITMAPLD_AMT DECIMAL(19,2)
    
    , CONSTRAINT AR_INV_PD_APLD_MTP1 PRIMARY KEY(FDOC_NBR,AR_PD_APLD_ITM_NBR)

    , CONSTRAINT AR_INV_PD_APLD_MTC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_INV_PD_APLD_T
# -----------------------------------------------------------------------
drop table if exists AR_INV_PD_APLD_T
/

CREATE TABLE AR_INV_PD_APLD_T
(
      FDOC_NBR VARCHAR(14)
        , AR_PD_APLD_ITM_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_REF_INV_NBR VARCHAR(14)
        , AR_INV_ITM_NBR DECIMAL(7)
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , AR_INV_ITMAPLD_AMT DECIMAL(19,2)
    
    , CONSTRAINT AR_INV_PD_APLD_TP1 PRIMARY KEY(FDOC_NBR,AR_PD_APLD_ITM_NBR)

    , CONSTRAINT AR_INV_PD_APLD_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                        
                                    
, INDEX AR_INV_PD_APLD_TI2 (FDOC_REF_INV_NBR , AR_INV_ITM_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_INV_RCURRNC_DTL_T
# -----------------------------------------------------------------------
drop table if exists AR_INV_RCURRNC_DTL_T
/

CREATE TABLE AR_INV_RCURRNC_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_REF_DOC_NBR VARCHAR(14)
        , CUST_NBR VARCHAR(9)
        , DOC_RCURRNC_BEG_DT DATETIME
        , DOC_RCURRNC_END_DT DATETIME
        , DOC_TOT_RCURRNC_NBR DECIMAL(7)
        , DOC_RCURRNC_INTRV_CD VARCHAR(1)
        , DOC_INITR_USR_ID VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT AR_INV_RCURRNC_DTL_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT AR_INV_RCURRNC_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_LOCKBOX_T
# -----------------------------------------------------------------------
drop table if exists AR_LOCKBOX_T
/

CREATE TABLE AR_LOCKBOX_T
(
      AR_INV_SEQ_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AR_LOCKBOX_NBR VARCHAR(10)
        , CUST_NBR VARCHAR(9)
        , FDOC_REF_INV_NBR VARCHAR(14)
        , AR_BILLING_DT DATETIME
        , AR_INV_TOT_AMT DECIMAL(19,2)
        , AR_INV_PD_APLD_AMT DECIMAL(19,2)
        , AR_SCAN_INV_DT DATETIME
        , CUST_PMT_MEDIUM_CD VARCHAR(2)
        , AR_PRCS_INV_DT DATETIME
        , AR_BATCH_SEQ_NBR DECIMAL(5)
        , BNK_CD VARCHAR(4)
    
    , CONSTRAINT AR_LOCKBOX_TP1 PRIMARY KEY(AR_INV_SEQ_NBR)

    , CONSTRAINT AR_LOCKBOX_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_NON_APLD_DIST_MT
# -----------------------------------------------------------------------
drop table if exists AR_NON_APLD_DIST_MT
/

CREATE TABLE AR_NON_APLD_DIST_MT
(
      FDOC_NBR VARCHAR(14)
        , AR_PD_APLD_ITM_NBR DECIMAL(7)
        , FDOC_REF_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , FDOC_LINE_AMT DECIMAL(19,2)
    
    , CONSTRAINT AR_NON_APLD_DIST_MTP1 PRIMARY KEY(FDOC_NBR,AR_PD_APLD_ITM_NBR,FDOC_REF_NBR)

    , CONSTRAINT AR_NON_APLD_DIST_MTC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_NON_APLD_DIST_T
# -----------------------------------------------------------------------
drop table if exists AR_NON_APLD_DIST_T
/

CREATE TABLE AR_NON_APLD_DIST_T
(
      FDOC_NBR VARCHAR(14)
        , AR_PD_APLD_ITM_NBR DECIMAL(7)
        , FDOC_REF_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , FDOC_LINE_AMT DECIMAL(19,2)
    
    , CONSTRAINT AR_NON_APLD_DIST_TP1 PRIMARY KEY(FDOC_NBR,AR_PD_APLD_ITM_NBR,FDOC_REF_NBR)

    , CONSTRAINT AR_NON_APLD_DIST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_NON_APLD_HLDG_T
# -----------------------------------------------------------------------
drop table if exists AR_NON_APLD_HLDG_T
/

CREATE TABLE AR_NON_APLD_HLDG_T
(
      FDOC_REF_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_LINE_AMT DECIMAL(19,2)
        , CUST_NBR VARCHAR(9)
    
    , CONSTRAINT AR_NON_APLD_HLDG_TP1 PRIMARY KEY(FDOC_REF_NBR)

    , CONSTRAINT AR_NON_APLD_HLDG_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                            
                                    
, INDEX AR_NON_APLD_HLDG_TI2 (CUST_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_NON_INV_DIST_MT
# -----------------------------------------------------------------------
drop table if exists AR_NON_INV_DIST_MT
/

CREATE TABLE AR_NON_INV_DIST_MT
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , FDOC_REF_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_LINE_AMT DECIMAL(19,2)
    
    , CONSTRAINT AR_NON_INV_DIST_MTP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR,FDOC_REF_NBR)

    , CONSTRAINT AR_NON_INV_DIST_MTC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_NON_INV_DIST_T
# -----------------------------------------------------------------------
drop table if exists AR_NON_INV_DIST_T
/

CREATE TABLE AR_NON_INV_DIST_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , FDOC_REF_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_LINE_AMT DECIMAL(19,2)
    
    , CONSTRAINT AR_NON_INV_DIST_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR,FDOC_REF_NBR)

    , CONSTRAINT AR_NON_INV_DIST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_NON_INV_MT
# -----------------------------------------------------------------------
drop table if exists AR_NON_INV_MT
/

CREATE TABLE AR_NON_INV_MT
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , FDOC_LINE_AMT DECIMAL(19,2)
        , FDOC_OVERRIDE_CD VARCHAR(100)
    
    , CONSTRAINT AR_NON_INV_MTP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR)

    , CONSTRAINT AR_NON_INV_MTC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_NON_INV_T
# -----------------------------------------------------------------------
drop table if exists AR_NON_INV_T
/

CREATE TABLE AR_NON_INV_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , FDOC_LINE_AMT DECIMAL(19,2)
        , FDOC_OVERRIDE_CD VARCHAR(100)
    
    , CONSTRAINT AR_NON_INV_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR)

    , CONSTRAINT AR_NON_INV_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_OPEN_INV_DTL_MT
# -----------------------------------------------------------------------
drop table if exists AR_OPEN_INV_DTL_MT
/

CREATE TABLE AR_OPEN_INV_DTL_MT
(
      SESID VARCHAR(36)
        , FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_TYP_CD VARCHAR(8)
        , AR_INV_ITM_NBR DECIMAL(7)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , AR_BILL_BY_COA_CD VARCHAR(2)
        , AR_BILL_BY_ORG_CD VARCHAR(4)
        , AR_BILLING_DT DATETIME
        , AR_ENTRY_DT DATETIME
        , AR_INV_DUE_DT DATETIME
        , AR_INV_DESC VARCHAR(40)
        , AR_WRITEOFF_IND VARCHAR(1)
        , CUST_NBR VARCHAR(9)
        , PRCS_FIN_COA_CD VARCHAR(2)
        , PRCS_ORG_CD VARCHAR(4)
        , CUST_NM VARCHAR(60)
        , AR_INV_ITM_TOT_AMT DECIMAL(19,2)
        , AR_INV_ITMAPLD_AMT DECIMAL(19,2)
    
    , CONSTRAINT AR_OPEN_INV_DTL_MTP1 PRIMARY KEY(SESID,FDOC_NBR)

    , CONSTRAINT AR_OPEN_INV_DTL_MTC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_ORG_ACCTGDFLT_T
# -----------------------------------------------------------------------
drop table if exists AR_ORG_ACCTGDFLT_T
/

CREATE TABLE AR_ORG_ACCTGDFLT_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_LT_CHRG_OBJ_CD VARCHAR(4)
        , INV_ACCT_NBR VARCHAR(7)
        , INV_SUB_ACCT_NBR VARCHAR(5)
        , INV_FIN_OBJ_CD VARCHAR(4)
        , INV_FIN_SUB_OBJ_CD VARCHAR(3)
        , INV_PROJECT_CD VARCHAR(10)
        , INV_ORG_REF_ID VARCHAR(8)
        , PMT_ACCT_NBR VARCHAR(7)
        , PMT_SUB_ACCT_NBR VARCHAR(5)
        , PMT_FIN_OBJ_CD VARCHAR(4)
        , PMT_FIN_SUB_OBJ_CD VARCHAR(3)
        , PMT_PROJECT_CD VARCHAR(10)
        , PMT_ORG_REF_ID VARCHAR(8)
        , WRITEOFF_ACCT_NBR VARCHAR(7)
        , WRITEOFF_SUB_ACCT_NBR VARCHAR(5)
        , WRITEOFF_FIN_OBJ_CD VARCHAR(4)
        , WRITEOFF_FIN_SUB_OBJ_CD VARCHAR(3)
        , WRITEOFF_PROJECT_CD VARCHAR(10)
        , WRITEOFF_ORG_REF_ID VARCHAR(8)
        , PMT_FIN_COA_CD VARCHAR(2)
        , INV_FIN_COA_CD VARCHAR(2)
        , WRITEOFF_FIN_COA_CD VARCHAR(2)
    
    , CONSTRAINT AR_ORG_ACCTGDFLT_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ORG_CD)

    , CONSTRAINT AR_ORG_ACCTGDFLT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_ORG_OPTION_T
# -----------------------------------------------------------------------
drop table if exists AR_ORG_OPTION_T
/

CREATE TABLE AR_ORG_OPTION_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PRCS_FIN_COA_CD VARCHAR(2)
        , PRCS_ORG_CD VARCHAR(4)
        , AR_PRN_INV_IND VARCHAR(1)
        , ORG_PMT_TERMS_TXT VARCHAR(40)
        , ORG_MSG_TXT VARCHAR(80)
        , ORG_REMIT_ADDR_NM VARCHAR(40)
        , ORG_REMIT_LN1_ADDR VARCHAR(30)
        , ORG_REMIT_LN2_ADDR VARCHAR(30)
        , ORG_REMIT_CITY_NM VARCHAR(25)
        , ORG_REMIT_ST_CD VARCHAR(2)
        , ORG_REMIT_ZIP_CD VARCHAR(20)
        , ORG_PHONE_NBR VARCHAR(13)
        , ORG_800_PHONE_NBR VARCHAR(13)
        , ORG_FAX_NBR VARCHAR(13)
        , UNIV_NM VARCHAR(40)
        , ORG_CHCK_PAY_TO_NM VARCHAR(40)
        , ORG_POSTAL_ZIP_CD VARCHAR(20)
        , ORG_POSTAL_CNTRY_CD VARCHAR(2)
    
    , CONSTRAINT AR_ORG_OPTION_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD)

    , CONSTRAINT AR_ORG_OPTION_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_PMT_MEDIUM_T
# -----------------------------------------------------------------------
drop table if exists AR_PMT_MEDIUM_T
/

CREATE TABLE AR_PMT_MEDIUM_T
(
      CUST_PMT_MEDIUM_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_PMT_MEDM_DESC VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT AR_PMT_MEDIUM_TP1 PRIMARY KEY(CUST_PMT_MEDIUM_CD)

    , CONSTRAINT AR_PMT_MEDIUM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_PRN_INV_OPTN_T
# -----------------------------------------------------------------------
drop table if exists AR_PRN_INV_OPTN_T
/

CREATE TABLE AR_PRN_INV_OPTN_T
(
      AR_PRN_INV_IND VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AR_PRN_INV_DESC VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT AR_PRN_INV_OPTN_TP1 PRIMARY KEY(AR_PRN_INV_IND)

    , CONSTRAINT AR_PRN_INV_OPTN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_SYS_INFO_T
# -----------------------------------------------------------------------
drop table if exists AR_SYS_INFO_T
/

CREATE TABLE AR_SYS_INFO_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , PRCS_FIN_COA_CD VARCHAR(2)
        , PRCS_ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FEIN_NBR VARCHAR(9)
        , REFUND_FIN_OBJ_CD VARCHAR(4)
        , UNIV_CLR_COA_CD VARCHAR(2)
        , UNIV_CLR_ACCT_NBR VARCHAR(7)
        , UNIV_CLR_SUBAC_NBR VARCHAR(5)
        , UNIV_CLR_OBJECT_CD VARCHAR(4)
        , UNIV_CLR_SUBOBJ_CD VARCHAR(3)
        , PMT_CLR_FIN_OBJ_CD VARCHAR(4)
        , AR_LOCKBOX_NBR VARCHAR(10)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
        , ORG_REMIT_ADDR_NM VARCHAR(40)
        , ORG_REMIT_LN1_ADDR VARCHAR(30)
        , ORG_REMIT_LN2_ADDR VARCHAR(30)
        , ORG_REMIT_CITY_NM VARCHAR(25)
        , ORG_REMIT_ST_CD VARCHAR(2)
        , ORG_REMIT_ZIP_CD VARCHAR(20)
        , ORG_CHCK_PAY_TO_NM VARCHAR(40)
        , FDOC_INITIATOR_ID VARCHAR(40)
    
    , CONSTRAINT AR_SYS_INFO_TP1 PRIMARY KEY(UNIV_FISCAL_YR,PRCS_FIN_COA_CD,PRCS_ORG_CD)

    , CONSTRAINT AR_SYS_INFO_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# AR_WRITEOFF_DOC_T
# -----------------------------------------------------------------------
drop table if exists AR_WRITEOFF_DOC_T
/

CREATE TABLE AR_WRITEOFF_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , FDOC_REF_INV_NBR VARCHAR(14)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , AR_INV_WRTOFF_AMT DECIMAL(19,2) NOT NULL
    
    , CONSTRAINT AR_WRITEOFF_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT AR_WRITEOFF_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# BATCH_LOAD_DOC_T
# -----------------------------------------------------------------------
drop table if exists BATCH_LOAD_DOC_T
/

CREATE TABLE BATCH_LOAD_DOC_T
(
      OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NBR VARCHAR(14) NOT NULL
    






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_A21_ICR_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CA_A21_ICR_ACCT_T
/

CREATE TABLE CA_A21_ICR_ACCT_T
(
      CA_A21_ICR_ACCT_GNRTD_ID DECIMAL(10) default 0
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5) NOT NULL
        , ICR_FIN_COA_CD VARCHAR(2) NOT NULL
        , ICR_FIN_ACCT_NBR VARCHAR(7)
        , ACLN_PCT VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_A21_ICR_ACCT_TP1 PRIMARY KEY(CA_A21_ICR_ACCT_GNRTD_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_A21_SUB_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CA_A21_SUB_ACCT_T
/

CREATE TABLE CA_A21_SUB_ACCT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , SUB_ACCT_TYP_CD VARCHAR(2) default 'EX'
        , ICR_TYP_CD VARCHAR(2)
        , FIN_SERIES_ID VARCHAR(3)
        , ICR_FIN_COA_CD VARCHAR(2)
        , ICR_ACCOUNT_NBR VARCHAR(7)
        , OFF_CMP_CD VARCHAR(1)
        , CST_SHR_COA_CD VARCHAR(2)
        , CST_SHRSRCACCT_NBR VARCHAR(7)
        , CST_SRCSUBACCT_NBR VARCHAR(5)
    
    , CONSTRAINT CA_A21_SUB_ACCT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR)

    , CONSTRAINT CA_A21_SUB_ACCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCOUNT_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCOUNT_T
/

CREATE TABLE CA_ACCOUNT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCOUNT_NM VARCHAR(40)
        , ACCT_FSC_OFC_UID VARCHAR(40)
        , ACCT_SPVSR_UNVL_ID VARCHAR(40)
        , ACCT_MGR_UNVL_ID VARCHAR(40)
        , ORG_CD VARCHAR(4)
        , ACCT_TYP_CD VARCHAR(2)
        , ACCT_PHYS_CMP_CD VARCHAR(2)
        , SUB_FUND_GRP_CD VARCHAR(6)
        , ACCT_FRNG_BNFT_CD VARCHAR(1)
        , FIN_HGH_ED_FUNC_CD VARCHAR(4)
        , ACCT_RSTRC_STAT_CD VARCHAR(1)
        , ACCT_RSTRC_STAT_DT DATETIME
        , ACCT_CITY_NM VARCHAR(25)
        , ACCT_STATE_CD VARCHAR(2)
        , ACCT_STREET_ADDR VARCHAR(30)
        , ACCT_ZIP_CD VARCHAR(20)
        , RPTS_TO_FIN_COA_CD VARCHAR(2)
        , RPTS_TO_ACCT_NBR VARCHAR(7)
        , ACCT_CREATE_DT DATETIME
        , ACCT_EFFECT_DT DATETIME
        , ACCT_EXPIRATION_DT DATETIME
        , CONT_FIN_COA_CD VARCHAR(2)
        , CONT_ACCOUNT_NBR VARCHAR(7)
        , ENDOW_FIN_COA_CD VARCHAR(2)
        , ENDOW_ACCOUNT_NBR VARCHAR(7)
        , CONTR_CTRL_FCOA_CD VARCHAR(2)
        , CONTR_CTRLACCT_NBR VARCHAR(7)
        , INCOME_FIN_COA_CD VARCHAR(2)
        , INCOME_ACCOUNT_NBR VARCHAR(7)
        , ACCT_ICR_TYP_CD VARCHAR(2)
        , AC_CSTM_ICREXCL_CD VARCHAR(1)
        , FIN_SERIES_ID VARCHAR(3)
        , ICR_FIN_COA_CD VARCHAR(2)
        , ICR_ACCOUNT_NBR VARCHAR(7)
        , ACCT_IN_FP_CD VARCHAR(1)
        , BDGT_REC_LVL_CD VARCHAR(1)
        , ACCT_SF_CD VARCHAR(1) default 'N'
        , ACCT_PND_SF_CD VARCHAR(1)
        , FIN_EXT_ENC_SF_CD VARCHAR(1)
        , FIN_INT_ENC_SF_CD VARCHAR(1)
        , FIN_PRE_ENC_SF_CD VARCHAR(1)
        , FIN_OBJ_PRSCTRL_CD VARCHAR(1)
        , CG_CFDA_NBR VARCHAR(6)
        , ACCT_OFF_CMP_IND VARCHAR(1)
        , ACCT_CLOSED_IND VARCHAR(1)
        , CG_ACCT_RESP_ID DECIMAL(2)
        , OLE_UNIV_ACCT_NBR VARCHAR(100) NOT NULL
        , LBR_BEN_RT_CAT_CD VARCHAR(2) default '--'
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , THRESHOLD_AMOUNT DECIMAL(10)
        , THRESHOLD_PERCENTAGE DECIMAL(10)
    
    , CONSTRAINT CA_ACCOUNT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR)

    , CONSTRAINT CA_ACCOUNT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI10 (ACCT_MGR_UNVL_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI11 (ACCT_SPVSR_UNVL_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI2 (ACCOUNT_NBR , FIN_COA_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI3 (ACCT_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI4 (FIN_HGH_ED_FUNC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI5 (FIN_COA_CD , ORG_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI6 (ACCT_RSTRC_STAT_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI7 (SUB_FUND_GRP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI8 (ACCT_FSC_OFC_UID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCOUNT_TI9 (ACCT_PHYS_CMP_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCOUNT_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCOUNT_TYPE_T
/

CREATE TABLE CA_ACCOUNT_TYPE_T
(
      ACCT_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCT_TYP_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_ACCOUNT_TYPE_TP1 PRIMARY KEY(ACCT_TYP_CD)

    , CONSTRAINT CA_ACCOUNT_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCTG_CTGRY_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCTG_CTGRY_T
/

CREATE TABLE CA_ACCTG_CTGRY_T
(
      ACCTG_CTGRY_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCTG_CTGRY_DESC VARCHAR(40)
        , ACCTG_CTGRY_SHRT_NM VARCHAR(12)
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_ACCTG_CTGRY_TP1 PRIMARY KEY(ACCTG_CTGRY_CD)

    , CONSTRAINT CA_ACCTG_CTGRY_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_AUTODEF_ICR_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_AUTODEF_ICR_T
/

CREATE TABLE CA_ACCT_AUTODEF_ICR_T
(
      CA_ICR_ACCT_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCT_DFLT_ID DECIMAL(10)
        , ICR_FIN_COA_CD VARCHAR(2)
        , ICR_FIN_ACCT_NBR VARCHAR(7)
        , ACLN_PCT VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT CA_ACCT_AUTODEF_ICR_TP1 PRIMARY KEY(CA_ICR_ACCT_GNRTD_ID)

    , CONSTRAINT CA_ACCT_AUTODEF_ICR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_AUTO_CREATE_DFLT_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_AUTO_CREATE_DFLT_T
/

CREATE TABLE CA_ACCT_AUTO_CREATE_DFLT_T
(
      KC_UNIT VARCHAR(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , KC_UNIT_NAME VARCHAR(40)
        , ACCT_ZIP_CD VARCHAR(20)
        , ACCT_CITY_NM VARCHAR(25)
        , ACCT_STATE_CD VARCHAR(2)
        , ACCT_STREET_ADDR VARCHAR(30)
        , ACCT_OFF_CMP_IND VARCHAR(1)
        , ACCT_TYP_CD VARCHAR(2)
        , ACCT_PHYS_CMP_CD VARCHAR(2)
        , SUB_FUND_GRP_CD VARCHAR(6)
        , ACCT_FRNG_BNFT_CD VARCHAR(1)
        , RPTS_TO_FIN_COA_CD VARCHAR(2)
        , RPTS_TO_ACCT_NBR VARCHAR(7)
        , FIN_HGH_ED_FUNC_CD VARCHAR(4)
        , ACCT_FSC_OFC_UID VARCHAR(40)
        , ACCT_SPVSR_UNVL_ID VARCHAR(40)
        , ACCT_MGR_UNVL_ID VARCHAR(40)
        , ORG_CD VARCHAR(4)
        , CONT_FIN_COA_CD VARCHAR(2)
        , CONT_ACCOUNT_NBR VARCHAR(7)
        , INCOME_FIN_COA_CD VARCHAR(2)
        , INCOME_ACCOUNT_NBR VARCHAR(7)
        , BDGT_REC_LVL_CD VARCHAR(1)
        , ACCT_SF_CD VARCHAR(1)
        , ACCT_PND_SF_CD VARCHAR(1)
        , FIN_EXT_ENC_SF_CD VARCHAR(1)
        , FIN_INT_ENC_SF_CD VARCHAR(1)
        , FIN_PRE_ENC_SF_CD VARCHAR(1)
        , FIN_OBJ_PRSCTRL_CD VARCHAR(1)
        , ICR_FIN_COA_CD VARCHAR(2)
        , ICR_ACCOUNT_NBR VARCHAR(7)
        , CG_ACCT_RESP_ID DECIMAL(2)
        , ACCT_ICR_TYP_CD VARCHAR(2)
        , ACCT_EXPNS_GUIDE_TXT VARCHAR(400)
        , ACCT_INCM_GUIDE_TXT VARCHAR(400)
        , ACCT_PRPS_GUIDE_TXT VARCHAR(400)
        , ACCT_DESC_CMPS_CD VARCHAR(2)
        , ACCT_DESC_BLDG_CD VARCHAR(10)
        , CONTR_CTRL_FCOA_CD VARCHAR(2)
        , CONTR_CTRLACCT_NBR VARCHAR(7)
        , FIN_SERIES_ID VARCHAR(3)
        , ACCT_CLOSED_IND VARCHAR(1)
    
    , CONSTRAINT CA_ACCT_AUTO_CREATE_DFLT_TP1 PRIMARY KEY(KC_UNIT)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_CHG_DOC_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_CHG_DOC_T
/

CREATE TABLE CA_ACCT_CHG_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCT_FSC_OFC_UID VARCHAR(40)
        , ACCT_SPVSR_UNVL_ID VARCHAR(40)
        , ACCT_MGR_UNVL_ID VARCHAR(40)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , SUB_FUND_GRP_CD VARCHAR(6)
        , ACCT_CITY_NM VARCHAR(25)
        , ACCT_STATE_CD VARCHAR(2)
        , ACCT_STREET_ADDR VARCHAR(30)
        , ACCT_ZIP_CD VARCHAR(20)
        , ACCT_EXPIRATION_DT DATETIME
        , CONT_FIN_COA_CD VARCHAR(2)
        , CONT_ACCOUNT_NBR VARCHAR(7)
        , INCOME_FIN_COA_CD VARCHAR(2)
        , INCOME_ACCOUNT_NBR VARCHAR(7)
        , CG_CFDA_NBR VARCHAR(6)
        , FIN_HGH_ED_FUNC_CD VARCHAR(4)
        , ACCT_SF_CD VARCHAR(1)
        , ACCT_PND_SF_CD VARCHAR(1)
        , ACCT_SRCH_CRTA_TXT VARCHAR(400)
        , LBR_BEN_RT_CAT_CD VARCHAR(2)
    
    , CONSTRAINT CA_ACCT_CHG_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CA_ACCT_CHG_DOC_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCT_CHG_DOC_TI2 (ACCT_FSC_OFC_UID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCT_CHG_DOC_TI3 (ACCT_MGR_UNVL_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ACCT_CHG_DOC_TI4 (ACCT_SPVSR_UNVL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_CHG_DTL_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_CHG_DTL_T
/

CREATE TABLE CA_ACCT_CHG_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT CA_ACCT_CHG_DTL_TP1 PRIMARY KEY(FDOC_NBR,FIN_COA_CD,ACCOUNT_NBR)

    , CONSTRAINT CA_ACCT_CHG_DTL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                            
                                    
                                                                                                                                                                                            
                                    
, INDEX CA_ACCT_CHG_DTL_TI2 (FIN_COA_CD , ACCOUNT_NBR )
    
                                                                                                                                                                                            
                                    
, INDEX CA_ACCT_CHG_DTL_TI3 (FDOC_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_DELEGATE_GBL_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_DELEGATE_GBL_T
/

CREATE TABLE CA_ACCT_DELEGATE_GBL_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT CA_ACCT_DELEGATE_GBL_TP1 PRIMARY KEY(FDOC_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_DELEGATE_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_DELEGATE_T
/

CREATE TABLE CA_ACCT_DELEGATE_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FDOC_TYP_CD VARCHAR(64)
        , ACCT_DLGT_UNVL_ID VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_APRV_FROM_AMT DECIMAL(19,2)
        , ACCT_DLGT_PRMRT_CD VARCHAR(1)
        , ACCT_DLGT_ACTV_CD VARCHAR(1)
        , ACCT_DLGT_START_DT DATETIME
        , FDOC_APRV_TO_AMT DECIMAL(19,2)
    
    , CONSTRAINT CA_ACCT_DELEGATE_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR,FDOC_TYP_CD,ACCT_DLGT_UNVL_ID)

    , CONSTRAINT CA_ACCT_DELEGATE_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CA_ACCT_DELEGATE_TI2 (ACCT_DLGT_UNVL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_DESC_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_DESC_T
/

CREATE TABLE CA_ACCT_DESC_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CAMPUS_DESC VARCHAR(40)
        , ORG_DESC VARCHAR(40)
        , RC_DESC VARCHAR(40)
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
    
    , CONSTRAINT CA_ACCT_DESC_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR)

    , CONSTRAINT CA_ACCT_DESC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_GDLNPRPS_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_GDLNPRPS_T
/

CREATE TABLE CA_ACCT_GDLNPRPS_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCT_EXP_GDLN_TXT VARCHAR(400)
        , ACCT_INC_GDLN_TXT VARCHAR(400)
        , ACCT_PURPOSE_TXT VARCHAR(400)
    
    , CONSTRAINT CA_ACCT_GDLNPRPS_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR)

    , CONSTRAINT CA_ACCT_GDLNPRPS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ACCT_SF_T
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_SF_T
/

CREATE TABLE CA_ACCT_SF_T
(
      ACCT_SF_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCT_SF_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_ACCT_SF_TP1 PRIMARY KEY(ACCT_SF_CD)

    , CONSTRAINT CA_ACCT_SF_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_AICPA_FUNC_T
# -----------------------------------------------------------------------
drop table if exists CA_AICPA_FUNC_T
/

CREATE TABLE CA_AICPA_FUNC_T
(
      FIN_AICPA_FUNC_CD VARCHAR(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_AICPA_FUNC_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_AICPA_FUNC_TP1 PRIMARY KEY(FIN_AICPA_FUNC_CD)

    , CONSTRAINT CA_AICPA_FUNC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_BALANCE_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CA_BALANCE_TYPE_T
/

CREATE TABLE CA_BALANCE_TYPE_T
(
      FIN_BALANCE_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_BALANCE_TYP_NM VARCHAR(40)
        , FIN_BALTYP_SHRT_NM VARCHAR(12)
        , FIN_OFFST_GNRTN_CD VARCHAR(1)
        , FIN_BALTYP_ENC_CD VARCHAR(1)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_BALANCE_TYPE_TP1 PRIMARY KEY(FIN_BALANCE_TYP_CD)

    , CONSTRAINT CA_BALANCE_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_BDGT_AGGR_T
# -----------------------------------------------------------------------
drop table if exists CA_BDGT_AGGR_T
/

CREATE TABLE CA_BDGT_AGGR_T
(
      FOBJ_BDGT_AGGR_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , FIN_BDGT_AGGR_NM VARCHAR(40)
    
    , CONSTRAINT CA_BDGT_AGGR_TP1 PRIMARY KEY(FOBJ_BDGT_AGGR_CD)

    , CONSTRAINT CA_BDGT_AGGR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_BDGT_REC_LVL_T
# -----------------------------------------------------------------------
drop table if exists CA_BDGT_REC_LVL_T
/

CREATE TABLE CA_BDGT_REC_LVL_T
(
      BDGT_REC_LVL_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BDGT_REC_LVL_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_BDGT_REC_LVL_TP1 PRIMARY KEY(BDGT_REC_LVL_CD)

    , CONSTRAINT CA_BDGT_REC_LVL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_CFDA_REF_T
# -----------------------------------------------------------------------
drop table if exists CA_CFDA_REF_T
/

CREATE TABLE CA_CFDA_REF_T
(
      CG_CFDA_NBR VARCHAR(6)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CG_CFDA_PGM_TTL_NM VARCHAR(300)
        , CG_CFDA_MAINT_TYP_ID VARCHAR(10)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_CFDA_REF_TP1 PRIMARY KEY(CG_CFDA_NBR)

    , CONSTRAINT CG_CFDA_REF_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_CHART_T
# -----------------------------------------------------------------------
drop table if exists CA_CHART_T
/

CREATE TABLE CA_CHART_T
(
      FIN_COA_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_DESC VARCHAR(40)
        , FIN_COA_ACTIVE_CD VARCHAR(1)
        , FIN_CASH_OBJ_CD VARCHAR(4)
        , FIN_AP_OBJ_CD VARCHAR(4)
        , INCBDGT_ELIMOBJ_CD VARCHAR(4)
        , EXPBDGT_ELIMOBJ_CD VARCHAR(4)
        , RPTS_TO_FIN_COA_CD VARCHAR(2)
        , FIN_AR_OBJ_CD VARCHAR(4)
        , FIN_INT_ENC_OBJ_CD VARCHAR(4)
        , FIN_EXT_ENC_OBJ_CD VARCHAR(4)
        , FIN_PRE_ENC_OBJ_CD VARCHAR(4)
        , ICR_INC_FIN_OBJ_CD VARCHAR(4)
        , ICR_EXP_FIN_OBJ_CD VARCHAR(4)
        , FND_BAL_OBJ_CD VARCHAR(4)
    
    , CONSTRAINT CA_CHART_TP1 PRIMARY KEY(FIN_COA_CD)

    , CONSTRAINT CA_CHART_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_DLGT_CHG_DOC_T
# -----------------------------------------------------------------------
drop table if exists CA_DLGT_CHG_DOC_T
/

CREATE TABLE CA_DLGT_CHG_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , ACCT_DLGT_UNVL_ID VARCHAR(40)
        , FDOC_TYP_CD VARCHAR(64)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_APRV_FROM_AMT DECIMAL(19,2)
        , FDOC_APRV_TO_AMT DECIMAL(19,2)
        , ACCT_DLGT_PRMRT_CD VARCHAR(1)
        , ACCT_DLGT_START_DT DATETIME
    
    , CONSTRAINT CA_DLGT_CHG_DOC_TP1 PRIMARY KEY(FDOC_NBR,ACCT_DLGT_UNVL_ID,FDOC_TYP_CD)

    , CONSTRAINT CA_DLGT_CHG_DOC_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CA_DLGT_CHG_DOC_TI2 (FDOC_NBR )
    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CA_DLGT_CHG_DOC_TI3 (ACCT_DLGT_UNVL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_FEDERAL_FUNC_T
# -----------------------------------------------------------------------
drop table if exists CA_FEDERAL_FUNC_T
/

CREATE TABLE CA_FEDERAL_FUNC_T
(
      FIN_FED_FUNC_CD VARCHAR(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_FED_FUNC_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_FEDERAL_FUNC_TP1 PRIMARY KEY(FIN_FED_FUNC_CD)

    , CONSTRAINT CA_FEDERAL_FUNC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_FED_FND_T
# -----------------------------------------------------------------------
drop table if exists CA_FED_FND_T
/

CREATE TABLE CA_FED_FND_T
(
      FIN_FED_FUNDED_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , FIN_FED_FND_NM VARCHAR(40)
    
    , CONSTRAINT CA_FED_FND_TP1 PRIMARY KEY(FIN_FED_FUNDED_CD)

    , CONSTRAINT CA_FED_FND_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_FUND_GRP_T
# -----------------------------------------------------------------------
drop table if exists CA_FUND_GRP_T
/

CREATE TABLE CA_FUND_GRP_T
(
      FUND_GRP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , FUND_GRP_NM VARCHAR(40)
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , FND_GRP_BA_RSTR_LVL_CD VARCHAR(1) default 'F' NOT NULL
    
    , CONSTRAINT CA_FUND_GRP_TP1 PRIMARY KEY(FUND_GRP_CD)

    , CONSTRAINT CA_FUND_GRP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_HIGHR_ED_FUNC_T
# -----------------------------------------------------------------------
drop table if exists CA_HIGHR_ED_FUNC_T
/

CREATE TABLE CA_HIGHR_ED_FUNC_T
(
      FIN_HGH_ED_FUNC_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_HGH_ED_FUNC_NM VARCHAR(40)
        , FIN_UBO_FUNC_CD VARCHAR(3)
        , FIN_AICPA_FUNC_CD VARCHAR(3)
        , FIN_FED_FUNC_CD VARCHAR(3)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_HIGHR_ED_FUNC_TP1 PRIMARY KEY(FIN_HGH_ED_FUNC_CD)

    , CONSTRAINT CA_HIGHR_ED_FUNC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ICR_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CA_ICR_ACCT_T
/

CREATE TABLE CA_ICR_ACCT_T
(
      CA_ICR_ACCT_GNRTD_ID DECIMAL(10) default 0
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , ICR_FIN_COA_CD VARCHAR(2)
        , ICR_FIN_ACCT_NBR VARCHAR(7)
        , ACLN_PCT VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_ICR_ACCT_TP1 PRIMARY KEY(CA_ICR_ACCT_GNRTD_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ICR_AUTO_ENTR_T
# -----------------------------------------------------------------------
drop table if exists CA_ICR_AUTO_ENTR_T
/

CREATE TABLE CA_ICR_AUTO_ENTR_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_SERIES_ID VARCHAR(3)
        , AWRD_ICR_ENTRY_NBR DECIMAL(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , AWRD_ICR_RATE_PCT DECIMAL(6,3)
        , ACCT_ICR_RATE_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT CA_ICR_AUTO_ENTR_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_SERIES_ID,AWRD_ICR_ENTRY_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ICR_EXCL_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CA_ICR_EXCL_ACCT_T
/

CREATE TABLE CA_ICR_EXCL_ACCT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FIN_OBJ_COA_CD VARCHAR(2)
        , FIN_OBJECT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTV_IND VARCHAR(1)
    
    , CONSTRAINT CA_ICR_EXCL_ACCT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR,FIN_OBJ_COA_CD,FIN_OBJECT_CD)

    , CONSTRAINT CA_ICR_EXCL_ACCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ICR_EXCL_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CA_ICR_EXCL_TYPE_T
/

CREATE TABLE CA_ICR_EXCL_TYPE_T
(
      ACCT_ICR_TYP_CD VARCHAR(2)
        , FIN_COA_CD VARCHAR(2)
        , FIN_OBJECT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCT_ICR_EXCL_TYP_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_ICR_EXCL_TYPE_TP1 PRIMARY KEY(ACCT_ICR_TYP_CD,FIN_COA_CD,FIN_OBJECT_CD)

    , CONSTRAINT CA_ICR_EXCL_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ICR_RATE_T
# -----------------------------------------------------------------------
drop table if exists CA_ICR_RATE_T
/

CREATE TABLE CA_ICR_RATE_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_SERIES_ID VARCHAR(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_ICR_RATE_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_SERIES_ID)

    , CONSTRAINT CA_ICR_RATE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ICR_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CA_ICR_TYPE_T
/

CREATE TABLE CA_ICR_TYPE_T
(
      ACCT_ICR_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCT_ICR_TYP_DESC VARCHAR(40)
        , ACCT_ICR_TYP_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_ICR_TYPE_TP1 PRIMARY KEY(ACCT_ICR_TYP_CD)

    , CONSTRAINT CA_ICR_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_MNXFR_ELIM_T
# -----------------------------------------------------------------------
drop table if exists CA_MNXFR_ELIM_T
/

CREATE TABLE CA_MNXFR_ELIM_T
(
      FOBJ_MNXFR_ELIM_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , FOBJ_MNXFR_ELIM_NM VARCHAR(40)
    
    , CONSTRAINT CA_MNXFR_ELIM_TP1 PRIMARY KEY(FOBJ_MNXFR_ELIM_CD)

    , CONSTRAINT CA_MNXFR_ELIM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_OBJECT_CODE_T
# -----------------------------------------------------------------------
drop table if exists CA_OBJECT_CODE_T
/

CREATE TABLE CA_OBJECT_CODE_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , FIN_OBJECT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_OBJ_CD_NM VARCHAR(40)
        , FIN_OBJ_CD_SHRT_NM VARCHAR(12)
        , FIN_OBJ_LEVEL_CD VARCHAR(4)
        , RPTS_TO_FIN_COA_CD VARCHAR(2)
        , RPTS_TO_FIN_OBJ_CD VARCHAR(4)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , FIN_OBJ_SUB_TYP_CD VARCHAR(2)
        , HIST_FIN_OBJECT_CD VARCHAR(4)
        , FIN_OBJ_ACTIVE_CD VARCHAR(1)
        , FOBJ_BDGT_AGGR_CD VARCHAR(1)
        , FOBJ_MNXFR_ELIM_CD VARCHAR(1)
        , FIN_FED_FUNDED_CD VARCHAR(1)
        , NXT_YR_FIN_OBJ_CD VARCHAR(4)
        , RSCH_BDGT_CTGRY_CD VARCHAR(3)
        , RSCH_OBJ_CD_DESC VARCHAR(200)
        , RSCH_ON_CMP_IND VARCHAR(1)
    
    , CONSTRAINT CA_OBJECT_CODE_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,FIN_OBJECT_CD)

    , CONSTRAINT CA_OBJECT_CODE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_OBJ_CD_CHG_DOC_T
# -----------------------------------------------------------------------
drop table if exists CA_OBJ_CD_CHG_DOC_T
/

CREATE TABLE CA_OBJ_CD_CHG_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_OBJ_CD_NM VARCHAR(40)
        , FIN_OBJ_CD_SHRT_NM VARCHAR(12)
        , FIN_OBJ_LEVEL_CD VARCHAR(4)
        , RPTS_TO_FIN_COA_CD VARCHAR(2)
        , RPTS_TO_FIN_OBJ_CD VARCHAR(4)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , FIN_OBJ_SUB_TYP_CD VARCHAR(2)
        , HIST_FIN_OBJECT_CD VARCHAR(4)
        , FIN_OBJ_ACTIVE_CD VARCHAR(1)
        , FOBJ_BDGT_AGGR_CD VARCHAR(1)
        , FOBJ_MNXFR_ELIM_CD VARCHAR(1)
        , FIN_FED_FUNDED_CD VARCHAR(1)
        , NXT_YR_FIN_OBJ_CD VARCHAR(4)
        , RSCH_BDGT_CTGRY_CD VARCHAR(3)
        , RSCH_OBJ_CD_DESC VARCHAR(200)
        , RSCH_ON_CMP_IND VARCHAR(1)
    
    , CONSTRAINT CA_OBJ_CD_CHG_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CA_OBJ_CD_CHG_DOC_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX CA_OBJ_CD_CHG_DOC_TI1 (UNIV_FISCAL_YR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_OBJ_CD_CHG_DTL_T
# -----------------------------------------------------------------------
drop table if exists CA_OBJ_CD_CHG_DTL_T
/

CREATE TABLE CA_OBJ_CD_CHG_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT CA_OBJ_CD_CHG_DTL_TP1 PRIMARY KEY(FDOC_NBR,UNIV_FISCAL_YR,FIN_COA_CD)

    , CONSTRAINT CA_OBJ_CD_CHG_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_OBJ_CONSOLDTN_T
# -----------------------------------------------------------------------
drop table if exists CA_OBJ_CONSOLDTN_T
/

CREATE TABLE CA_OBJ_CONSOLDTN_T
(
      FIN_COA_CD VARCHAR(2)
        , FIN_CONS_OBJ_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_CONS_OBJ_NM VARCHAR(40)
        , FIN_CONOBJ_SHRT_NM VARCHAR(12)
        , FIN_CONOBJ_ACTV_CD VARCHAR(1)
        , FIN_REPORT_SORT_CD VARCHAR(2)
    
    , CONSTRAINT CA_OBJ_CONSOLDTN_TP1 PRIMARY KEY(FIN_COA_CD,FIN_CONS_OBJ_CD)

    , CONSTRAINT CA_OBJ_CONSOLDTN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_OBJ_LEVEL_T
# -----------------------------------------------------------------------
drop table if exists CA_OBJ_LEVEL_T
/

CREATE TABLE CA_OBJ_LEVEL_T
(
      FIN_COA_CD VARCHAR(2)
        , FIN_OBJ_LEVEL_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_OBJ_LEVEL_NM VARCHAR(40)
        , FIN_OBJLVL_SHRT_NM VARCHAR(12)
        , FIN_CONS_OBJ_CD VARCHAR(4)
        , FIN_OBJLVL_ACTV_CD VARCHAR(1)
        , FIN_REPORT_SORT_CD VARCHAR(2)
    
    , CONSTRAINT CA_OBJ_LEVEL_TP1 PRIMARY KEY(FIN_COA_CD,FIN_OBJ_LEVEL_CD)

    , CONSTRAINT CA_OBJ_LEVEL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CA_OBJ_LEVEL_TI2 (FIN_COA_CD , FIN_CONS_OBJ_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_OBJ_SUB_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CA_OBJ_SUB_TYPE_T
/

CREATE TABLE CA_OBJ_SUB_TYPE_T
(
      FIN_OBJ_SUB_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_OBJ_SUB_TYP_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_OBJ_SUB_TYPE_TP1 PRIMARY KEY(FIN_OBJ_SUB_TYP_CD)

    , CONSTRAINT CA_OBJ_SUB_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_OBJ_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CA_OBJ_TYPE_T
/

CREATE TABLE CA_OBJ_TYPE_T
(
      FIN_OBJ_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_OBJ_TYP_NM VARCHAR(40)
        , FIN_OBJTYP_DBCR_CD VARCHAR(1)
        , FIN_OBJ_TYP_ICR_CD VARCHAR(1)
        , FUND_BALANCE_CD VARCHAR(1)
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , ACCTG_CTGRY_CD VARCHAR(2) NOT NULL
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_OBJ_TYPE_TP1 PRIMARY KEY(FIN_OBJ_TYP_CD)

    , CONSTRAINT CA_OBJ_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_EXTNS_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_EXTNS_T
/

CREATE TABLE CA_ORG_EXTNS_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DESCRSHORT VARCHAR(10)
        , COMPANY VARCHAR(3)
        , SETID_LOCATION VARCHAR(5)
        , LOCATION VARCHAR(10)
        , TAX_LOCATION_CD VARCHAR(10)
        , MANAGER_UNVL_ID VARCHAR(40)
        , MANAGER_POSN VARCHAR(8)
        , BUDGET_YR_END_DT DECIMAL(4)
        , BUDGET_LVL VARCHAR(1)
        , GL_EXPENSE VARCHAR(35)
        , EEO4_FUNCTION VARCHAR(2)
        , ACCIDENT_INS VARCHAR(3)
        , SI_ACCIDENT_NUM VARCHAR(15)
        , HAZARD VARCHAR(4)
        , ESTABID VARCHAR(5)
        , RISKCD VARCHAR(6)
        , FTE_EDIT_INDC VARCHAR(1)
        , DEPT_TENURE_FLG VARCHAR(1)
        , TL_DISTRIB_INFO VARCHAR(1)
        , USE_BUDGETS VARCHAR(1)
        , USE_ENCUMBRANCES VARCHAR(1)
        , USE_DISTRIBUTION VARCHAR(1)
        , BUDGET_DEPTID VARCHAR(10)
        , DIST_PRORATE_OPTN VARCHAR(1)
        , HP_STATS_DEPT_CD VARCHAR(3)
        , HP_STATS_FACULTY VARCHAR(5)
        , ACCOUNTING_OWNER VARCHAR(30)
        , COUNTRY_GRP VARCHAR(18)
        , IU_ORG_MAIL_DRP_CD VARCHAR(15)
        , IU_ORG_ADDRESS_2 VARCHAR(30)
        , IU_ORG_ADDRESS_3 VARCHAR(30)
        , IU_CAMPUS_CD VARCHAR(2)
        , IU_CAMPUS_BLDG VARCHAR(10)
        , IU_CAMPUS_ROOM VARCHAR(8)
        , IU_POSN_ALLOW_FL VARCHAR(1)
        , IU_TENURE_ALLOW_FL VARCHAR(1)
        , IU_TITLE_ALLOW_FL VARCHAR(1)
        , IU_OCC_UN_ALLOW_FL VARCHAR(1)
        , ORG_FSCL_APRVR_UID VARCHAR(40)
        , LAST_UPDATE_DATE DATETIME
    
    , CONSTRAINT CA_ORG_EXTNS_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD)

    , CONSTRAINT CA_ORG_EXTNS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_REVERSION_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_REVERSION_T
/

CREATE TABLE CA_ORG_REVERSION_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BDGT_RVRSN_COA_CD VARCHAR(2)
        , BDGT_RVRSNACCT_NBR VARCHAR(7)
        , CF_BY_OBJ_CD_IND VARCHAR(1)
        , CSH_RVRSNFINCOA_CD VARCHAR(2)
        , CSH_RVRSN_ACCT_NBR VARCHAR(7)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_ORG_REVERSION_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ORG_CD)

    , CONSTRAINT CA_ORG_REVERSION_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_RTNG_MDL_NM_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_RTNG_MDL_NM_T
/

CREATE TABLE CA_ORG_RTNG_MDL_NM_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , ORG_RTNG_MDL_NM VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_ORG_RTNG_MDL_NM_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD,ORG_RTNG_MDL_NM)

    , CONSTRAINT CA_ORG_RTNG_MDL_NM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_RTNG_MDL_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_RTNG_MDL_T
/

CREATE TABLE CA_ORG_RTNG_MDL_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , ORG_RTNG_MDL_NM VARCHAR(10)
        , ACCT_DLGT_UNVL_ID VARCHAR(40)
        , FDOC_TYP_CD VARCHAR(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_APRV_FROM_AMT DECIMAL(19,2)
        , FDOC_APRV_TO_AMT DECIMAL(19,2)
        , ACCT_DLGT_PRMRT_CD VARCHAR(1)
        , ACCT_DLGT_START_DT DATETIME
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_ORG_RTNG_MDL_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD,ORG_RTNG_MDL_NM,ACCT_DLGT_UNVL_ID,FDOC_TYP_CD)

    , CONSTRAINT CA_ORG_RTNG_MDL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CA_ORG_RTNG_MDL_TI2 (ACCT_DLGT_UNVL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_RVRSN_CHG_DOC_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_RVRSN_CHG_DOC_T
/

CREATE TABLE CA_ORG_RVRSN_CHG_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_YR DECIMAL(4)
        , BDGT_RVRSN_COA_CD VARCHAR(2)
        , BDGT_RVRSNACCT_NBR VARCHAR(7)
        , CF_BY_OBJ_CD_IND VARCHAR(1)
        , CSH_RVRSNFINCOA_CD VARCHAR(2)
        , CSH_RVRSN_ACCT_NBR VARCHAR(7)
    
    , CONSTRAINT CA_ORG_RVRSN_CHG_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CA_ORG_RVRSN_CHG_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_RVRSN_CHG_DTL_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_RVRSN_CHG_DTL_T
/

CREATE TABLE CA_ORG_RVRSN_CHG_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , ORG_RVRSN_CTGRY_CD VARCHAR(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_RVRSN_OBJ_CD VARCHAR(4)
        , ORG_RVRSN_CD VARCHAR(2)
    
    , CONSTRAINT CA_ORG_RVRSN_CHG_DTL_TP1 PRIMARY KEY(FDOC_NBR,ORG_RVRSN_CTGRY_CD)

    , CONSTRAINT CA_ORG_RVRSN_CHG_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_RVRSN_CHG_ORG_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_RVRSN_CHG_ORG_T
/

CREATE TABLE CA_ORG_RVRSN_CHG_ORG_T
(
      FDOC_NBR VARCHAR(14)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT CA_ORG_RVRSN_CHG_ORG_TP1 PRIMARY KEY(FDOC_NBR,FIN_COA_CD,ORG_CD)

    , CONSTRAINT CA_ORG_RVRSN_CHG_ORG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_RVRSN_CTGRY_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_RVRSN_CTGRY_T
/

CREATE TABLE CA_ORG_RVRSN_CTGRY_T
(
      ORG_RVRSN_CTGRY_CD VARCHAR(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_RVRSN_CTGRY_NM VARCHAR(40)
        , ORG_RVRSN_SORT_CD VARCHAR(2)
        , ORG_RVRSN_CTGRY_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_ORG_RVRSN_CTGRY_TP1 PRIMARY KEY(ORG_RVRSN_CTGRY_CD)

    , CONSTRAINT CA_ORG_RVRSN_CTGRY_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_RVRSN_DTL_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_RVRSN_DTL_T
/

CREATE TABLE CA_ORG_RVRSN_DTL_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , ORG_RVRSN_CTGRY_CD VARCHAR(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_RVRSN_CD VARCHAR(2)
        , ORG_RVRSN_OBJ_CD VARCHAR(4)
        , ACTV_IND VARCHAR(1)
    
    , CONSTRAINT CA_ORG_RVRSN_DTL_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ORG_CD,ORG_RVRSN_CTGRY_CD)

    , CONSTRAINT CA_ORG_RVRSN_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_T
/

CREATE TABLE CA_ORG_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_MGR_UNVL_ID VARCHAR(40)
        , ORG_NM VARCHAR(40)
        , RC_CD VARCHAR(2)
        , ORG_PHYS_CMP_CD VARCHAR(2)
        , ORG_TYP_CD VARCHAR(1)
        , ORG_DFLT_ACCT_NBR VARCHAR(7)
        , ORG_LN1_ADDR VARCHAR(30)
        , ORG_LN2_ADDR VARCHAR(30)
        , ORG_CITY_NM VARCHAR(25)
        , ORG_STATE_CD VARCHAR(2)
        , ORG_ZIP_CD VARCHAR(20)
        , ORG_CNTRY_CD VARCHAR(2)
        , ORG_BEGIN_DT DATETIME
        , ORG_END_DT DATETIME
        , RPTS_TO_FIN_COA_CD VARCHAR(2)
        , RPTS_TO_ORG_CD VARCHAR(4)
        , ORG_ACTIVE_CD VARCHAR(1)
        , ORG_IN_FP_CD VARCHAR(1)
        , ORG_PLNT_ACCT_NBR VARCHAR(7)
        , CMP_PLNT_ACCT_NBR VARCHAR(7)
        , ORG_PLNT_COA_CD VARCHAR(2)
        , CMP_PLNT_COA_CD VARCHAR(2)
    
    , CONSTRAINT CA_ORG_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD)

    , CONSTRAINT CA_ORG_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_ORG_TI2 (ORG_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_ORG_TI3 (RC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_ORG_TI4 (ORG_MGR_UNVL_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_ORG_TI5 (RPTS_TO_FIN_COA_CD , RPTS_TO_ORG_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_ORG_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CA_ORG_TYPE_T
/

CREATE TABLE CA_ORG_TYPE_T
(
      ORG_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_TYP_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_ORG_TYPE_TP1 PRIMARY KEY(ORG_TYP_CD)

    , CONSTRAINT CA_ORG_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_PRIOR_YR_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CA_PRIOR_YR_ACCT_T
/

CREATE TABLE CA_PRIOR_YR_ACCT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCOUNT_NM VARCHAR(40)
        , ACCT_FSC_OFC_UID VARCHAR(40)
        , ACCT_SPVSR_UNVL_ID VARCHAR(40)
        , ACCT_MGR_UNVL_ID VARCHAR(40)
        , ORG_CD VARCHAR(4)
        , ACCT_TYP_CD VARCHAR(2)
        , ACCT_PHYS_CMP_CD VARCHAR(2)
        , SUB_FUND_GRP_CD VARCHAR(6)
        , ACCT_FRNG_BNFT_CD VARCHAR(1)
        , FIN_HGH_ED_FUNC_CD VARCHAR(4)
        , ACCT_RSTRC_STAT_CD VARCHAR(1)
        , ACCT_RSTRC_STAT_DT DATETIME
        , ACCT_CITY_NM VARCHAR(25)
        , ACCT_STATE_CD VARCHAR(2)
        , ACCT_STREET_ADDR VARCHAR(30)
        , ACCT_ZIP_CD VARCHAR(20)
        , RPTS_TO_FIN_COA_CD VARCHAR(2)
        , RPTS_TO_ACCT_NBR VARCHAR(7)
        , ACCT_CREATE_DT DATETIME
        , ACCT_EFFECT_DT DATETIME
        , ACCT_EXPIRATION_DT DATETIME
        , CONT_FIN_COA_CD VARCHAR(2)
        , CONT_ACCOUNT_NBR VARCHAR(7)
        , ENDOW_FIN_COA_CD VARCHAR(2)
        , ENDOW_ACCOUNT_NBR VARCHAR(7)
        , CONTR_CTRL_FCOA_CD VARCHAR(2)
        , CONTR_CTRLACCT_NBR VARCHAR(7)
        , INCOME_FIN_COA_CD VARCHAR(2)
        , INCOME_ACCOUNT_NBR VARCHAR(7)
        , ACCT_ICR_TYP_CD VARCHAR(2)
        , AC_CSTM_ICREXCL_CD VARCHAR(1)
        , FIN_SERIES_ID VARCHAR(3)
        , ICR_FIN_COA_CD VARCHAR(2)
        , ICR_ACCOUNT_NBR VARCHAR(7)
        , ACCT_IN_FP_CD VARCHAR(1)
        , BDGT_REC_LVL_CD VARCHAR(1)
        , ACCT_SF_CD VARCHAR(1)
        , ACCT_PND_SF_CD VARCHAR(1)
        , FIN_EXT_ENC_SF_CD VARCHAR(1)
        , FIN_INT_ENC_SF_CD VARCHAR(1)
        , FIN_PRE_ENC_SF_CD VARCHAR(1)
        , FIN_OBJ_PRSCTRL_CD VARCHAR(1)
        , CG_CFDA_NBR VARCHAR(6)
        , ACCT_OFF_CMP_IND VARCHAR(1)
        , ACCT_CLOSED_IND VARCHAR(1)
    
    , CONSTRAINT CA_PRIOR_YR_ACCT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR)

    , CONSTRAINT CA_PRIOR_YR_ACCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_PRIOR_YR_ICR_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CA_PRIOR_YR_ICR_ACCT_T
/

CREATE TABLE CA_PRIOR_YR_ICR_ACCT_T
(
      CA_PRIOR_YR_ICR_ACCT_GNRTD_ID DECIMAL(10) default 0
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , ICR_FIN_COA_CD VARCHAR(2)
        , ICR_FIN_ACCT_NBR VARCHAR(7)
        , ACLN_PCT VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CA_PRIOR_YR_ICR_ACCT_TP1 PRIMARY KEY(CA_PRIOR_YR_ICR_ACCT_GNRTD_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_PRIOR_YR_ORG_T
# -----------------------------------------------------------------------
drop table if exists CA_PRIOR_YR_ORG_T
/

CREATE TABLE CA_PRIOR_YR_ORG_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_MGR_UNVL_ID VARCHAR(40)
        , ORG_NM VARCHAR(40)
        , RC_CD VARCHAR(2)
        , ORG_PHYS_CMP_CD VARCHAR(2)
        , ORG_TYP_CD VARCHAR(1)
        , ORG_DFLT_ACCT_NBR VARCHAR(7)
        , ORG_LN1_ADDR VARCHAR(30)
        , ORG_LN2_ADDR VARCHAR(30)
        , ORG_CITY_NM VARCHAR(25)
        , ORG_STATE_CD VARCHAR(2)
        , ORG_ZIP_CD VARCHAR(20)
        , ORG_CNTRY_CD VARCHAR(2)
        , ORG_BEGIN_DT DATETIME
        , ORG_END_DT DATETIME
        , RPTS_TO_FIN_COA_CD VARCHAR(2)
        , RPTS_TO_ORG_CD VARCHAR(4)
        , ORG_ACTIVE_CD VARCHAR(1)
        , ORG_IN_FP_CD VARCHAR(1)
        , ORG_PLNT_ACCT_NBR VARCHAR(7)
        , CMP_PLNT_ACCT_NBR VARCHAR(7)
        , ORG_PLNT_COA_CD VARCHAR(2)
        , CMP_PLNT_COA_CD VARCHAR(2)
    
    , CONSTRAINT CA_PRIOR_YR_ORG_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD)

    , CONSTRAINT CA_PRIOR_YR_ORG_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_PRIOR_YR_ORG_TI2 (ORG_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_PRIOR_YR_ORG_TI3 (RC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_PRIOR_YR_ORG_TI4 (ORG_MGR_UNVL_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_PRIOR_YR_ORG_TI5 (RPTS_TO_FIN_COA_CD , RPTS_TO_ORG_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_PROJECT_T
# -----------------------------------------------------------------------
drop table if exists CA_PROJECT_T
/

CREATE TABLE CA_PROJECT_T
(
      PROJECT_CD VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PROJ_MGR_UNVL_ID VARCHAR(40)
        , PROJECT_NM VARCHAR(40)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , PROJ_ACTIVE_CD VARCHAR(1)
        , PROJECT_DESC VARCHAR(400)
    
    , CONSTRAINT CA_PROJECT_TP1 PRIMARY KEY(PROJECT_CD)

    , CONSTRAINT CA_PROJECT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CA_PROJECT_TI2 (FIN_COA_CD , ORG_CD )
    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CA_PROJECT_TI3 (PROJ_MGR_UNVL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_RC_T
# -----------------------------------------------------------------------
drop table if exists CA_RC_T
/

CREATE TABLE CA_RC_T
(
      RC_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , RC_NM VARCHAR(40)
        , RC_SHRT_NM VARCHAR(12)
        , RC_ACTIVE_CD VARCHAR(1)
    
    , CONSTRAINT CA_RC_TP1 PRIMARY KEY(RC_CD)

    , CONSTRAINT CA_RC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_RESTRICT_STAT_T
# -----------------------------------------------------------------------
drop table if exists CA_RESTRICT_STAT_T
/

CREATE TABLE CA_RESTRICT_STAT_T
(
      ACCT_RSTRC_STAT_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCT_RSTRC_STAT_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_RESTRICT_STAT_TP1 PRIMARY KEY(ACCT_RSTRC_STAT_CD)

    , CONSTRAINT CA_RESTRICT_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_SUB_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CA_SUB_ACCT_T
/

CREATE TABLE CA_SUB_ACCT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , SUB_ACCT_NM VARCHAR(40)
        , SUB_ACCT_ACTV_CD VARCHAR(1)
        , FIN_RPT_CHRT_CD VARCHAR(2)
        , FIN_RPT_ORG_CD VARCHAR(4)
        , FIN_RPT_CD VARCHAR(10)
    
    , CONSTRAINT CA_SUB_ACCT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR)

    , CONSTRAINT CA_SUB_ACCT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX CA_SUB_ACCT_TI2 (FIN_COA_CD , ACCOUNT_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_SUB_FND_GRP_TYP_T
# -----------------------------------------------------------------------
drop table if exists CA_SUB_FND_GRP_TYP_T
/

CREATE TABLE CA_SUB_FND_GRP_TYP_T
(
      SUB_FUNDGRP_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , SUB_FND_GRP_TYP_DESC VARCHAR(40)
        , SUB_FND_GRP_TYP_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT CA_SUB_FND_GRP_TYP_TP1 PRIMARY KEY(SUB_FUNDGRP_TYP_CD)

    , CONSTRAINT CA_SUB_FND_GRP_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_SUB_FUND_GRP_T
# -----------------------------------------------------------------------
drop table if exists CA_SUB_FUND_GRP_T
/

CREATE TABLE CA_SUB_FUND_GRP_T
(
      SUB_FUND_GRP_CD VARCHAR(6)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FUND_GRP_CD VARCHAR(2)
        , SUB_FUND_GRP_DESC VARCHAR(40)
        , SUBFUNDGRP_ACTV_CD VARCHAR(1)
        , SUB_FUNDGRP_TYP_CD VARCHAR(1)
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , SUB_FUND_GRP_WAGE_IND VARCHAR(1)
        , FND_GRP_BA_RSTR_LVL_CD VARCHAR(1) default 'N' NOT NULL
        , ACCT_RSTRC_STAT_CD VARCHAR(1)
    
    , CONSTRAINT CA_SUB_FUND_GRP_TP1 PRIMARY KEY(SUB_FUND_GRP_CD)

    , CONSTRAINT CA_SUB_FUND_GRP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_SUB_OBJECT_CD_T
# -----------------------------------------------------------------------
drop table if exists CA_SUB_OBJECT_CD_T
/

CREATE TABLE CA_SUB_OBJECT_CD_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_SUB_OBJ_CD_NM VARCHAR(40)
        , FIN_SUBOBJ_SHRT_NM VARCHAR(12)
        , FIN_SUBOBJ_ACTV_CD VARCHAR(1)
    
    , CONSTRAINT CA_SUB_OBJECT_CD_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)

    , CONSTRAINT CA_SUB_OBJECT_CD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_SUB_OBJ_CD_CHG_DOC_T
# -----------------------------------------------------------------------
drop table if exists CA_SUB_OBJ_CD_CHG_DOC_T
/

CREATE TABLE CA_SUB_OBJ_CD_CHG_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_SUB_OBJ_CD_NM VARCHAR(40)
        , FIN_SUBOBJ_SHRT_NM VARCHAR(12)
        , FIN_SUBOBJ_ACTV_CD VARCHAR(1)
    
    , CONSTRAINT CA_SUB_OBJ_CD_CHG_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CA_SUB_OBJ_CD_CHG_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_SUB_OBJ_CD_CHG_DTL_T
# -----------------------------------------------------------------------
drop table if exists CA_SUB_OBJ_CD_CHG_DTL_T
/

CREATE TABLE CA_SUB_OBJ_CD_CHG_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , FIN_OBJECT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT CA_SUB_OBJ_CD_CHG_DTL_TP1 PRIMARY KEY(FDOC_NBR,UNIV_FISCAL_YR,FIN_COA_CD,FIN_OBJECT_CD)

    , CONSTRAINT CA_SUB_OBJ_CD_CHG_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_UBO_FUNC_T
# -----------------------------------------------------------------------
drop table if exists CA_UBO_FUNC_T
/

CREATE TABLE CA_UBO_FUNC_T
(
      FIN_UBO_FUNC_CD VARCHAR(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_UBO_FUNC_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT CA_UBO_FUNC_TP1 PRIMARY KEY(FIN_UBO_FUNC_CD)

    , CONSTRAINT CA_UBO_FUNC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_AST_TRN_TYP_T
# -----------------------------------------------------------------------
drop table if exists CB_AST_TRN_TYP_T
/

CREATE TABLE CB_AST_TRN_TYP_T
(
      CPTL_AST_TRN_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTL_AST_TRN_TYP_DESC VARCHAR(45) NOT NULL
        , CPTL_AST_NON_QTY_DRVN_ALLW_IND VARCHAR(1)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , CPTLAST_QTY_SUBTYP_REQ_TXT VARCHAR(100)
        , CPTLAST_NONQTY_SUBTYP_REQ_TXT VARCHAR(100)
    
    , CONSTRAINT CB_AST_TRN_TYP_TP1 PRIMARY KEY(CPTL_AST_TRN_TYP_CD)

    , CONSTRAINT CB_AST_TRN_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_GL_ENTRY_AST_T
# -----------------------------------------------------------------------
drop table if exists CB_GL_ENTRY_AST_T
/

CREATE TABLE CB_GL_ENTRY_AST_T
(
      CB_GL_ACCT_ID DECIMAL(12)
        , CB_LN_NBR DECIMAL(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CM_FDOC_NBR VARCHAR(14)
    
    , CONSTRAINT CB_GL_ENTRY_AST_TP1 PRIMARY KEY(CB_GL_ACCT_ID,CB_LN_NBR)

    , CONSTRAINT CB_GL_ENTRY_AST_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                            
                                    
, INDEX CB_GL_ENTRY_AST_TI1 (CM_FDOC_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_GL_ENTRY_T
# -----------------------------------------------------------------------
drop table if exists CB_GL_ENTRY_T
/

CREATE TABLE CB_GL_ENTRY_T
(
      CB_GL_ACCT_ID DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_YR DECIMAL(4) NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , FIN_SUB_OBJ_CD VARCHAR(3) NOT NULL
        , FIN_BALANCE_TYP_CD VARCHAR(2) NOT NULL
        , FIN_OBJ_TYP_CD VARCHAR(2) NOT NULL
        , UNIV_FISCAL_PRD_CD VARCHAR(2) NOT NULL
        , FDOC_TYP_CD VARCHAR(8) NOT NULL
        , FS_ORIGIN_CD VARCHAR(2) NOT NULL
        , FDOC_NBR VARCHAR(14) NOT NULL
        , TRN_ENTR_SEQ_NBR DECIMAL(5) NOT NULL
        , TRN_LDGR_ENTR_DESC VARCHAR(40)
        , TRN_LDGR_ENTR_AMT DECIMAL(19,2)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , TRANSACTION_DT DATETIME
        , ORG_DOC_NBR VARCHAR(10)
        , PROJECT_CD VARCHAR(10)
        , TRN_POST_DT DATETIME
        , TIMESTAMP DATETIME
        , ACTV_IND VARCHAR(1) NOT NULL
        , TRN_LDGR_SUBMIT_AMT DECIMAL(19,2)
    
    , CONSTRAINT CB_GL_ENTRY_TP1 PRIMARY KEY(CB_GL_ACCT_ID)





    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CB_GL_ENTRY_TI1 (UNIV_FISCAL_YR , FIN_COA_CD , ACCOUNT_NBR , SUB_ACCT_NBR , FIN_OBJECT_CD , FIN_SUB_OBJ_CD , FIN_BALANCE_TYP_CD , FIN_OBJ_TYP_CD , UNIV_FISCAL_PRD_CD , FDOC_TYP_CD , FS_ORIGIN_CD , FDOC_NBR , TRN_ENTR_SEQ_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_PRTG_DTL_T
# -----------------------------------------------------------------------
drop table if exists CB_PRTG_DTL_T
/

CREATE TABLE CB_PRTG_DTL_T
(
      PO_NUMBER VARCHAR(9)
        , ITM_LN_NBR DECIMAL(3)
        , CPTLAST_TAG_NBR VARCHAR(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_SERIAL_NBR VARCHAR(25)
        , CPTLAST_ORGTAG_NBR VARCHAR(8)
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , BLDG_SUB_ROOM_NBR VARCHAR(2)
        , AST_PRTGTAG_CRT_DT DATETIME
        , CPTL_AST_GOV_TAG_NBR VARCHAR(12)
        , CPTL_AST_NTL_STOCK_NBR VARCHAR(25)
        , ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CB_PRTG_DTL_TP1 PRIMARY KEY(PO_NUMBER,ITM_LN_NBR,CPTLAST_TAG_NBR)

    , CONSTRAINT CB_PRTG_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_PRTG_T
# -----------------------------------------------------------------------
drop table if exists CB_PRTG_T
/

CREATE TABLE CB_PRTG_T
(
      PO_NUMBER VARCHAR(9)
        , ITM_LN_NBR DECIMAL(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_INV_QTY DECIMAL(11,2)
        , CPTLAST_TYP_CD VARCHAR(7)
        , CPTLAST_MFR_NM VARCHAR(45)
        , CPTLAST_MFRMDL_NBR VARCHAR(25)
        , VENDOR_NAME VARCHAR(45)
        , CPTLAST_TOPS_DESC VARCHAR(4000)
        , CPTLAST_ORG_TXT VARCHAR(255)
        , ORG_INVN_NM VARCHAR(40)
        , AST_REP_UNVL_ID VARCHAR(40)
        , FIN_COA_CD VARCHAR(2)
        , CM_PRTG_CRT_DT DATETIME
        , ORG_CD VARCHAR(4)
        , ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CB_PRTG_TP1 PRIMARY KEY(PO_NUMBER,ITM_LN_NBR)

    , CONSTRAINT CB_PRTG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_PUR_ACTN_HIST_T
# -----------------------------------------------------------------------
drop table if exists CB_PUR_ACTN_HIST_T
/

CREATE TABLE CB_PUR_ACTN_HIST_T
(
      ACTN_ID DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTN_TYP_CD VARCHAR(20)
        , FRM_FDOC_NBR VARCHAR(14) NOT NULL
        , FRM_PUR_ITM_ID DECIMAL(10) NOT NULL
        , FRM_CB_LN_NBR DECIMAL(3) NOT NULL
        , TO_FDOC_NBR VARCHAR(14) NOT NULL
        , TO_PUR_ITM_ID DECIMAL(10) NOT NULL
        , TO_CB_LN_NBR DECIMAL(3) NOT NULL
        , CB_GL_ACCT_ID DECIMAL(12)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2)
        , PUR_ITM_QTY DECIMAL(11,2)
        , ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CB_PUR_ACTN_HIST_TP1 PRIMARY KEY(ACTN_ID)

    , CONSTRAINT CB_PUR_ACTN_HIST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_PUR_DOC_T
# -----------------------------------------------------------------------
drop table if exists CB_PUR_DOC_T
/

CREATE TABLE CB_PUR_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_ITM_ID DECIMAL(10)
        , PO_ID DECIMAL(9)
        , ACTV_IND VARCHAR(1) NOT NULL
        , DOC_TYP_CD VARCHAR(8) NOT NULL
    
    , CONSTRAINT CB_PUR_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CB_PUR_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_PUR_ITM_AST_T
# -----------------------------------------------------------------------
drop table if exists CB_PUR_ITM_AST_T
/

CREATE TABLE CB_PUR_ITM_AST_T
(
      FDOC_NBR VARCHAR(14)
        , PUR_ITM_ID DECIMAL(10)
        , CB_LN_NBR DECIMAL(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PUR_ITM_DESC VARCHAR(4000)
        , PUR_ITM_QTY DECIMAL(11,2)
        , CM_FDOC_NBR VARCHAR(14)
        , ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CB_PUR_ITM_AST_TP1 PRIMARY KEY(FDOC_NBR,PUR_ITM_ID,CB_LN_NBR)

    , CONSTRAINT CB_PUR_ITM_AST_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                        
                                    
, INDEX CB_PUR_ITM_AST_TI1 (FDOC_NBR , PUR_ITM_ID )
    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CB_PUR_ITM_AST_TI2 (CM_FDOC_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CB_PUR_LN_AST_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CB_PUR_LN_AST_ACCT_T
/

CREATE TABLE CB_PUR_LN_AST_ACCT_T
(
      FDOC_NBR VARCHAR(14)
        , PUR_ITM_ID DECIMAL(10)
        , CB_LN_NBR DECIMAL(3)
        , CB_GL_ACCT_ID DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ITM_ACCT_TOT_AMT DECIMAL(19,2)
        , ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CB_PUR_LN_AST_ACCT_TP1 PRIMARY KEY(FDOC_NBR,PUR_ITM_ID,CB_LN_NBR,CB_GL_ACCT_ID)

    , CONSTRAINT CB_PUR_LN_AST_ACCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_AGENCY_T
# -----------------------------------------------------------------------
drop table if exists CG_AGENCY_T
/

CREATE TABLE CG_AGENCY_T
(
      CG_AGENCY_NBR VARCHAR(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CG_AGENCY_RPT_NM VARCHAR(30)
        , CG_AGENCY_FULL_NM VARCHAR(50)
        , CG_AGNCY_INDR_AMT DECIMAL(19,2)
        , CG_AGENCY_HIST_IND VARCHAR(1)
        , CG_AGNCY_IN_ST_IND VARCHAR(1)
        , CG_AGENCY_TYP_CD VARCHAR(1)
        , CG_RPTTO_AGNCY_NBR VARCHAR(5)
    
    , CONSTRAINT CG_AGENCY_TP1 PRIMARY KEY(CG_AGENCY_NBR)

    , CONSTRAINT CG_AGENCY_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX CG_AGENCY_TI2 (CG_RPTTO_AGNCY_NBR )
    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX CG_AGENCY_TI3 (CG_AGENCY_TYP_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_AGENCY_TYP_T
# -----------------------------------------------------------------------
drop table if exists CG_AGENCY_TYP_T
/

CREATE TABLE CG_AGENCY_TYP_T
(
      CG_AGENCY_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CG_AGENCY_TYP_DESC VARCHAR(30)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_AGENCY_TYP_TP1 PRIMARY KEY(CG_AGENCY_TYP_CD)

    , CONSTRAINT CG_AGENCY_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_AWD_ACCT_T
# -----------------------------------------------------------------------
drop table if exists CG_AWD_ACCT_T
/

CREATE TABLE CG_AWD_ACCT_T
(
      CGPRPSL_NBR DECIMAL(12)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PERSON_UNVL_ID VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_AWD_ACCT_TP1 PRIMARY KEY(CGPRPSL_NBR,FIN_COA_CD,ACCOUNT_NBR)

    , CONSTRAINT CG_AWD_ACCT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_ACCT_TI2 (FIN_COA_CD , ACCOUNT_NBR )
    
                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_ACCT_TI4 (PERSON_UNVL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_AWD_ORG_T
# -----------------------------------------------------------------------
drop table if exists CG_AWD_ORG_T
/

CREATE TABLE CG_AWD_ORG_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , CGPRPSL_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CGAWD_PRM_ORG_IND VARCHAR(1)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_AWD_ORG_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD,CGPRPSL_NBR)

    , CONSTRAINT CG_AWD_ORG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_AWD_PRJDR_T
# -----------------------------------------------------------------------
drop table if exists CG_AWD_PRJDR_T
/

CREATE TABLE CG_AWD_PRJDR_T
(
      PERSON_UNVL_ID VARCHAR(40)
        , CGPRPSL_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CGAWD_PRMPRJDR_IND VARCHAR(1)
        , CGAWD_PRJDRPRJ_TTL VARCHAR(100)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_AWD_PRJDR_TP1 PRIMARY KEY(PERSON_UNVL_ID,CGPRPSL_NBR)

    , CONSTRAINT CG_AWD_PRJDR_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                
                                    
, INDEX CG_AWD_PRJDR_TI2 (CGPRPSL_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_AWD_STAT_T
# -----------------------------------------------------------------------
drop table if exists CG_AWD_STAT_T
/

CREATE TABLE CG_AWD_STAT_T
(
      CGAWD_STAT_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CGAWD_STAT_DESC VARCHAR(15)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_AWD_STAT_TP1 PRIMARY KEY(CGAWD_STAT_CD)

    , CONSTRAINT CG_AWD_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_AWD_SUBCN_T
# -----------------------------------------------------------------------
drop table if exists CG_AWD_SUBCN_T
/

CREATE TABLE CG_AWD_SUBCN_T
(
      AWD_SUBCN_AMND_NBR VARCHAR(2)
        , CGAWD_SUBCN_NBR VARCHAR(2)
        , CG_SUBCNR_NBR VARCHAR(5)
        , CGPRPSL_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CG_SUBCN_AMT DECIMAL(19,2)
        , SUBCNR_CNTCT_F_NM VARCHAR(20)
        , SUBCNR_CNTCT_L_NM VARCHAR(25)
        , SUBCN_AUDTHIST_TXT VARCHAR(2000)
        , CGAWD_SUBCN_DESC VARCHAR(30)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_AWD_SUBCN_TP1 PRIMARY KEY(AWD_SUBCN_AMND_NBR,CGAWD_SUBCN_NBR,CG_SUBCNR_NBR,CGPRPSL_NBR)

    , CONSTRAINT CG_AWD_SUBCN_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_SUBCN_TI2 (CGPRPSL_NBR )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CG_AWD_SUBCN_TI3 (CG_SUBCNR_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_AWD_T
# -----------------------------------------------------------------------
drop table if exists CG_AWD_T
/

CREATE TABLE CG_AWD_T
(
      CGPRPSL_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CGAWD_BEG_DT DATETIME
        , CGAWD_END_DT DATETIME
        , CGAWD_TOT_AMT DECIMAL(19,2)
        , CGAWD_ADDENDUM_NBR VARCHAR(7)
        , CGAWD_ALOC_UCS_AMT DECIMAL(19,2)
        , CG_AGENCY_AWD_NBR VARCHAR(27)
        , CG_FEDPT_FND_AMT DECIMAL(19,2)
        , CGAWD_ENTRY_DT DATETIME
        , CG_AGENCY_FUT1_AMT DECIMAL(19,2)
        , CG_AGENCY_FUT2_AMT DECIMAL(19,2)
        , CG_AGENCY_FUT3_AMT DECIMAL(19,2)
        , CGAWD_DOC_NBR VARCHAR(12)
        , CGAWD_LST_UPDT_DT DATETIME
        , CG_FEDPT_IND VARCHAR(1)
        , CG_OLD_PRPSL_NBR VARCHAR(8)
        , CGAWD_DRCT_CST_AMT DECIMAL(19,2)
        , CGAWD_INDR_CST_AMT DECIMAL(19,2)
        , CG_FED_FNDED_AMT DECIMAL(19,2)
        , CGAWD_CREATE_TS DATETIME
        , CGAWD_CLOSING_DT DATETIME
        , CGPRPSL_AWD_TYP_CD VARCHAR(1)
        , CGAWD_STAT_CD VARCHAR(2)
        , CG_LTRCR_FNDGRP_CD VARCHAR(4)
        , CG_GRANT_DESC_CD VARCHAR(3)
        , CG_AGENCY_NBR VARCHAR(5)
        , CG_FEDPT_AGNCY_NBR VARCHAR(5)
        , CG_AGNCY_ANALST_NM VARCHAR(123)
        , CG_ANALYST_PHN_NBR VARCHAR(10)
        , CGAWD_PROJ_TTL VARCHAR(250)
        , CGAWD_COMMENT_TXT VARCHAR(250)
        , CGAWD_PURPOSE_CD VARCHAR(1)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_AWD_TP1 PRIMARY KEY(CGPRPSL_NBR)

    , CONSTRAINT CG_AWD_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_TI2 (CG_AGENCY_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_TI3 (CGAWD_STAT_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_TI4 (CG_FEDPT_AGNCY_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_TI5 (CG_GRANT_DESC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_TI6 (CG_LTRCR_FNDGRP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_TI7 (CGPRPSL_AWD_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX CG_AWD_TI8 (CGAWD_PURPOSE_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_GRANT_DESC_T
# -----------------------------------------------------------------------
drop table if exists CG_GRANT_DESC_T
/

CREATE TABLE CG_GRANT_DESC_T
(
      CG_GRANT_DESC_CD VARCHAR(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CG_GRANT_DESC VARCHAR(25)
        , CG_GRNT_DESC_ACTV_CD VARCHAR(1)
    
    , CONSTRAINT CG_GRANT_DESC_TP1 PRIMARY KEY(CG_GRANT_DESC_CD)

    , CONSTRAINT CG_GRANT_DESC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_LTRCR_FNDGRP_T
# -----------------------------------------------------------------------
drop table if exists CG_LTRCR_FNDGRP_T
/

CREATE TABLE CG_LTRCR_FNDGRP_T
(
      CG_LTRCR_FNDGRP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , LTRCR_FNDGRP_DESC VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_LTRCR_FNDGRP_TP1 PRIMARY KEY(CG_LTRCR_FNDGRP_CD)

    , CONSTRAINT CG_LTRCR_FNDGRP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_AWD_TYP_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_AWD_TYP_T
/

CREATE TABLE CG_PRPSL_AWD_TYP_T
(
      CGPRPSL_AWD_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PRPSL_AWD_TYP_DESC VARCHAR(20)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_PRPSL_AWD_TYP_TP1 PRIMARY KEY(CGPRPSL_AWD_TYP_CD)

    , CONSTRAINT CG_PRPSL_AWD_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_CLOSE_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_CLOSE_T
/

CREATE TABLE CG_PRPSL_CLOSE_T
(
      CG_PRPSL_CLOSE_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CG_LAST_CLOSED_DT DATETIME
        , CGAWD_CLOSED_CNT DECIMAL(12)
        , CGPRPSL_CLOSED_CNT DECIMAL(12)
        , PERSON_USER_ID VARCHAR(40)
        , CG_USR_INITIATE_DT DATETIME
    
    , CONSTRAINT CG_PRPSL_CLOSE_TP1 PRIMARY KEY(CG_PRPSL_CLOSE_NBR)

    , CONSTRAINT CG_PRPSL_CLOSE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_ORG_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_ORG_T
/

CREATE TABLE CG_PRPSL_ORG_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , CGPRPSL_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CGPRPSL_PRMORG_IND VARCHAR(1)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_PRPSL_ORG_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD,CGPRPSL_NBR)

    , CONSTRAINT CG_PRPSL_ORG_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                
                                    
, INDEX CG_PRPSL_ORG_TI2 (CGPRPSL_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_PRJDR_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_PRJDR_T
/

CREATE TABLE CG_PRPSL_PRJDR_T
(
      PERSON_UNVL_ID VARCHAR(40)
        , CGPRPSL_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PRPSL_PRMPRJDR_IND VARCHAR(1)
        , PRPSL_PRJDRPRJ_TTL VARCHAR(100)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_PRPSL_PRJDR_TP1 PRIMARY KEY(PERSON_UNVL_ID,CGPRPSL_NBR)

    , CONSTRAINT CG_PRPSL_PRJDR_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                
                                    
, INDEX CG_PRPSL_PRJDR_TI2 (CGPRPSL_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_PURPOSE_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_PURPOSE_T
/

CREATE TABLE CG_PRPSL_PURPOSE_T
(
      CGPRPSL_PURPOSE_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PRPSL_PURPOSE_DESC VARCHAR(26)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_PRPSL_PURPOSE_TP1 PRIMARY KEY(CGPRPSL_PURPOSE_CD)

    , CONSTRAINT CG_PRPSL_PURPOSE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_RSRCH_RSK_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_RSRCH_RSK_T
/

CREATE TABLE CG_PRPSL_RSRCH_RSK_T
(
      CGPRPSL_NBR DECIMAL(12)
        , RSRCH_RSK_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , RSRCH_RSK_TYP_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_PRPSL_RSRCH_RSK_TP1 PRIMARY KEY(CGPRPSL_NBR,RSRCH_RSK_TYP_CD)

    , CONSTRAINT CG_PRPSL_RSRCH_RSK_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_STAT_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_STAT_T
/

CREATE TABLE CG_PRPSL_STAT_T
(
      CGPRPSL_STAT_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CGPRPSL_STAT_DESC VARCHAR(15)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_PRPSL_STAT_TP1 PRIMARY KEY(CGPRPSL_STAT_CD)

    , CONSTRAINT CG_PRPSL_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_SUBCN_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_SUBCN_T
/

CREATE TABLE CG_PRPSL_SUBCN_T
(
      CGPRPSL_SUBCN_NBR VARCHAR(2)
        , CGPRPSL_NBR DECIMAL(12)
        , CG_SUBCNR_NBR VARCHAR(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CGPRPSL_SUBCN_AMT DECIMAL(19,2)
        , CGPRPSL_SUBCN_DESC VARCHAR(30)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_PRPSL_SUBCN_TP1 PRIMARY KEY(CGPRPSL_SUBCN_NBR,CGPRPSL_NBR,CG_SUBCNR_NBR)

    , CONSTRAINT CG_PRPSL_SUBCN_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                    
                                    
, INDEX CG_PRPSL_SUBCN_TI2 (CGPRPSL_NBR )
    
                                                                                                                                                                                                                                                        
                                    
, INDEX CG_PRPSL_SUBCN_TI3 (CG_SUBCNR_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_PRPSL_T
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_T
/

CREATE TABLE CG_PRPSL_T
(
      CGPRPSL_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CGPRPSL_BEG_DT DATETIME
        , CGPRPSL_END_DT DATETIME
        , CGPRPSL_TOT_AMT DECIMAL(19,2)
        , CGPRPSL_DRCTCS_AMT DECIMAL(19,2)
        , CGPRPSL_INDRCS_AMT DECIMAL(19,2)
        , CGPRPSL_REJECTD_DT DATETIME
        , CGPRPSL_LSTUPDT_DT DATETIME
        , CGPRPSL_DUE_DT DATETIME
        , CGPRPSL_TOTPRJ_AMT DECIMAL(19,2)
        , CGPRPSL_SUBMSSN_DT DATETIME
        , CGPRPSL_FEDPT_IND VARCHAR(1)
        , CG_OLD_PRPSL_NBR VARCHAR(8)
        , CG_GRANT_NBR VARCHAR(27)
        , CGPRPSL_CLOSING_DT DATETIME
        , CGPRPSL_AWD_TYP_CD VARCHAR(1)
        , CG_AGENCY_NBR VARCHAR(5)
        , CGPRPSL_STAT_CD VARCHAR(2)
        , CG_FEDPT_AGNCY_NBR VARCHAR(5)
        , CG_CFDA_NBR VARCHAR(6)
        , CGPRPSL_FELLOW_NM VARCHAR(123)
        , CGPRPSL_PURPOSE_CD VARCHAR(1)
        , CGPRPSL_PROJ_TTL VARCHAR(250)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_PRPSL_TP1 PRIMARY KEY(CGPRPSL_NBR)

    , CONSTRAINT CG_PRPSL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CG_PRPSL_TI2 (CG_AGENCY_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CG_PRPSL_TI3 (CGPRPSL_AWD_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CG_PRPSL_TI4 (CGPRPSL_PURPOSE_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CG_PRPSL_TI5 (CGPRPSL_STAT_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CG_PRPSL_TI6 (CG_FEDPT_AGNCY_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CG_SUBCNR_T
# -----------------------------------------------------------------------
drop table if exists CG_SUBCNR_T
/

CREATE TABLE CG_SUBCNR_T
(
      CG_SUBCNR_NBR VARCHAR(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CG_SUBCNR_NM VARCHAR(123)
        , CG_SUBCNR_LN1_ADDR VARCHAR(25)
        , CG_SUBCNR_LN2_ADDR VARCHAR(20)
        , CG_SUBCNR_CITY_NM VARCHAR(20)
        , CG_SUBCNR_ST_CD VARCHAR(2)
        , CG_SUBCNR_ZIP_CD VARCHAR(20)
        , CGSUBCNR_CNTRY_CD VARCHAR(2)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CG_SUBCNR_TP1 PRIMARY KEY(CG_SUBCNR_NBR)

    , CONSTRAINT CG_SUBCNR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_ACQ_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CM_ACQ_TYPE_T
/

CREATE TABLE CM_ACQ_TYPE_T
(
      CPTLAST_ACQ_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_ACQ_TYP_NM VARCHAR(40)
        , CPTLAST_INC_OBJ_CD VARCHAR(4)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CM_ACQ_TYPE_TP1 PRIMARY KEY(CPTLAST_ACQ_TYP_CD)

    , CONSTRAINT CM_ACQ_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_ASSET_TYPE_T
# -----------------------------------------------------------------------
drop table if exists CM_ASSET_TYPE_T
/

CREATE TABLE CM_ASSET_TYPE_T
(
      CPTLAST_TYP_CD VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_TYP_DESC VARCHAR(70)
        , CPTLAST_DEPRLF_LMT DECIMAL(5)
        , CPTLAST_MOVING_CD VARCHAR(1)
        , CPTLAST_RQDBLDG_CD VARCHAR(1)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CM_ASSET_TYPE_TP1 PRIMARY KEY(CPTLAST_TYP_CD)

    , CONSTRAINT CM_ASSET_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_COMPONENT_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_COMPONENT_T
/

CREATE TABLE CM_AST_COMPONENT_T
(
      CPTLAST_NBR DECIMAL(12)
        , CACMP_NBR DECIMAL(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CACMP_DESC VARCHAR(255)
        , CACMP_CNTCTPHN_NBR VARCHAR(10)
        , CACMP_COND_CD VARCHAR(1)
        , CACMP_EST_LFTM_LMT DECIMAL(5)
        , CACMP_MFR_NM VARCHAR(45)
        , CACMP_MFR_MDL_NBR VARCHAR(25)
        , CACMP_SERIAL_NBR VARCHAR(25)
        , CACMP_ORG_TAG_NBR VARCHAR(8)
        , CACMP_ORG_TXT VARCHAR(255)
        , CACMP_REPLACE_AMT DECIMAL(19,2)
        , CACMP_VENDOR_NM VARCHAR(45)
        , CACMP_WRNTY_NBR VARCHAR(25)
        , CACMP_WRNTYPHN_NBR VARCHAR(13)
        , CACMP_WRNTYCNTC_NM VARCHAR(123)
        , CACMP_WRNTY_PO_NBR VARCHAR(9)
        , CACMP_WRNTY_BEG_DT DATETIME
        , CACMP_WRNTY_END_DT DATETIME
        , CACMP_WRNTY_TXT VARCHAR(40)
        , CPTL_AST_GOV_TAG_NBR VARCHAR(12)
        , CPTL_AST_NTL_STOCK_NBR VARCHAR(25)
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT CM_AST_COMPONENT_TP1 PRIMARY KEY(CPTLAST_NBR,CACMP_NBR)

    , CONSTRAINT CM_AST_COMPONENT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX CM_AST_COMPONENT_TI2 (CACMP_COND_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_CONDITION_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_CONDITION_T
/

CREATE TABLE CM_AST_CONDITION_T
(
      CPTLAST_COND_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_COND_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CM_AST_CONDITION_TP1 PRIMARY KEY(CPTLAST_COND_CD)

    , CONSTRAINT CM_AST_CONDITION_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_DEPR_CNVNTN_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_DEPR_CNVNTN_T
/

CREATE TABLE CM_AST_DEPR_CNVNTN_T
(
      FIN_OBJ_SUB_TYPE_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTL_AST_DEPR_CNVNTN_CD VARCHAR(2)
        , ACTV_IND VARCHAR(1)
    
    , CONSTRAINT CM_AST_DEPR_CNVNTN_TP1 PRIMARY KEY(FIN_OBJ_SUB_TYPE_CD)

    , CONSTRAINT CM_AST_DEPR_CNVNTN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_DEPR_MTHD_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_DEPR_MTHD_T
/

CREATE TABLE CM_AST_DEPR_MTHD_T
(
      AST_DEPR_METHOD_CD VARCHAR(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AST_DEPR_METHOD_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CM_AST_DEPR_MTHD_TP1 PRIMARY KEY(AST_DEPR_METHOD_CD)

    , CONSTRAINT CM_AST_DEPR_MTHD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_LOC_DOC_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_LOC_DOC_T
/

CREATE TABLE CM_AST_LOC_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT CM_AST_LOC_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CM_AST_LOC_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_LOC_DTL_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_LOC_DTL_T
/

CREATE TABLE CM_AST_LOC_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , CPTLAST_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , BLDG_SUB_ROOM_NBR VARCHAR(2)
        , CPTLAST_TAG_NBR VARCHAR(8)
    
    , CONSTRAINT CM_AST_LOC_DTL_TP1 PRIMARY KEY(FDOC_NBR,CPTLAST_NBR)

    , CONSTRAINT CM_AST_LOC_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_LOC_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_LOC_T
/

CREATE TABLE CM_AST_LOC_T
(
      CPTLAST_NBR DECIMAL(12)
        , AST_LOC_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AST_LOC_CNTCT_NM VARCHAR(123)
        , AST_LOC_CNTCT_ID VARCHAR(40)
        , AST_LOC_INST_NM VARCHAR(50)
        , AST_LOC_PHN_NBR VARCHAR(13)
        , AST_LOC_STRT_ADDR VARCHAR(50)
        , AST_LOC_CITY_NM VARCHAR(50)
        , AST_LOC_STATE_CD VARCHAR(2)
        , AST_LOC_CNTRY_CD VARCHAR(2)
        , AST_LOC_ZIP_CD VARCHAR(20)
    
    , CONSTRAINT CM_AST_LOC_TP1 PRIMARY KEY(CPTLAST_NBR,AST_LOC_TYP_CD)

    , CONSTRAINT CM_AST_LOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_LOC_TYP_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_LOC_TYP_T
/

CREATE TABLE CM_AST_LOC_TYP_T
(
      CPTLAST_LOC_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_LOC_TYP_NM VARCHAR(30)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CM_AST_LOC_TYP_TP1 PRIMARY KEY(CPTLAST_LOC_TYP_CD)

    , CONSTRAINT CM_AST_LOC_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_ORG_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_ORG_T
/

CREATE TABLE CM_AST_ORG_T
(
      CPTLAST_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_CPTLAST_TYP_ID VARCHAR(20)
        , CPTLAST_ORGTAG_NBR VARCHAR(8)
        , ORG_TXT VARCHAR(255)
    
    , CONSTRAINT CM_AST_ORG_TP1 PRIMARY KEY(CPTLAST_NBR)

    , CONSTRAINT CM_AST_ORG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_PAYMENT_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_PAYMENT_T
/

CREATE TABLE CM_AST_PAYMENT_T
(
      CPTLAST_NBR DECIMAL(12)
        , AST_PMT_SEQ_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FS_ORIGIN_CD VARCHAR(2)
        , FDOC_TYP_CD VARCHAR(8)
        , FDOC_NBR VARCHAR(14)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , FDOC_POST_DT DATETIME
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ACCT_CHARGE_AMT DECIMAL(19,2)
        , PO_NUMBER VARCHAR(9)
        , REQUISITION_NBR VARCHAR(8)
        , AST_DEPR1_BASE_AMT DECIMAL(19,2)
        , AST_ACUM_DEPR1_AMT DECIMAL(19,2)
        , AST_PRVYRDEPR1_AMT DECIMAL(19,2)
        , AST_PRD1_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD2_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD3_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD4_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD5_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD6_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD7_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD8_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD9_DEPR1_AMT DECIMAL(19,2)
        , AST_PRD10DEPR1_AMT DECIMAL(19,2)
        , AST_PRD11DEPR1_AMT DECIMAL(19,2)
        , AST_PRD12DEPR1_AMT DECIMAL(19,2)
        , AST_TRNFR_PMT_CD VARCHAR(1)
    
    , CONSTRAINT CM_AST_PAYMENT_TP1 PRIMARY KEY(CPTLAST_NBR,AST_PMT_SEQ_NBR)

    , CONSTRAINT CM_AST_PAYMENT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CM_AST_PAYMENT_TI2 (PO_NUMBER )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_PMT_AST_DTL_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_PMT_AST_DTL_T
/

CREATE TABLE CM_AST_PMT_AST_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , CPTLAST_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_PREV_TOT_CST_AMT DECIMAL(19,2)
        , CPTLAST_ALLOC_AMT DECIMAL(19,2) default 0 NOT NULL
        , CPTLAST_ALLOC_VAL DECIMAL(19,2) NOT NULL
        , CPTLAST_ALLOC_VAL_PCT DECIMAL(19,6)
    
    , CONSTRAINT CM_AST_PMT_AST_DTL_TP1 PRIMARY KEY(FDOC_NBR,CPTLAST_NBR)

    , CONSTRAINT CM_AST_PMT_AST_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_PMT_DOC_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_PMT_DOC_T
/

CREATE TABLE CM_AST_PMT_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , NXT_AST_PMT_LN_NBR DECIMAL(7)
        , CB_ORIGIN_IND VARCHAR(1)
        , AST_PMT_DST_CD VARCHAR(2) default '2' NOT NULL
        , AST_PMT_DIST_CD_FROM_FP_IND VARCHAR(1)
    
    , CONSTRAINT CM_AST_PMT_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CM_AST_PMT_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_PMT_DOC_TYP_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_PMT_DOC_TYP_T
/

CREATE TABLE CM_AST_PMT_DOC_TYP_T
(
      DOC_TYP_ID DECIMAL(7)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , DOC_TYP_NM VARCHAR(8)
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT CM_AST_PMT_DOC_TYP_TP1 PRIMARY KEY(DOC_TYP_ID)

    , CONSTRAINT CM_AST_PMT_DOC_TYP_T_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_PMT_DST_CD_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_PMT_DST_CD_T
/

CREATE TABLE CM_AST_PMT_DST_CD_T
(
      AST_PMT_DST_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , AST_PMT_DST_NM VARCHAR(40) NOT NULL
        , AST_PMT_DST_COL_NM VARCHAR(40) NOT NULL
        , AST_PMT_DST_EDT VARCHAR(1) NOT NULL
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CM_AST_PMT_DST_CD_TP1 PRIMARY KEY(AST_PMT_DST_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_PMT_DTL_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_PMT_DTL_T
/

CREATE TABLE CM_AST_PMT_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ACCT_CHARGE_AMT DECIMAL(19,2)
        , EXPND_FS_ORIGIN_CD VARCHAR(2)
        , EXPND_FDOC_NBR VARCHAR(14)
        , EXPND_FDOC_TYP_CD VARCHAR(8)
        , EXPND_FDOC_POST_DT DATETIME
        , PO_NUMBER VARCHAR(9)
        , REQUISITION_NBR VARCHAR(8)
        , FDOC_OVERRIDE_CD VARCHAR(100)
        , AST_TRNFR_PMT_CD VARCHAR(1)
    
    , CONSTRAINT CM_AST_PMT_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR)

    , CONSTRAINT CM_AST_PMT_DTL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CM_AST_PMT_DTL_TI2 (FIN_COA_CD , ACCOUNT_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX CM_AST_PMT_DTL_TI3 (FDOC_POST_YR , FIN_COA_CD , FIN_OBJECT_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_RETIRE_DOC_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_RETIRE_DOC_T
/

CREATE TABLE CM_AST_RETIRE_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , MERGED_TGT_CPTLAST_NBR DECIMAL(12)
        , AST_RETIRE_REAS_CD VARCHAR(1)
        , CPTLAST_RETIRE_DT DATETIME
        , MERGED_TGT_CPTLAST_DESC VARCHAR(4000)
        , AST_RETIR_COA_CD VARCHAR(2)
        , AST_RETIR_ACCT_NBR VARCHAR(7)
        , AST_RETIR_CNTCT_NM VARCHAR(123)
        , AST_RETIR_INST_NM VARCHAR(50)
        , AST_RETIRSTRT_ADDR VARCHAR(50)
        , AST_RETIR_CITY_NM VARCHAR(50)
        , AST_RETIR_STATE_CD VARCHAR(2)
        , AST_RETIR_ZIP_CD VARCHAR(20)
        , AST_RETIR_CNTRY_CD VARCHAR(2)
        , AST_RETIR_PHN_NBR VARCHAR(13)
        , AST_EST_SELL_PRC DECIMAL(19,2)
        , CPTLAST_SALE_PRC DECIMAL(19,2)
        , CASH_RCPT_FDOC_NBR VARCHAR(14)
        , AST_HANDLG_FEE_AMT DECIMAL(19,2)
        , AST_PRVNTMAINT_AMT DECIMAL(19,2)
        , CPTLAST_BUYER_DESC VARCHAR(25)
        , AST_PD_CASE_NBR VARCHAR(14)
    
    , CONSTRAINT CM_AST_RETIRE_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CM_AST_RETIRE_DOC_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CM_AST_RETIRE_DOC_TI2 (AST_RETIRE_REAS_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_RETIRE_DTL_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_RETIRE_DTL_T
/

CREATE TABLE CM_AST_RETIRE_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , CPTLAST_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT CM_AST_RETIRE_DTL_TP1 PRIMARY KEY(FDOC_NBR,CPTLAST_NBR)

    , CONSTRAINT CM_AST_RETIRE_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_RPR_HIST_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_RPR_HIST_T
/

CREATE TABLE CM_AST_RPR_HIST_T
(
      CPTLAST_NBR DECIMAL(12)
        , CPTLAST_INCIDNT_DT DATETIME
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_PRBLM_DESC VARCHAR(255)
        , CPTLAST_RPRCNTC_NM VARCHAR(123)
        , CPTLAST_RPR_NT_TXT VARCHAR(255)
        , CPTLAST_EST_RPR_DT DATETIME
        , CPTLAST_RPR_DT DATETIME
        , CPTLAST_RPR_AMT DECIMAL(19,2)
        , AST_RPR_SOLN_DESC VARCHAR(255)
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT CM_AST_RPR_HIST_TP1 PRIMARY KEY(CPTLAST_NBR,CPTLAST_INCIDNT_DT)

    , CONSTRAINT CM_AST_RPR_HIST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_STATUS_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_STATUS_T
/

CREATE TABLE CM_AST_STATUS_T
(
      AST_INVN_STAT_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AST_INVN_STAT_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT CM_AST_STATUS_TP1 PRIMARY KEY(AST_INVN_STAT_CD)

    , CONSTRAINT CM_AST_STATUS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_TRNFR_DOC_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_TRNFR_DOC_T
/

CREATE TABLE CM_AST_TRNFR_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AST_REP_UNVL_ID VARCHAR(40)
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , BLDG_SUB_ROOM_NBR VARCHAR(2)
        , CPTLAST_ORGTAG_NBR VARCHAR(8)
        , ORG_OWNER_COA_CD VARCHAR(2)
        , ORG_OWNER_ACCT_NBR VARCHAR(7)
        , ORG_TXT VARCHAR(255)
        , ORG_INVN_NM VARCHAR(40)
        , TRNFR_FND_FDOC_NBR VARCHAR(14)
        , AST_OFFCMP_ADDR VARCHAR(45)
        , AST_OFFCMP_CITY_NM VARCHAR(25)
        , AST_OFFCMP_ST_CD VARCHAR(2)
        , AST_OFFCMP_ZIP_CD VARCHAR(20)
        , AST_INTRDPTSALE_CD CHAR(1)
        , CPTLAST_NBR DECIMAL(12)
        , OLD_ORG_OWNER_COA_CD VARCHAR(2)
        , OLD_ORG_OWNER_ACCT_NBR VARCHAR(7)
        , AST_OFFCMP_NM VARCHAR(123)
        , AST_OFFCMP_CNTRY_CD VARCHAR(2)
    
    , CONSTRAINT CM_AST_TRNFR_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CM_AST_TRNFR_DOC_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CM_AST_TRNFR_DOC_TI2 (AST_REP_UNVL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_AST_WRNTY_T
# -----------------------------------------------------------------------
drop table if exists CM_AST_WRNTY_T
/

CREATE TABLE CM_AST_WRNTY_T
(
      CPTLAST_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AST_WRNTY_CNTCT_NM VARCHAR(123)
        , AST_WRNTYPHN_NBR VARCHAR(13)
        , AST_WRNTY_BEG_DT DATETIME
        , AST_WRNTY_END_DT DATETIME
        , AST_WRNTY_NBR VARCHAR(25)
        , AST_WRNTY_PO_NBR VARCHAR(9)
        , AST_WRNTY_TXT VARCHAR(40)
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT CM_AST_WRNTY_TP1 PRIMARY KEY(CPTLAST_NBR)

    , CONSTRAINT CM_AST_WRNTY_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_CPTLAST_DOC_T
# -----------------------------------------------------------------------
drop table if exists CM_CPTLAST_DOC_T
/

CREATE TABLE CM_CPTLAST_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_LINE_NBR DECIMAL(7)
        , CPTLAST_ACQ_TYP_CD VARCHAR(1)
        , CPTLAST_DESC VARCHAR(4000)
        , AST_INVN_STAT_CD VARCHAR(1)
        , CPTLAST_COND_CD VARCHAR(1)
        , CPTLAST_TYP_CD VARCHAR(7)
        , CPTLAST_MFR_NM VARCHAR(45)
        , CPTLAST_MFRMDL_NBR VARCHAR(25)
        , CPTLAST_TOTCST_AMT DECIMAL(19,2)
        , CPTL_AST_LAND_CNTY_NM VARCHAR(20)
        , CPTL_AST_LAND_ACRG_SZ DECIMAL(7)
        , CPTL_AST_LAND_PRCL_NBR VARCHAR(30)
        , CPTLAST_VENDOR_NM VARCHAR(45)
        , ORG_TXT VARCHAR(255)
        , CPTLAST_CRT_DT DATETIME
        , CPTL_AST_IN_SRVC_DT DATETIME
        , CPTL_AST_DEPR_DT DATETIME
        , AST_REP_UNVL_ID VARCHAR(40)
        , ORG_OWNER_COA_CD VARCHAR(2)
        , ORG_OWNER_ACCT_NBR VARCHAR(7)
        , CG_AGENCY_NBR VARCHAR(5)
        , FDOC_TYP_CD VARCHAR(8)
        , SEP_SRC_CPTLAST_NBR DECIMAL(12)
        , SEP_SRC_AST_PMT_SEQ_NBR DECIMAL(12)
        , CB_ORIGIN_IND VARCHAR(1)
    
    , CONSTRAINT CM_CPTLAST_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CM_CPTLAST_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_CPTLAST_DTL_T
# -----------------------------------------------------------------------
drop table if exists CM_CPTLAST_DTL_T
/

CREATE TABLE CM_CPTLAST_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , CPTLAST_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , CPTLAST_SERIAL_NBR VARCHAR(25)
        , BLDG_ROOM_NBR VARCHAR(8)
        , BLDG_SUB_ROOM_NBR VARCHAR(2)
        , CPTLAST_TAG_NBR VARCHAR(8)
        , ORG_INVN_NM VARCHAR(40)
        , ORG_CPTLAST_TYP_ID VARCHAR(20)
        , AST_OFFCMP_NM VARCHAR(123)
        , AST_OFFCMP_ADDR VARCHAR(45)
        , AST_OFFCMP_CITY_NM VARCHAR(45)
        , AST_OFFCMP_ST_CD VARCHAR(2)
        , AST_OFFCMP_ZIP_CD VARCHAR(20)
        , AST_OFFCMP_CNTRY_CD VARCHAR(2)
        , CPTL_AST_GOV_TAG_NBR VARCHAR(12)
        , CPTL_AST_NTL_STOCK_NBR VARCHAR(25)
        , AST_REP_UNVL_ID VARCHAR(40)
        , CPTLAST_TYP_CD VARCHAR(7)
        , CPTLAST_DESC VARCHAR(4000)
        , CPTLAST_MFR_NM VARCHAR(45)
        , ORG_TXT VARCHAR(255)
        , CPTLAST_MFRMDL_NBR VARCHAR(25)
        , SEP_SRC_AMT DECIMAL(19,2)
    
    , CONSTRAINT CM_CPTLAST_DTL_TP1 PRIMARY KEY(FDOC_NBR,CPTLAST_NBR)

    , CONSTRAINT CM_CPTLAST_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_CPTLAST_LOCK_T
# -----------------------------------------------------------------------
drop table if exists CM_CPTLAST_LOCK_T
/

CREATE TABLE CM_CPTLAST_LOCK_T
(
      DOC_HDR_ID VARCHAR(14)
        , CPTLAST_NBR DECIMAL(12)
        , LOCK_INFO_TXT VARCHAR(20)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOC_TYP_NM VARCHAR(10)
    
    , CONSTRAINT CM_CPTLAST_LOCK_TP1 PRIMARY KEY(DOC_HDR_ID,CPTLAST_NBR,LOCK_INFO_TXT)

    , CONSTRAINT CM_CPTLAST_LOCK_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_CPTLAST_OBJ_T
# -----------------------------------------------------------------------
drop table if exists CM_CPTLAST_OBJ_T
/

CREATE TABLE CM_CPTLAST_OBJ_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , FIN_OBJ_SUB_TYPE_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLZTN_FOBJ_CD VARCHAR(4)
        , ACCUM_DEPR_FOBJ_CD VARCHAR(4)
        , DEPR_EXP_FOBJ_CD VARCHAR(4)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CM_CPTLAST_OBJ_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,FIN_OBJ_SUB_TYPE_CD)

    , CONSTRAINT CM_CPTLAST_OBJ_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                        
                                    
                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CM_CPTLAST_OBJ_TI2 (UNIV_FISCAL_YR , FIN_COA_CD , CPTLZTN_FOBJ_CD )
    
                                                                                                                                                                                                                                        
                                    
                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CM_CPTLAST_OBJ_TI3 (UNIV_FISCAL_YR , FIN_COA_CD , ACCUM_DEPR_FOBJ_CD )
    
                                                                                                                                                                                                                                        
                                    
                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                            
                                    
, INDEX CM_CPTLAST_OBJ_TI4 (UNIV_FISCAL_YR , FIN_COA_CD , DEPR_EXP_FOBJ_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_CPTLAST_T
# -----------------------------------------------------------------------
drop table if exists CM_CPTLAST_T
/

CREATE TABLE CM_CPTLAST_T
(
      CPTLAST_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_DESC VARCHAR(4000)
        , CPTLAST_TYP_CD VARCHAR(7)
        , CPTLAST_COND_CD VARCHAR(1)
        , CPTLAST_CRT_DT DATETIME
        , CPTLAST_RECEIVE_DT DATETIME
        , CPTLAST_LN_RTRN_DT DATETIME
        , CPTLAST_LOAN_DT DATETIME
        , AST_EXPCTRETURN_DT DATETIME
        , FDOC_POST_PRD_CD VARCHAR(2)
        , FDOC_POST_YR DECIMAL(4)
        , ORG_OWNER_ACCT_NBR VARCHAR(7)
        , ORG_OWNER_COA_CD VARCHAR(2)
        , CPTLAST_VENDOR_NM VARCHAR(45)
        , CPTLAST_ACQ_TYP_CD VARCHAR(1)
        , CPTLAST_TOTCST_AMT DECIMAL(19,2)
        , CPTLAST_RPLC_AMT DECIMAL(19,2)
        , CPTLAST_SALE_PRC DECIMAL(19,2)
        , AST_EST_SELL_PRC DECIMAL(19,2)
        , CPTLAST_SALVAG_AMT DECIMAL(19,2)
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , BLDG_SUB_ROOM_NBR VARCHAR(2)
        , AST_RETIR_COA_CD VARCHAR(2)
        , AST_RETIR_ACCT_NBR VARCHAR(7)
        , AST_RETIRE_REAS_CD VARCHAR(1)
        , AST_RETIR_PRD_CD VARCHAR(2)
        , AST_RETIR_FSCL_YR DECIMAL(4)
        , CASH_RCPT_FDOC_NBR VARCHAR(14)
        , AST_DEPR_MTHD1_CD VARCHAR(3)
        , AST_ESTFABRCMPL_DT DATETIME
        , AST_FABRESTTOT_AMT DECIMAL(19,2)
        , TRNFR_FND_FDOC_NBR VARCHAR(14)
        , AST_INVN_STAT_CD VARCHAR(1)
        , CPTLAST_TAG_NBR VARCHAR(8)
        , CPTLAST_LSTINVN_DT DATETIME
        , ORG_INVN_NM VARCHAR(40)
        , CPTLAST_OLDTAG_NBR VARCHAR(8)
        , CPTLAST_MFR_NM VARCHAR(45)
        , CPTLAST_MFRMDL_NBR VARCHAR(25)
        , CPTLAST_SERIAL_NBR VARCHAR(25)
        , AST_REP_UNVL_ID VARCHAR(40)
        , CG_AGENCY_NBR VARCHAR(5)
        , AST_PD_CASE_NBR VARCHAR(14)
        , AST_INVN_SCAN_CD VARCHAR(1)
        , CPTL_AST_IN_SRVC_DT DATETIME
        , CPTL_AST_GOV_TAG_NBR VARCHAR(12)
        , CPTL_AST_NTL_STOCK_NBR VARCHAR(25)
        , CPTL_AST_LAND_CNTY_NM VARCHAR(20)
        , CPTL_AST_LAND_ACRG_SZ DECIMAL(7)
        , CPTL_AST_LAND_PRCL_NBR VARCHAR(30)
        , CPTL_AST_DEPR_DT DATETIME
        , FIN_OBJ_SUB_TYP_CD VARCHAR(2)
        , AST_FABR_EST_RETN_YRS DECIMAL(5)
    
    , CONSTRAINT CM_CPTLAST_TP1 PRIMARY KEY(CPTLAST_NBR)

    , CONSTRAINT CM_CPTLAST_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX CM_CPTLAST_TI2 (CPTLAST_TAG_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX CM_CPTLAST_TI3 (AST_REP_UNVL_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX CM_CPTLAST_TI4 (CAMPUS_CD , BLDG_CD , BLDG_ROOM_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_EQPLNRTRN_DOC_T
# -----------------------------------------------------------------------
drop table if exists CM_EQPLNRTRN_DOC_T
/

CREATE TABLE CM_EQPLNRTRN_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_LOAN_DT DATETIME
        , AST_EXPCTRETURN_DT DATETIME
        , CPTLAST_LN_RTRN_DT DATETIME
        , AST_BORWR_UNVL_ID VARCHAR(40)
        , AST_BORWR_ADDR VARCHAR(30)
        , AST_BORWR_CITY_NM VARCHAR(25)
        , AST_BORWR_STATE_CD VARCHAR(2)
        , AST_BORWR_ZIP_CD VARCHAR(20)
        , AST_BORWR_CNTRY_CD VARCHAR(2)
        , AST_BORWR_PHN_NBR VARCHAR(13)
        , AST_BORWRSTRG_ADDR VARCHAR(30)
        , AST_BORWRSTRGCT_NM VARCHAR(25)
        , AST_BORWRSTRGST_CD VARCHAR(2)
        , AST_BORWRSTRGZP_CD VARCHAR(20)
        , AST_BORWRSTRCNT_CD VARCHAR(2)
        , AST_BORWRSTRPH_NBR VARCHAR(13)
        , CPTLAST_NBR DECIMAL(12)
    
    , CONSTRAINT CM_EQPLNRTRN_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CM_EQPLNRTRN_DOC_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX CM_EQPLNRTRN_DOC_TI2 (AST_BORWR_UNVL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_FSCL_YR_END_DEPR_DTL_T
# -----------------------------------------------------------------------
drop table if exists CM_FSCL_YR_END_DEPR_DTL_T
/

CREATE TABLE CM_FSCL_YR_END_DEPR_DTL_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , CPTLAST_NBR DECIMAL(12)
        , YEAR_END_DEPR_DTL_ACTV_IND VARCHAR(1)
        , YEAR_END_DEPR_DTL_PROC_IND VARCHAR(1)
    
    , CONSTRAINT CM_FSCL_YR_END_DEPR_DTL_TP1 PRIMARY KEY(UNIV_FISCAL_YR,CPTLAST_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_FSCL_YR_END_DEPR_HDR_T
# -----------------------------------------------------------------------
drop table if exists CM_FSCL_YR_END_DEPR_HDR_T
/

CREATE TABLE CM_FSCL_YR_END_DEPR_HDR_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , YEAR_END_DEPR_RUN_DATE DATETIME
        , YEAR_END_DEPR_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT CM_FSCL_YR_END_DEPR_HDR_TP1 PRIMARY KEY(UNIV_FISCAL_YR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_INVN_ERR_DOC_T
# -----------------------------------------------------------------------
drop table if exists CM_INVN_ERR_DOC_T
/

CREATE TABLE CM_INVN_ERR_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AST_UPLDR_UNVL_ID VARCHAR(40)
    
    , CONSTRAINT CM_INVN_ERR_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT CM_INVN_ERR_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_INVN_ERR_DTL_T
# -----------------------------------------------------------------------
drop table if exists CM_INVN_ERR_DTL_T
/

CREATE TABLE CM_INVN_ERR_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , AST_UPLD_ROW_NBR DECIMAL(12)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AST_ERRCOR_STAT_CD VARCHAR(1)
        , AST_COR_UNVL_ID VARCHAR(40)
        , AST_INVN_COR_TS DATETIME
        , CPTLAST_TAG_NBR VARCHAR(8)
        , AST_UPLD_SCAN_IND VARCHAR(1)
        , AST_UPLD_SCAN_TS DATETIME
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , BLDG_SUB_ROOM_NBR VARCHAR(2)
        , CPTLAST_COND_CD VARCHAR(1)
    
    , CONSTRAINT CM_INVN_ERR_DTL_TP1 PRIMARY KEY(FDOC_NBR,AST_UPLD_ROW_NBR)

    , CONSTRAINT CM_INVN_ERR_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CM_RETIRE_REAS_T
# -----------------------------------------------------------------------
drop table if exists CM_RETIRE_REAS_T
/

CREATE TABLE CM_RETIRE_REAS_T
(
      AST_RETIRE_REAS_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , AST_RETIRE_REAS_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
        , AST_RETIRE_REAS_RSTR_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT CM_RETIRE_REAS_TP1 PRIMARY KEY(AST_RETIRE_REAS_CD)

    , CONSTRAINT CM_RETIRE_REAS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# DATABASECHANGELOG
# -----------------------------------------------------------------------
drop table if exists DATABASECHANGELOG
/

CREATE TABLE DATABASECHANGELOG
(
      ID VARCHAR(63)
        , AUTHOR VARCHAR(63)
        , FILENAME VARCHAR(200)
        , DATEEXECUTED DATETIME NOT NULL
        , ORDEREXECUTED DECIMAL(22) NOT NULL
        , EXECTYPE VARCHAR(10) NOT NULL
        , MD5SUM VARCHAR(35)
        , DESCRIPTION VARCHAR(255)
        , COMMENTS VARCHAR(255)
        , TAG VARCHAR(255)
        , LIQUIBASE VARCHAR(20)
    
    , CONSTRAINT DATABASECHANGELOGP1 PRIMARY KEY(ID,AUTHOR,FILENAME)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# DATABASECHANGELOGLOCK
# -----------------------------------------------------------------------
drop table if exists DATABASECHANGELOGLOCK
/

CREATE TABLE DATABASECHANGELOGLOCK
(
      ID DECIMAL(22)
        , LOCKED DECIMAL(1) NOT NULL
        , LOCKGRANTED DATETIME
        , LOCKEDBY VARCHAR(255)
    
    , CONSTRAINT DATABASECHANGELOGLOCKP1 PRIMARY KEY(ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# ER_CTRL_ATTRIB_TYP_T
# -----------------------------------------------------------------------
drop table if exists ER_CTRL_ATTRIB_TYP_T
/

CREATE TABLE ER_CTRL_ATTRIB_TYP_T
(
      CTRL_ATTRIB_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , REQD_IND VARCHAR(1)
        , CTRL_ATTRIB_TYP_DESC VARCHAR(100)
    
    , CONSTRAINT ER_CTRL_ATTRIB_TYP_TP1 PRIMARY KEY(CTRL_ATTRIB_TYP_CD)

    , CONSTRAINT ER_CTRL_ATTRIB_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# ER_RSRCH_RSK_TYP_T
# -----------------------------------------------------------------------
drop table if exists ER_RSRCH_RSK_TYP_T
/

CREATE TABLE ER_RSRCH_RSK_TYP_T
(
      RSRCH_RSK_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , CTRL_ATTRIB_TYP_CD VARCHAR(1) NOT NULL
        , RSRCH_RSK_TYP_DESC VARCHAR(30)
        , RSRCH_RSK_TYP_SORT_NBR DECIMAL(2)
        , RSRCH_RSK_TYP_NTFCTN_VAL VARCHAR(8)
    
    , CONSTRAINT ER_RSRCH_RSK_TYP_TP1 PRIMARY KEY(RSRCH_RSK_TYP_CD)

    , CONSTRAINT ER_RSRCH_RSK_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_ACCT_LINES_T
# -----------------------------------------------------------------------
drop table if exists FP_ACCT_LINES_T
/

CREATE TABLE FP_ACCT_LINES_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , FDOC_LN_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FDOC_POST_YR DECIMAL(4)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FDOC_LINE_AMT DECIMAL(19,2)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_REF_TYP_CD VARCHAR(8)
        , FDOC_OVERRIDE_CD VARCHAR(100)
        , FDOC_LINE_DESC VARCHAR(40)
        , FDOC_LINE_DBCR_CD VARCHAR(1)
        , TRN_ENCUM_UPDT_CD VARCHAR(1)
    
    , CONSTRAINT FP_ACCT_LINES_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR,FDOC_LN_TYP_CD)

    , CONSTRAINT FP_ACCT_LINES_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_ACRL_VCHR_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_ACRL_VCHR_DOC_T
/

CREATE TABLE FP_ACRL_VCHR_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_LINE_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , FDOC_REVERSAL_DT DATETIME
        , FDOC_AV_TYP_CD VARCHAR(8)
    
    , CONSTRAINT FP_ACRL_VCHR_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_ACRL_VCHR_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_ADV_DPST_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_ADV_DPST_DTL_T
/

CREATE TABLE FP_ADV_DPST_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_TYP_CD VARCHAR(8)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_ADV_DPST_DT DATETIME
        , FDOC_ADPST_REF_NBR VARCHAR(10)
        , FDOC_ADV_DPST_DESC VARCHAR(40)
        , FDOC_ADV_DPST_AMT DECIMAL(19,2)
        , FDOC_BANK_CD VARCHAR(4)
    
    , CONSTRAINT FP_ADV_DPST_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_TYP_CD,FDOC_LINE_NBR)

    , CONSTRAINT FP_ADV_DPST_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_BAL_BY_CONS_MT
# -----------------------------------------------------------------------
drop table if exists FP_BAL_BY_CONS_MT
/

CREATE TABLE FP_BAL_BY_CONS_MT
(
      SESID VARCHAR(36)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , CONS_FIN_REPORT_SORT_CD VARCHAR(2)
        , FIN_CONS_OBJ_CD VARCHAR(4)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , ACCTG_CTGRY_CD VARCHAR(2)
    
    , CONSTRAINT FP_BAL_BY_CONS_MTP1 PRIMARY KEY(SESID,SUB_ACCT_NBR,FIN_REPORT_SORT_CD,CONS_FIN_REPORT_SORT_CD,FIN_CONS_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_BAL_BY_LEVEL_MT
# -----------------------------------------------------------------------
drop table if exists FP_BAL_BY_LEVEL_MT
/

CREATE TABLE FP_BAL_BY_LEVEL_MT
(
      SESID VARCHAR(36)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJ_LEVEL_CD VARCHAR(4)
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , TYP_FIN_REPORT_SORT_CD VARCHAR(2)
        , ACCTG_CTGRY_CD VARCHAR(2)
    
    , CONSTRAINT FP_BAL_BY_LEVEL_MTP1 PRIMARY KEY(SESID,SUB_ACCT_NBR,FIN_OBJ_LEVEL_CD,FIN_REPORT_SORT_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_BAL_BY_OBJ_MT
# -----------------------------------------------------------------------
drop table if exists FP_BAL_BY_OBJ_MT
/

CREATE TABLE FP_BAL_BY_OBJ_MT
(
      SESID VARCHAR(36)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , ACCTG_CTGRY_CD VARCHAR(2)
    
    , CONSTRAINT FP_BAL_BY_OBJ_MTP1 PRIMARY KEY(SESID,SUB_ACCT_NBR,FIN_OBJECT_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_BANK_T
# -----------------------------------------------------------------------
drop table if exists FP_BANK_T
/

CREATE TABLE FP_BANK_T
(
      BNK_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BNK_NM VARCHAR(40)
        , BNK_SHRT_NM VARCHAR(12)
        , BNK_RTNG_NBR VARCHAR(9)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
        , BNK_ACCT_NBR VARCHAR(255) default '3JQZbNFD6os=' NOT NULL
        , BNK_ACCT_DESC VARCHAR(40)
        , CSH_OFST_FIN_COA_CD VARCHAR(2)
        , CSH_OFST_ACCT_NBR VARCHAR(7)
        , CSH_OFST_SUB_ACCT_NBR VARCHAR(5)
        , CSH_OFST_OBJ_CD VARCHAR(4)
        , CSH_OFST_SUB_OBJ_CD VARCHAR(3)
        , CONT_BNK_CD VARCHAR(4)
        , BNK_DPST_IND VARCHAR(1) default 'Y' NOT NULL
        , BNK_DISB_IND VARCHAR(1) default 'Y' NOT NULL
        , BNK_ACH_IND VARCHAR(1) default 'Y' NOT NULL
        , BNK_CHK_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_BANK_TP1 PRIMARY KEY(BNK_CD)

    , CONSTRAINT FP_BANK_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_BDGT_ADJ_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_BDGT_ADJ_DOC_T
/

CREATE TABLE FP_BDGT_ADJ_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_FRM_NBR DECIMAL(7)
        , FDOC_NXT_TO_NBR DECIMAL(7)
        , FDOC_NXT_PSFRM_NBR DECIMAL(7)
        , FDOC_NXT_PSTO_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
    
    , CONSTRAINT FP_BDGT_ADJ_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_BDGT_ADJ_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_BDGT_ADJ_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_BDGT_ADJ_DTL_T
/

CREATE TABLE FP_BDGT_ADJ_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , FDOC_LN_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BDGT_ADJ_PRD_CD VARCHAR(2)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FDOC_POST_YR DECIMAL(4)
        , FIN_OBJECT_CD VARCHAR(4)
        , CURR_BDGT_ADJ_AMT DECIMAL(19,2)
        , BASE_BDGT_ADJ_AMT DECIMAL(19,2)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , FDOC_OVERRIDE_CD VARCHAR(100)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FDOC_LN_MO1_AMT DECIMAL(19,2)
        , FDOC_LN_MO2_AMT DECIMAL(19,2)
        , FDOC_LN_MO3_AMT DECIMAL(19,2)
        , FDOC_LN_MO4_AMT DECIMAL(19,2)
        , FDOC_LN_MO5_AMT DECIMAL(19,2)
        , FDOC_LN_MO6_AMT DECIMAL(19,2)
        , FDOC_LN_MO7_AMT DECIMAL(19,2)
        , FDOC_LN_MO8_AMT DECIMAL(19,2)
        , FDOC_LN_MO9_AMT DECIMAL(19,2)
        , FDOC_LN_MO10_AMT DECIMAL(19,2)
        , FDOC_LN_MO11_AMT DECIMAL(19,2)
        , FDOC_LN_MO12_AMT DECIMAL(19,2)
        , FRNG_BENE_IND VARCHAR(1)
    
    , CONSTRAINT FP_BDGT_ADJ_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR,FDOC_LN_TYP_CD)

    , CONSTRAINT FP_BDGT_ADJ_DTL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX FP_BDGT_ADJ_DTL_TI2 (FIN_COA_CD , ACCOUNT_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX FP_BDGT_ADJ_DTL_TI3 (FDOC_POST_YR , FIN_COA_CD , FIN_OBJECT_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CASHIER_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_CASHIER_DOC_T
/

CREATE TABLE FP_CASHIER_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DPST_FS_ORIG_CD VARCHAR(2)
        , DPST_FDOC_NBR VARCHAR(14)
        , FDOC_CHCK_AMT DECIMAL(19,2)
        , FDOC_ADV_DPST_AMT DECIMAL(19,2)
        , FDOC_REVOLVFND_AMT DECIMAL(19,2)
        , FDOC_NXT_CC_LN_NBR DECIMAL(7)
        , FDOC_CASH_AMT DECIMAL(19,2)
        , FDOC_CRDT_CARD_AMT DECIMAL(19,2)
        , FDOC_TOTL_COIN_AMT DECIMAL(19,2)
        , FDOC_CHANGEOUT_AMT DECIMAL(19,2)
        , FDOC_NXT_CK_LN_NBR DECIMAL(7)
        , FDOC_NXT_AD_LN_NBR DECIMAL(7)
        , FDOC_NXT_RF_LN_NBR DECIMAL(7)
    
    , CONSTRAINT FP_CASHIER_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_CASHIER_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CASHIER_ITM_IN_PROC_T
# -----------------------------------------------------------------------
drop table if exists FP_CASHIER_ITM_IN_PROC_T
/

CREATE TABLE FP_CASHIER_ITM_IN_PROC_T
(
      CAMPUS_CD VARCHAR(2)
        , ITM_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ITM_AMT DECIMAL(19,2)
        , ITM_RDCD_AMT DECIMAL(19,2)
        , ITM_TOT_AMT DECIMAL(19,2)
        , ITM_OPEN_DT DATETIME
        , ITM_CLOSED_DT DATETIME
        , ITM_DESC VARCHAR(200)
    
    , CONSTRAINT FP_CASHIER_ITM_IN_PROC_TP1 PRIMARY KEY(CAMPUS_CD,ITM_ID)

    , CONSTRAINT FP_CASHIER_ITM_IN_PROC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CASH_RCPT_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_CASH_RCPT_DOC_T
/

CREATE TABLE FP_CASH_RCPT_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_LINE_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , FDOC_CASH_AMT DECIMAL(19,2)
        , FDOC_TOTL_CHCK_AMT DECIMAL(19,2)
        , FDOC_TOTL_COIN_AMT DECIMAL(19,2)
        , FDOC_CHANGEOUT_AMT DECIMAL(19,2)
        , FDOC_CRDT_CARD_AMT DECIMAL(19,2)
        , FDOC_NONCASH_AMT DECIMAL(19,2)
        , FDOC_REVOLVFND_AMT DECIMAL(19,2)
        , FDOC_ADV_DPST_AMT DECIMAL(19,2)
        , FDOC_NXT_CK_LN_NBR DECIMAL(7)
        , FDC_NXTCC_CRLN_NBR DECIMAL(7)
        , FDOC_NXT_RF_LN_NBR DECIMAL(7)
        , FDOC_NXT_AD_LN_NBR DECIMAL(7)
        , CAMPUS_CD VARCHAR(2)
        , FDOC_DEPOSIT_DT DATETIME
        , FDOC_CNFRMD_CASH_AMT DECIMAL(19,2)
        , FDOC_CNFRMD_CHCK_AMT DECIMAL(19,2)
        , FDOC_CNFRMD_COIN_AMT DECIMAL(19,2)
        , FDOC_BNK_CD VARCHAR(4)
    
    , CONSTRAINT FP_CASH_RCPT_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_CASH_RCPT_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CHECK_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_CHECK_DTL_T
/

CREATE TABLE FP_CHECK_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_TYP_CD VARCHAR(8)
        , FDOC_COLUMN_TYP_CD VARCHAR(1)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_CHCK_NBR VARCHAR(10)
        , FDOC_CHCK_DT DATETIME
        , FDOC_CHCK_DESC VARCHAR(40)
        , FDOC_CHCK_AMT DECIMAL(19,2)
        , FDOC_DPST_LN_NBR DECIMAL(7)
        , CSHR_STAT_CD VARCHAR(1)
    
    , CONSTRAINT FP_CHECK_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_TYP_CD,FDOC_LINE_NBR,CSHR_STAT_CD)

    , CONSTRAINT FP_CHECK_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_COIN_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_COIN_DTL_T
/

CREATE TABLE FP_COIN_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_TYP_CD VARCHAR(8)
        , FDOC_COLUMN_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_50_CENT_AMT DECIMAL(19,2)
        , FDOC_25_CENT_AMT DECIMAL(19,2)
        , FDOC_10_CENT_AMT DECIMAL(19,2)
        , FDOC_5_CENT_AMT DECIMAL(19,2)
        , FDOC_1_CENT_AMT DECIMAL(19,2)
        , FDOC_OTHR_CENT_AMT DECIMAL(19,2)
        , FDOC_100_CENT_AMT DECIMAL(19,2)
        , CSHR_STAT_CD VARCHAR(1)
    
    , CONSTRAINT FP_COIN_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_TYP_CD,CSHR_STAT_CD)

    , CONSTRAINT FP_COIN_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CPTL_AST_ACCT_GRP_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_CPTL_AST_ACCT_GRP_DTL_T
/

CREATE TABLE FP_CPTL_AST_ACCT_GRP_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , CPTLAST_LINE_NBR DECIMAL(7) default 1
        , CPTLAST_ACCTLINE_NBR DECIMAL(7) default 1
        , FDOC_LINE_NBR DECIMAL(7) default 1
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_LN_TYP_CD VARCHAR(1)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FIN_OBJECT_CD VARCHAR(4)
        , FDOC_LINE_AMT DECIMAL(19,2) default 0.00
    
    , CONSTRAINT FP_CPTL_AST_ACCT_GRP_DTL_TP1 PRIMARY KEY(FDOC_NBR,CPTLAST_LINE_NBR,CPTLAST_ACCTLINE_NBR,FDOC_LINE_NBR)

    , CONSTRAINT FP_CPTL_AST_ACCT_GRP_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CPTL_AST_INFO_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_CPTL_AST_INFO_DTL_T
/

CREATE TABLE FP_CPTL_AST_INFO_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , ITM_LN_NBR DECIMAL(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , BLDG_SUB_ROOM_NBR VARCHAR(2)
        , CPTLAST_TAG_NBR VARCHAR(8)
        , CPTLAST_SERIAL_NBR VARCHAR(25)
        , FDOC_LINE_NBR DECIMAL(7) default 1 NOT NULL
        , FDOC_LN_TYP_CD VARCHAR(1) NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , CPTLAST_LINE_NBR DECIMAL(7) default 1
    
    , CONSTRAINT FP_CPTL_AST_INFO_DTL_TP1 PRIMARY KEY(FDOC_NBR,ITM_LN_NBR)

    , CONSTRAINT FP_CPTL_AST_INFO_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CPTL_AST_INFO_T
# -----------------------------------------------------------------------
drop table if exists FP_CPTL_AST_INFO_T
/

CREATE TABLE FP_CPTL_AST_INFO_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , CPTLAST_NBR DECIMAL(12)
        , CPTLAST_TYP_CD VARCHAR(7)
        , CPTLAST_MFR_NM VARCHAR(45)
        , CPTLAST_DESC VARCHAR(4000)
        , CPTLAST_MFRMDL_NBR VARCHAR(25)
        , CPTLAST_PROCESSED_IND CHAR(1) default 'N'
        , CPTLAST_LINE_QTY DECIMAL(7) default 0
        , CPTLAST_LINE_AMT DECIMAL(19,2) default 0.00
        , CPTLAST_ACTION_IND VARCHAR(1) default 'C' NOT NULL
        , CPTLAST_LINE_NBR DECIMAL(7) default 1 NOT NULL
        , FDOC_LINE_AMT DECIMAL(19,2) default 0.00
        , FDOC_LINE_NBR DECIMAL(7) default 1
        , FDOC_LN_TYP_CD VARCHAR(1)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FIN_OBJECT_CD VARCHAR(4)
        , CPTLAST_DST_AMT_CD VARCHAR(1) default '1'
    
    , CONSTRAINT FP_CPTL_AST_INFO_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_CPTL_AST_INFO_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CR_CARD_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_CR_CARD_DTL_T
/

CREATE TABLE FP_CR_CARD_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_TYP_CD VARCHAR(8)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_CCRD_TYP_CD VARCHAR(2)
        , FDOC_CCRD_VNDR_NBR VARCHAR(10)
        , FDOC_CCRD_DPST_DT DATETIME
        , FDOC_CCRD_DREF_NBR VARCHAR(10)
        , FDOC_CCRD_DPST_AMT DECIMAL(19,2)
    
    , CONSTRAINT FP_CR_CARD_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_TYP_CD,FDOC_LINE_NBR)

    , CONSTRAINT FP_CR_CARD_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CR_CARD_TYP_T
# -----------------------------------------------------------------------
drop table if exists FP_CR_CARD_TYP_T
/

CREATE TABLE FP_CR_CARD_TYP_T
(
      FDOC_CCRD_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_CCRD_CMPNY_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_CR_CARD_TYP_TP1 PRIMARY KEY(FDOC_CCRD_TYP_CD)

    , CONSTRAINT FP_CR_CARD_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CR_CARD_VNDR_T
# -----------------------------------------------------------------------
drop table if exists FP_CR_CARD_VNDR_T
/

CREATE TABLE FP_CR_CARD_VNDR_T
(
      FDOC_CCRD_VNDR_NBR VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_CCRD_VNDR_NM VARCHAR(40)
        , FDOC_CCRD_TYP_CD VARCHAR(2)
        , INC_FIN_COA_CD VARCHAR(2)
        , INC_ACCT_NBR VARCHAR(7)
        , INC_FIN_OBJ_CD VARCHAR(4)
        , INC_FIN_SUB_OBJ_CD VARCHAR(3)
        , INC_SUB_ACCT_NBR VARCHAR(5)
        , EXP_FIN_COA_CD VARCHAR(2)
        , EXP_ACCT_NBR VARCHAR(7)
        , EXP_FIN_OBJ_CD VARCHAR(4)
        , EXP_FIN_SUB_OBJ_CD VARCHAR(3)
        , EXP_SUB_ACCT_NBR VARCHAR(5)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_CR_CARD_VNDR_TP1 PRIMARY KEY(FDOC_CCRD_VNDR_NBR)

    , CONSTRAINT FP_CR_CARD_VNDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CSH_DRWR_T
# -----------------------------------------------------------------------
drop table if exists FP_CSH_DRWR_T
/

CREATE TABLE FP_CSH_DRWR_T
(
      CAMPUS_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_OPEN_DPST_CD VARCHAR(1)
        , CSH_DRWR_TOT_AMT DECIMAL(19,2)
        , FDOC_100_DLR_AMT DECIMAL(19,2)
        , FDOC_50_DLR_AMT DECIMAL(19,2)
        , FDOC_20_DLR_AMT DECIMAL(19,2)
        , FDOC_10_DLR_AMT DECIMAL(19,2)
        , FDOC_5_DLR_AMT DECIMAL(19,2)
        , FDOC_2_DLR_AMT DECIMAL(19,2)
        , FDOC_1_DLR_AMT DECIMAL(19,2)
        , FDOC_OTHR_DLR_AMT DECIMAL(19,2)
        , FDOC_50_CENT_AMT DECIMAL(19,2)
        , FDOC_25_CENT_AMT DECIMAL(19,2)
        , FDOC_10_CENT_AMT DECIMAL(19,2)
        , FDOC_5_CENT_AMT DECIMAL(19,2)
        , FDOC_1_CENT_AMT DECIMAL(19,2)
        , FDOC_OTHR_CENT_AMT DECIMAL(19,2)
        , FDOC_100_CENT_AMT DECIMAL(19,2)
        , FDOC_MISC_ADV_AMT DECIMAL(19,2)
        , FDOC_REF_NBR VARCHAR(14)
    
    , CONSTRAINT FP_CSH_DRWR_TP1 PRIMARY KEY(CAMPUS_CD)

    , CONSTRAINT FP_CSH_DRWR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CURRENCY_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_CURRENCY_DTL_T
/

CREATE TABLE FP_CURRENCY_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_TYP_CD VARCHAR(8)
        , FDOC_COLUMN_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_100_DLR_AMT DECIMAL(19,2)
        , FDOC_50_DLR_AMT DECIMAL(19,2)
        , FDOC_20_DLR_AMT DECIMAL(19,2)
        , FDOC_10_DLR_AMT DECIMAL(19,2)
        , FDOC_5_DLR_AMT DECIMAL(19,2)
        , FDOC_2_DLR_AMT DECIMAL(19,2)
        , FDOC_1_DLR_AMT DECIMAL(19,2)
        , FDOC_OTHR_DLR_AMT DECIMAL(19,2)
        , CSHR_STAT_CD VARCHAR(1)
    
    , CONSTRAINT FP_CURRENCY_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_TYP_CD,CSHR_STAT_CD)

    , CONSTRAINT FP_CURRENCY_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_CUST_CC_INFO_T
# -----------------------------------------------------------------------
drop table if exists FP_CUST_CC_INFO_T
/

CREATE TABLE FP_CUST_CC_INFO_T
(
      CUST_CCRD_NBR VARCHAR(16)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_CCRD_HLDR_NM VARCHAR(123)
        , CUST_CCRD_ISSR_NM VARCHAR(123)
        , FDOC_CCRD_TYPE_CD VARCHAR(2)
        , CUST_CCRD_EXP_DT DATETIME
        , CUST_NBR VARCHAR(9)
        , FIDOC_CCRD_VNDR_NBR VARCHAR(10)
        , CUST_CCRD_NTE_TXT VARCHAR(2000)
    
    , CONSTRAINT FP_CUST_CC_INFO_TP1 PRIMARY KEY(CUST_CCRD_NBR)

    , CONSTRAINT FP_CUST_CC_INFO_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX FP_CUST_CC_INFO_TI1 (FIDOC_CCRD_VNDR_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DEPOSIT_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_DEPOSIT_DOC_T
/

CREATE TABLE FP_DEPOSIT_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_DPST_TYP_CD VARCHAR(1)
        , FDOC_DPST_DT DATETIME
        , FDOC_DPST_BNK_CD VARCHAR(4)
        , FDOC_DPST_TKT_NBR VARCHAR(20)
        , FDOC_DPST_AMT DECIMAL(19,2)
    
    , CONSTRAINT FP_DEPOSIT_DOC_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR)

    , CONSTRAINT FP_DEPOSIT_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DEPOSIT_HDR_T
# -----------------------------------------------------------------------
drop table if exists FP_DEPOSIT_HDR_T
/

CREATE TABLE FP_DEPOSIT_HDR_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CAMPUS_CD VARCHAR(2)
        , FDOC_MSTR_100_DLR_AMT DECIMAL(19,2)
        , FDOC_MSTR_50_DLR_AMT DECIMAL(19,2)
        , FDOC_MSTR_20_DLR_AMT DECIMAL(19,2)
        , FDOC_MSTR_10_DLR_AMT DECIMAL(19,2)
        , FDOC_MSTR_5_DLR_AMT DECIMAL(19,2)
        , FDOC_MSTR_2_DLR_AMT DECIMAL(19,2)
        , FDOC_MSTR_1_DLR_AMT DECIMAL(19,2)
        , FDOC_MSTR_OTHR_DLR_AMT DECIMAL(19,2)
        , FDOC_MSTR_100_CENT_AMT DECIMAL(19,2)
        , FDOC_MSTR_50_CENT_AMT DECIMAL(19,2)
        , FDOC_MSTR_25_CENT_AMT DECIMAL(19,2)
        , FDOC_MSTR_10_CENT_AMT DECIMAL(19,2)
        , FDOC_MSTR_5_CENT_AMT DECIMAL(19,2)
        , FDOC_MSTR_1_CENT_AMT DECIMAL(19,2)
        , FDOC_MSTR_OTHR_CENT_AMT DECIMAL(19,2)
    
    , CONSTRAINT FP_DEPOSIT_HDR_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_DEPOSIT_HDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DEP_CSH_RCPT_T
# -----------------------------------------------------------------------
drop table if exists FP_DEP_CSH_RCPT_T
/

CREATE TABLE FP_DEP_CSH_RCPT_T
(
      FDOC_DPST_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , FDOC_CSH_RCPT_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FS_CSHRCPT_PRCS_TS DATETIME
        , FS_PRCS_OPR_ID VARCHAR(10)
    
    , CONSTRAINT FP_DEP_CSH_RCPT_TP1 PRIMARY KEY(FDOC_DPST_NBR,FDOC_LINE_NBR,FDOC_CSH_RCPT_NBR)

    , CONSTRAINT FP_DEP_CSH_RCPT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                    
                                    
, INDEX FP_DEP_CSH_RCPT_TI2 (FDOC_CSH_RCPT_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DISTRIB_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_DISTRIB_DOC_T
/

CREATE TABLE FP_DISTRIB_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_FRM_NBR DECIMAL(7)
        , FDOC_NXT_TO_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(3)
    
    , CONSTRAINT FP_DISTRIB_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_DISTRIB_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_ACH_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_ACH_T
/

CREATE TABLE FP_DV_ACH_T
(
      DV_ACH_PRFL_NBR VARCHAR(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_PMT_MTHD_CD VARCHAR(1)
        , DV_BNK_NM VARCHAR(40)
        , DV_BNK_RTNG_NBR VARCHAR(9)
        , DV_BNK_CTY_NM VARCHAR(37)
        , DV_BNK_ST_CD VARCHAR(2)
        , DV_BNK_CNTRY_NM VARCHAR(40)
        , DV_ATTN_LN_TXT VARCHAR(80)
        , DV_ADDL_WIRE_TXT VARCHAR(120)
        , DV_PAYEE_ACCT_NBR VARCHAR(40)
        , DV_PAYEE_ACCT_NM VARCHAR(123)
        , DV_PAYEE_ACCT_TYP_CD VARCHAR(1)
        , DV_WIRE_TRNFR_FEE_WVR_IND CHAR(1)
    
    , CONSTRAINT FP_DV_ACH_TP1 PRIMARY KEY(DV_ACH_PRFL_NBR)

    , CONSTRAINT FP_DV_ACH_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_DIEM_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_DIEM_T
/

CREATE TABLE FP_DV_DIEM_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , DV_DIEM_CNTRY_NM VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_DIEM_RT DECIMAL(19,2)
        , DV_DIEM_CNTRY_TXT VARCHAR(255)
    
    , CONSTRAINT FP_DV_DIEM_TP1 PRIMARY KEY(UNIV_FISCAL_YR,DV_DIEM_CNTRY_NM)

    , CONSTRAINT FP_DV_DIEM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_DOC_LOC_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_DOC_LOC_T
/

CREATE TABLE FP_DV_DOC_LOC_T
(
      DV_DOC_LOC_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_DOC_LOC_NM VARCHAR(25)
        , DV_DOC_LOC_ADDR VARCHAR(255)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_DV_DOC_LOC_TP1 PRIMARY KEY(DV_DOC_LOC_CD)

    , CONSTRAINT FP_DV_DOC_LOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_DOC_T
/

CREATE TABLE FP_DV_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_LINE_NBR DECIMAL(7)
        , FDOC_NXT_REG_NBR DECIMAL(7)
        , DV_CNTCT_PRSN_NM VARCHAR(123)
        , DV_CNTCT_PHN_NBR VARCHAR(20)
        , DV_CNTCT_EMAIL_ID VARCHAR(50)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , DV_DUE_DT DATETIME
        , DV_ATTCH_IND CHAR(1)
        , DV_SPCL_HANDLG_IND CHAR(1)
        , DV_CHK_TOT_AMT DECIMAL(19,2)
        , DV_FRGN_CRNCY_IND CHAR(1)
        , DV_DOC_LOC_CD VARCHAR(2)
        , DV_CHK_STUB_TXT VARCHAR(1400)
        , DV_CHKSTUBOVFL_IND CHAR(1)
        , CAMPUS_CD VARCHAR(2)
        , DV_PAYEE_TXCTRL_CD VARCHAR(1)
        , DV_PAYEE_CHG_IND CHAR(1)
        , DV_CHK_NBR VARCHAR(6)
        , DV_CHK_DT DATETIME
        , DV_W9_CMPLT_IND CHAR(1)
        , DV_PMT_MTHD_CD VARCHAR(1)
        , DV_PAYEE_TYP_CD VARCHAR(1)
        , DV_EXTRT_DT DATETIME
        , DV_PD_DT DATETIME
        , DV_CNCL_DT DATETIME
        , DV_BNK_CD VARCHAR(4)
        , DV_PDP_BNK_CD VARCHAR(4)
        , DV_EXCPT_IND VARCHAR(1) default 'N' NOT NULL
        , IMD_PMT_IND VARCHAR(1) default 'N'
        , DV_PMT_MTHD_ID DECIMAL(10)
        , INV_NO VARCHAR(30)
    
    , CONSTRAINT FP_DV_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_DV_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_EXP_TYP_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_EXP_TYP_T
/

CREATE TABLE FP_DV_EXP_TYP_T
(
      DV_EXP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_EXP_NM VARCHAR(25)
        , DV_EXP_PRPY_IND CHAR(1)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_DV_EXP_TYP_TP1 PRIMARY KEY(DV_EXP_CD)

    , CONSTRAINT FP_DV_EXP_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_MLG_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_MLG_T
/

CREATE TABLE FP_DV_MLG_T
(
      DV_MLG_EFF_DT DATETIME
        , DV_MLG_LMT_AMT DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_MLG_RT DECIMAL(19,4)
    
    , CONSTRAINT FP_DV_MLG_TP1 PRIMARY KEY(DV_MLG_EFF_DT,DV_MLG_LMT_AMT)

    , CONSTRAINT FP_DV_MLG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_NONEMP_EXP_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_NONEMP_EXP_T
/

CREATE TABLE FP_DV_NONEMP_EXP_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_EXP_CD VARCHAR(2)
        , DV_EXP_CO_NM VARCHAR(40)
        , DV_EXP_AMT DECIMAL(19,2)
    
    , CONSTRAINT FP_DV_NONEMP_EXP_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR)

    , CONSTRAINT FP_DV_NONEMP_EXP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_NONEM_TRVL_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_NONEM_TRVL_T
/

CREATE TABLE FP_DV_NONEM_TRVL_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_TRVLFROM_CTY_NM VARCHAR(40)
        , DV_TRVL_FROM_ST_CD VARCHAR(2)
        , DV_TRVL_TO_CTY_NM VARCHAR(40)
        , DV_TRVL_TO_ST_CD VARCHAR(2)
        , DV_DIEM_STRT_TS DATETIME
        , DV_DIEM_END_TS DATETIME
        , DV_DIEM_CALC_AMT DECIMAL(19,2)
        , DV_DIEM_ACTL_AMT DECIMAL(19,2)
        , DV_DIEM_CHG_TXT VARCHAR(200)
        , DV_SRVC_PRFRM_DESC VARCHAR(50)
        , DV_SRVC_LOC_NM VARCHAR(40)
        , DV_SRVC_EMPR_NM VARCHAR(40)
        , DV_AUTOFROM_CTY_NM VARCHAR(40)
        , DV_AUTO_FROM_ST_CD VARCHAR(2)
        , DV_AUTO_TO_CTY_NM VARCHAR(40)
        , DV_AUTO_TO_ST_CD VARCHAR(2)
        , DV_AUTO_RNDTRP_IND CHAR(1)
        , DV_PRSNCAR_MLG_AMT DECIMAL(7)
        , DV_PRSNL_CAR_RT DECIMAL(19,2)
        , DV_PRSNL_CAR_AMT DECIMAL(19,2)
        , DV_EXCPN_IND CHAR(1)
        , FDOC_NXT_LINE_NBR DECIMAL(7)
        , DV_NONEMP_TRVLR_NM VARCHAR(123)
        , DV_DIEM_RT DECIMAL(19,2)
        , DV_DIEM_CTGRY_NM VARCHAR(10)
        , DV_MLG_CALC_AMT DECIMAL(19,2)
        , DV_TRVL_FRM_CNTRY_CD VARCHAR(2)
        , DV_TRVL_TO_CNTRY_CD VARCHAR(2)
    
    , CONSTRAINT FP_DV_NONEM_TRVL_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_DV_NONEM_TRVL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_NRA_TAX_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_NRA_TAX_T
/

CREATE TABLE FP_DV_NRA_TAX_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FED_INC_TAX_PCT DECIMAL(5,2)
        , ST_INC_TAX_PCT DECIMAL(5,2)
        , INC_CLS_CD VARCHAR(2)
        , POSTAL_CNTRY_CD VARCHAR(2)
        , INC_TAX_TRTY_EXMPT_IND CHAR(1)
        , FRGN_SRC_INC_IND CHAR(1)
        , INC_TAX_GRS_UP_IND CHAR(1)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_ACCTG_LN_TXT VARCHAR(100)
        , SPCL_W4_INC_AMT DECIMAL(19,2)
        , USAID_DIEM_IND VARCHAR(1)
        , INC_TAX_EXMPT_CD_OTHR_IND VARCHAR(1)
        , NQI_CUST_TAX_ID VARCHAR(50)
    
    , CONSTRAINT FP_DV_NRA_TAX_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_DV_NRA_TAX_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_PAYEE_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_PAYEE_DTL_T
/

CREATE TABLE FP_DV_PAYEE_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_PMT_REAS_CD VARCHAR(1)
        , DV_ALIEN_PMT_IND CHAR(1)
        , DV_PAYEE_ID_NBR VARCHAR(21)
        , DV_PAYEE_PRSN_NM VARCHAR(123)
        , DV_PAYEE_LN1_ADDR VARCHAR(45)
        , DV_PAYEE_LN2_ADDR VARCHAR(45)
        , DV_PAYEE_CTY_NM VARCHAR(37)
        , DV_PAYEE_ST_CD VARCHAR(2)
        , DV_PAYEE_ZIP_CD VARCHAR(20)
        , DV_RMT_PRSN_NM VARCHAR(123)
        , DV_RMT_LN1_ADDR VARCHAR(45)
        , DV_RMT_LN2_ADDR VARCHAR(45)
        , DV_RMT_CTY_NM VARCHAR(37)
        , DV_RMT_ST_CD VARCHAR(2)
        , DV_RMT_ZIP_CD VARCHAR(20)
        , DV_PAYEE_EMP_IND CHAR(1)
        , DV_PAYEE_CNTRY_CD VARCHAR(2)
        , DV_RMT_CNTRY_CD VARCHAR(2)
        , DV_PAYEE_TYP_CD VARCHAR(1)
    
    , CONSTRAINT FP_DV_PAYEE_DTL_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_DV_PAYEE_DTL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX FP_DV_PAYEE_DTL_TI2 (DV_PAYEE_ID_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_PMT_REAS_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_PMT_REAS_T
/

CREATE TABLE FP_DV_PMT_REAS_T
(
      DV_PMT_REAS_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_PMT_REAS_NM VARCHAR(40)
        , DV_PMT_REAS_DESC VARCHAR(2500)
        , DV_PMT_REAS_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT FP_DV_PMT_REAS_TP1 PRIMARY KEY(DV_PMT_REAS_CD)

    , CONSTRAINT FP_DV_PMT_REAS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_PRECNF_REG_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_PRECNF_REG_T
/

CREATE TABLE FP_DV_PRECNF_REG_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_PRECONF_DEPT_CD VARCHAR(4)
        , DV_CONF_RGSTRNT_NM VARCHAR(123)
        , DV_PRECONF_RQST_NBR VARCHAR(6)
        , DV_EXP_AMT DECIMAL(19,2)
    
    , CONSTRAINT FP_DV_PRECNF_REG_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR)

    , CONSTRAINT FP_DV_PRECNF_REG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_PRE_CONF_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_PRE_CONF_T
/

CREATE TABLE FP_DV_PRE_CONF_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_CONF_DEST_NM VARCHAR(40)
        , DV_CONF_STRT_DT DATETIME
        , DV_CONF_END_DT DATETIME
        , DV_CONF_TOT_AMT DECIMAL(19,2)
        , DV_EXP_CD VARCHAR(2)
    
    , CONSTRAINT FP_DV_PRE_CONF_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_DV_PRE_CONF_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_TRVL_CO_NM_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_TRVL_CO_NM_T
/

CREATE TABLE FP_DV_TRVL_CO_NM_T
(
      DV_EXP_CD VARCHAR(2)
        , DV_EXP_CO_NM VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_DV_TRVL_CO_NM_TP1 PRIMARY KEY(DV_EXP_CD,DV_EXP_CO_NM)

    , CONSTRAINT FP_DV_TRVL_CO_NM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_WIRE_CHRG_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_WIRE_CHRG_T
/

CREATE TABLE FP_DV_WIRE_CHRG_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , INC_FIN_OBJ_CD VARCHAR(4)
        , EXP_FIN_OBJ_CD VARCHAR(4)
        , DV_DOMSTC_CHG_AMT DECIMAL(19,2)
        , DV_FRGN_CHRG_AMT DECIMAL(19,2)
    
    , CONSTRAINT FP_DV_WIRE_CHRG_TP1 PRIMARY KEY(UNIV_FISCAL_YR)

    , CONSTRAINT FP_DV_WIRE_CHRG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_DV_WIRE_TRNFR_T
# -----------------------------------------------------------------------
drop table if exists FP_DV_WIRE_TRNFR_T
/

CREATE TABLE FP_DV_WIRE_TRNFR_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DV_BNK_NM VARCHAR(40)
        , DV_BNK_RTNG_NBR VARCHAR(9)
        , DV_BNK_CTY_NM VARCHAR(37)
        , DV_BNK_ST_CD VARCHAR(2)
        , DV_ATTN_LN_TXT VARCHAR(80)
        , DV_ADDL_WIRE_TXT VARCHAR(120)
        , DV_PAYEE_ACCT_NBR VARCHAR(4000)
        , DV_CRNCY_TYP_NM VARCHAR(20)
        , DV_CRNCY_TYP_CD VARCHAR(1)
        , DV_WIRE_TRNFR_FEE_WVR_IND CHAR(1)
        , DV_PAYEE_ACCT_NM VARCHAR(123)
        , DV_PAYEE_ACCT_TYP_CD VARCHAR(1)
        , DV_ACH_PRFL_NBR VARCHAR(3)
        , DV_BNK_CNTRY_CD VARCHAR(2)
        , DV_FCRNCY_TYP_NM VARCHAR(20)
        , DV_FCRNCY_TYP_CD VARCHAR(1)
    
    , CONSTRAINT FP_DV_WIRE_TRNFR_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_DV_WIRE_TRNFR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_ELCTRNC_PMT_CLM_T
# -----------------------------------------------------------------------
drop table if exists FP_ELCTRNC_PMT_CLM_T
/

CREATE TABLE FP_ELCTRNC_PMT_CLM_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , PMT_CLM_STAT_CD VARCHAR(1)
    
    , CONSTRAINT FP_ELCTRNC_PMT_CLM_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR)

    , CONSTRAINT FP_ELCTRNC_PMT_CLM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                        
                                    
, INDEX FP_ELCTRNC_PMT_CLM_TI2 (FDOC_POST_YR , FDOC_POST_PRD_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_ERROR_COR_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_ERROR_COR_DOC_T
/

CREATE TABLE FP_ERROR_COR_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_FRM_NBR DECIMAL(7)
        , FDOC_NXT_TO_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
    
    , CONSTRAINT FP_ERROR_COR_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_ERROR_COR_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_FND_TRNFR_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_FND_TRNFR_DOC_T
/

CREATE TABLE FP_FND_TRNFR_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_FRM_NBR DECIMAL(7)
        , FDOC_NXT_TO_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
    
    , CONSTRAINT FP_FND_TRNFR_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_FND_TRNFR_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_FSCL_YR_CTRL_T
# -----------------------------------------------------------------------
drop table if exists FP_FSCL_YR_CTRL_T
/

CREATE TABLE FP_FSCL_YR_CTRL_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FS_FUNC_CTRL_CD VARCHAR(6)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FS_FUNC_ACTIVE_IND VARCHAR(1)
    
    , CONSTRAINT FP_FSCL_YR_CTRL_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FS_FUNC_CTRL_CD)

    , CONSTRAINT FP_FSCL_YR_CTRL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_FUNC_CTRL_CD_T
# -----------------------------------------------------------------------
drop table if exists FP_FUNC_CTRL_CD_T
/

CREATE TABLE FP_FUNC_CTRL_CD_T
(
      FS_FUNC_CTRL_CD VARCHAR(6)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FS_FUNC_DFLT_IND VARCHAR(1)
        , FS_FUNC_DESC VARCHAR(40)
    
    , CONSTRAINT FP_FUNC_CTRL_CD_TP1 PRIMARY KEY(FS_FUNC_CTRL_CD)

    , CONSTRAINT FP_FUNC_CTRL_CD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_ICR_ADJ_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_ICR_ADJ_DOC_T
/

CREATE TABLE FP_ICR_ADJ_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_FRM_NBR DECIMAL(7)
        , FDOC_NXT_TO_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(3)
    
    , CONSTRAINT FP_ICR_ADJ_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_ICR_ADJ_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INC_CLS_T
# -----------------------------------------------------------------------
drop table if exists FP_INC_CLS_T
/

CREATE TABLE FP_INC_CLS_T
(
      INC_CLS_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INC_CLS_NM VARCHAR(40)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_INC_CLS_TP1 PRIMARY KEY(INC_CLS_CD)

    , CONSTRAINT FP_INC_CLS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INTERIM1_CONS_MT
# -----------------------------------------------------------------------
drop table if exists FP_INTERIM1_CONS_MT
/

CREATE TABLE FP_INTERIM1_CONS_MT
(
      SESID VARCHAR(36)
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
        , FIN_REPORT_SORT_CD VARCHAR(1)
        , FIN_OBJ_TYP_CD VARCHAR(2)
    
    , CONSTRAINT FP_INTERIM1_CONS_MTP1 PRIMARY KEY(SESID,UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INTERIM1_LEVEL_MT
# -----------------------------------------------------------------------
drop table if exists FP_INTERIM1_LEVEL_MT
/

CREATE TABLE FP_INTERIM1_LEVEL_MT
(
      SESID VARCHAR(36)
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , FIN_OBJ_LEVEL_CD VARCHAR(4)
    
    , CONSTRAINT FP_INTERIM1_LEVEL_MTP1 PRIMARY KEY(SESID,UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INTERIM1_OBJ_MT
# -----------------------------------------------------------------------
drop table if exists FP_INTERIM1_OBJ_MT
/

CREATE TABLE FP_INTERIM1_OBJ_MT
(
      SESID VARCHAR(36)
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
    
    , CONSTRAINT FP_INTERIM1_OBJ_MTP1 PRIMARY KEY(SESID,UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INTERIM2_CONS_MT
# -----------------------------------------------------------------------
drop table if exists FP_INTERIM2_CONS_MT
/

CREATE TABLE FP_INTERIM2_CONS_MT
(
      SESID VARCHAR(36)
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
        , FIN_REPORT_SORT_CD VARCHAR(1)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , CONS_FIN_REPORT_SORT_CD VARCHAR(2)
        , FIN_CONS_OBJ_CD VARCHAR(4)
        , ACCTG_CTGRY_CD VARCHAR(2)
    
    , CONSTRAINT FP_INTERIM2_CONS_MTP1 PRIMARY KEY(SESID,UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INTERIM2_LEVEL_MT
# -----------------------------------------------------------------------
drop table if exists FP_INTERIM2_LEVEL_MT
/

CREATE TABLE FP_INTERIM2_LEVEL_MT
(
      SESID VARCHAR(36)
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , FIN_OBJ_LEVEL_CD VARCHAR(4)
        , ACCTG_CTGRY_CD VARCHAR(2)
    
    , CONSTRAINT FP_INTERIM2_LEVEL_MTP1 PRIMARY KEY(SESID,UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INTERIM2_OBJ_MT
# -----------------------------------------------------------------------
drop table if exists FP_INTERIM2_OBJ_MT
/

CREATE TABLE FP_INTERIM2_OBJ_MT
(
      SESID VARCHAR(36)
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
        , FIN_REPORT_SORT_CD VARCHAR(2)
        , ACCTG_CTGRY_CD VARCHAR(2)
    
    , CONSTRAINT FP_INTERIM2_OBJ_MTP1 PRIMARY KEY(SESID,UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INT_BILL_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_INT_BILL_DOC_T
/

CREATE TABLE FP_INT_BILL_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_EXP_NBR DECIMAL(7)
        , FDOC_NXT_INC_NBR DECIMAL(7)
        , FDOC_NXT_ITM_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(3)
    
    , CONSTRAINT FP_INT_BILL_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_INT_BILL_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_INT_BILL_ITM_T
# -----------------------------------------------------------------------
drop table if exists FP_INT_BILL_ITM_T
/

CREATE TABLE FP_INT_BILL_ITM_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_ITM_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_ITM_STCK_NBR VARCHAR(9)
        , FDOC_ITM_STCK_DESC VARCHAR(40)
        , FDOC_ITM_SRVC_DT DATETIME
        , FDOC_ITM_QTY DECIMAL(7,2)
        , FDOC_ITM_UNIT_AMT DECIMAL(19,2)
        , FDOC_UNIT_MSR_CD VARCHAR(2)
    
    , CONSTRAINT FP_INT_BILL_ITM_TP1 PRIMARY KEY(FDOC_NBR,FDOC_ITM_NBR)

    , CONSTRAINT FP_INT_BILL_ITM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_JRNL_VCHR_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_JRNL_VCHR_DOC_T
/

CREATE TABLE FP_JRNL_VCHR_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_LINE_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , FDOC_REVERSAL_DT DATETIME
        , FIN_BALANCE_TYP_CD VARCHAR(2)
    
    , CONSTRAINT FP_JRNL_VCHR_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_JRNL_VCHR_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_JV_ACCT_LINES_T
# -----------------------------------------------------------------------
drop table if exists FP_JV_ACCT_LINES_T
/

CREATE TABLE FP_JV_ACCT_LINES_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , FDOC_LN_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FDOC_POST_YR DECIMAL(4)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FDOC_LINE_AMT DECIMAL(19,2)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_REF_TYP_CD VARCHAR(8)
        , FDOC_OVERRIDE_CD VARCHAR(100)
        , FDOC_LINE_DESC VARCHAR(40)
        , FDOC_LINE_DBCR_CD VARCHAR(1)
        , TRN_ENCUM_UPDT_CD VARCHAR(1)
        , FIN_OBJ_TYP_CD VARCHAR(2)
    
    , CONSTRAINT FP_JV_ACCT_LINES_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR,FDOC_LN_TYP_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_MOTD_T
# -----------------------------------------------------------------------
drop table if exists FP_MOTD_T
/

CREATE TABLE FP_MOTD_T
(
      FS_ORIGIN_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FS_MOTD_TXT VARCHAR(2000)
    
    , CONSTRAINT FP_MOTD_TP1 PRIMARY KEY(FS_ORIGIN_CD)

    , CONSTRAINT FP_MOTD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_NCHK_DSBRSDOC_T
# -----------------------------------------------------------------------
drop table if exists FP_NCHK_DSBRSDOC_T
/

CREATE TABLE FP_NCHK_DSBRSDOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_LINE_NBR DECIMAL(7)
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , FDOC_BNK_CD VARCHAR(4)
    
    , CONSTRAINT FP_NCHK_DSBRSDOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_NCHK_DSBRSDOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_NRA_TAX_PCT_T
# -----------------------------------------------------------------------
drop table if exists FP_NRA_TAX_PCT_T
/

CREATE TABLE FP_NRA_TAX_PCT_T
(
      INC_CLS_CD VARCHAR(2)
        , INC_TAX_TYP_CD VARCHAR(1)
        , INC_TAX_PCT DECIMAL(5,2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_NRA_TAX_PCT_TP1 PRIMARY KEY(INC_CLS_CD,INC_TAX_TYP_CD,INC_TAX_PCT)

    , CONSTRAINT FP_NRA_TAX_PCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_OFST_ACCT_T
# -----------------------------------------------------------------------
drop table if exists FP_OFST_ACCT_T
/

CREATE TABLE FP_OFST_ACCT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FIN_OFST_OBJ_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_OFST_COA_CD VARCHAR(2)
        , FIN_OFST_ACCT_NBR VARCHAR(7)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_OFST_ACCT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR,FIN_OFST_OBJ_CD)

    , CONSTRAINT FP_OFST_ACCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_PRCRMNT_ACCT_LINES_T
# -----------------------------------------------------------------------
drop table if exists FP_PRCRMNT_ACCT_LINES_T
/

CREATE TABLE FP_PRCRMNT_ACCT_LINES_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_TRN_LN_NBR DECIMAL(7)
        , FDOC_LINE_NBR DECIMAL(7)
        , FDOC_LN_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FDOC_POST_YR DECIMAL(4)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FDOC_LINE_AMT DECIMAL(19,2)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FDOC_OVERRIDE_CD VARCHAR(100)
        , FDOC_LINE_DESC VARCHAR(40)
    
    , CONSTRAINT FP_PRCRMNT_ACCT_LINES_TP1 PRIMARY KEY(FDOC_NBR,FDOC_TRN_LN_NBR,FDOC_LINE_NBR,FDOC_LN_TYP_CD)

    , CONSTRAINT FP_PRCRMNT_ACCT_LINES_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_PRCRMNT_CARD_DFLT_T
# -----------------------------------------------------------------------
drop table if exists FP_PRCRMNT_CARD_DFLT_T
/

CREATE TABLE FP_PRCRMNT_CARD_DFLT_T
(
      CC_NBR VARCHAR(16)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , CARD_HLDR_NM VARCHAR(123)
        , CARD_HLDR_ALTRNT_NM VARCHAR(123)
        , CARD_HLDR_LN1_ADDR VARCHAR(45)
        , CARD_HLDR_LN2_ADDR VARCHAR(45)
        , CARD_HLDR_CTY_NM VARCHAR(45)
        , CARD_HLDR_ST_CD VARCHAR(2)
        , CARD_HLDR_ZIP_CD VARCHAR(20)
        , CARD_HLDR_WRK_PHN_NBR VARCHAR(10)
        , CARD_LMT DECIMAL(19,2)
        , CARD_CYCLE_AMT_LMT DECIMAL(19,2)
        , CARD_CYCLE_VOL_LMT DECIMAL(19,2)
        , CARD_STAT_CD VARCHAR(2)
        , CARD_NTE_TXT VARCHAR(50)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ROW_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT FP_PRCRMNT_CARD_DFLT_TP1 PRIMARY KEY(CC_NBR)

    , CONSTRAINT FP_PRCRMNT_CARD_DFLT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_PRCRMNT_CARD_HLDR_T
# -----------------------------------------------------------------------
drop table if exists FP_PRCRMNT_CARD_HLDR_T
/

CREATE TABLE FP_PRCRMNT_CARD_HLDR_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TRN_CC_NBR VARCHAR(4000)
        , FDOC_CARD_HLDR_NM VARCHAR(123)
        , FDOC_CARD_HLDR_ALTRNT_NM VARCHAR(123)
        , FDOC_CARD_HLDR_LN1_ADDR VARCHAR(45)
        , FDOC_CARD_HLDR_LN2_ADDR VARCHAR(45)
        , FDOC_CARD_HLDR_CTY_NM VARCHAR(45)
        , FDOC_CARD_HLDR_ST_CD VARCHAR(2)
        , FDOC_CARD_HLDR_ZIP_CD VARCHAR(20)
        , FDOC_CARD_HLDR_WRK_PHN_NBR VARCHAR(10)
        , FDOC_CARD_LMT DECIMAL(19,2)
        , FDOC_CARD_CYCLE_AMT_LMT DECIMAL(19,2)
        , FDOC_CARD_CYCLE_VOL_LMT DECIMAL(19,2)
        , FDOC_CARD_STAT_CD VARCHAR(2)
        , FDOC_CARD_NTE_TXT VARCHAR(50)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
    
    , CONSTRAINT FP_PRCRMNT_CARD_HLDR_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_PRCRMNT_CARD_HLDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_PRCRMNT_CARD_TRN_MT
# -----------------------------------------------------------------------
drop table if exists FP_PRCRMNT_CARD_TRN_MT
/

CREATE TABLE FP_PRCRMNT_CARD_TRN_MT
(
      TRN_SEQ_ROW_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TRN_CC_NBR VARCHAR(16)
        , FDOC_TOTAL_AMT DECIMAL(19,2)
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , TRN_CYCLE_STRT_DT DATETIME
        , TRN_CYCLE_END_DT DATETIME
        , FDOC_CARD_HLDR_NM VARCHAR(123)
        , TRANSACTION_DT DATETIME
        , TRN_REF_NBR VARCHAR(23)
        , TRN_MCC_CD VARCHAR(4)
        , TRN_POST_DT DATETIME
        , TRN_ORIG_CRNCY_CD VARCHAR(3)
        , TRN_BILL_CRNCY_CD VARCHAR(3)
        , TRN_ORIG_CRNCY_AMT DECIMAL(19,2)
        , TRN_CRNCY_EXCH_RT DECIMAL(10,6)
        , TRN_STLMNT_AMT DECIMAL(19,2)
        , TRN_SALES_TAX_AMT DECIMAL(19,2)
        , TRN_TAX_EXMPT_IND VARCHAR(1)
        , TRN_PURCH_ID_IND VARCHAR(1)
        , TRN_PURCH_ID_DESC VARCHAR(25)
        , TRN_UNIT_CNTCT_NM VARCHAR(123)
        , TRN_TRVL_AUTH_CD VARCHAR(50)
        , TRN_PT_OF_SALE_CD VARCHAR(25)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_ZIP_CD VARCHAR(20)
        , VNDR_ORD_NBR VARCHAR(12)
        , VISA_VNDR_ID VARCHAR(16)
        , FDOC_CARD_HLDR_ALTRNT_NM VARCHAR(123)
        , FDOC_CARD_HLDR_LN1_ADDR VARCHAR(45)
        , FDOC_CARD_HLDR_LN2_ADDR VARCHAR(45)
        , FDOC_CARD_HLDR_CTY_NM VARCHAR(45)
        , FDOC_CARD_HLDR_ST_CD VARCHAR(2)
        , FDOC_CARD_HLDR_ZIP_CD VARCHAR(20)
        , FDOC_CARD_HLDR_WRK_PHN_NBR VARCHAR(10)
        , FDOC_CARD_LMT DECIMAL(19,2)
        , FDOC_CARD_CYCLE_AMT_LMT DECIMAL(19,2)
        , FDOC_CARD_CYCLE_VOL_LMT DECIMAL(19,2)
        , FDOC_CARD_STAT_CD VARCHAR(2)
        , FDOC_CARD_NTE_TXT VARCHAR(50)
    
    , CONSTRAINT FP_PRCRMNT_CARD_TRN_MTP1 PRIMARY KEY(TRN_SEQ_ROW_NBR)

    , CONSTRAINT FP_PRCRMNT_CARD_TRN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_PRCRMNT_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_PRCRMNT_DOC_T
/

CREATE TABLE FP_PRCRMNT_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NXT_LINE_NBR DECIMAL(7)
    
    , CONSTRAINT FP_PRCRMNT_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_PRCRMNT_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_PRCRMNT_TRN_DTL_T
# -----------------------------------------------------------------------
drop table if exists FP_PRCRMNT_TRN_DTL_T
/

CREATE TABLE FP_PRCRMNT_TRN_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_TRN_LN_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TRANSACTION_DT DATETIME
        , TRN_REF_NBR VARCHAR(23)
        , TRN_POST_DT DATETIME
        , TRN_ORIG_CRNCY_CD VARCHAR(3)
        , TRN_BILL_CRNCY_CD VARCHAR(3)
        , TRN_ORIG_CRNCY_AMT DECIMAL(19,2)
        , TRN_CRNCY_EXCH_RT DECIMAL(10,6)
        , TRN_STLMNT_AMT DECIMAL(19,2)
        , TRN_SALES_TAX_AMT DECIMAL(19,2)
        , TRN_TAX_EXMPT_IND VARCHAR(1)
        , TRN_PURCH_ID_IND VARCHAR(1)
        , TRN_PURCH_ID_DESC VARCHAR(25)
        , TRN_UNIT_CNTCT_NM VARCHAR(123)
        , TRN_TRVL_AUTH_CD VARCHAR(50)
        , TRN_PT_OF_SALE_CD VARCHAR(25)
        , TRN_CYCLE_STRT_DT DATETIME
        , TRN_CYCLE_END_DT DATETIME
        , TRN_TOT_AMT DECIMAL(19,2)
    
    , CONSTRAINT FP_PRCRMNT_TRN_DTL_TP1 PRIMARY KEY(FDOC_NBR,FDOC_TRN_LN_NBR)

    , CONSTRAINT FP_PRCRMNT_TRN_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_PRCRMNT_VNDR_T
# -----------------------------------------------------------------------
drop table if exists FP_PRCRMNT_VNDR_T
/

CREATE TABLE FP_PRCRMNT_VNDR_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_TRN_LN_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_ZIP_CD VARCHAR(20)
        , VISA_VNDR_ID VARCHAR(16)
        , VNDR_ORD_NBR VARCHAR(12)
        , TRN_MCC_CD VARCHAR(4)
    
    , CONSTRAINT FP_PRCRMNT_VNDR_TP1 PRIMARY KEY(FDOC_NBR,FDOC_TRN_LN_NBR)

    , CONSTRAINT FP_PRCRMNT_VNDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_PRE_ENCUM_DOC_T
# -----------------------------------------------------------------------
drop table if exists FP_PRE_ENCUM_DOC_T
/

CREATE TABLE FP_PRE_ENCUM_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , FDOC_NXT_ENC_NBR DECIMAL(7)
        , FDOC_REVERSAL_DT DATETIME
        , FDOC_NXT_DIS_NBR DECIMAL(7)
    
    , CONSTRAINT FP_PRE_ENCUM_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT FP_PRE_ENCUM_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_RPT_CD_T
# -----------------------------------------------------------------------
drop table if exists FP_RPT_CD_T
/

CREATE TABLE FP_RPT_CD_T
(
      FIN_RPT_CHRT_CD VARCHAR(2)
        , FIN_RPT_ORG_CD VARCHAR(4)
        , FIN_RPT_CD VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_RPT_CD_DESC VARCHAR(40)
        , FIN_REP_CD_MGR_ID VARCHAR(40)
        , FIN_RPTS_TO_RPT_CD VARCHAR(10)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FP_RPT_CD_TP1 PRIMARY KEY(FIN_RPT_CHRT_CD,FIN_RPT_ORG_CD,FIN_RPT_CD)

    , CONSTRAINT FP_RPT_CD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FP_SALES_TAX_T
# -----------------------------------------------------------------------
drop table if exists FP_SALES_TAX_T
/

CREATE TABLE FP_SALES_TAX_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LN_TYP_CD VARCHAR(1)
        , FDOC_LINE_NBR DECIMAL(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FDOC_GRS_SALES_AMT DECIMAL(19,2)
        , FDOC_TXBL_SALES_AMT DECIMAL(19,2)
        , FDOC_SALE_DT DATETIME
    
    , CONSTRAINT FP_SALES_TAX_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LN_TYP_CD,FDOC_LINE_NBR)

    , CONSTRAINT FP_SALES_TAX_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_CLCTR_HDR_T
# -----------------------------------------------------------------------
drop table if exists FS_CLCTR_HDR_T
/

CREATE TABLE FS_CLCTR_HDR_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , PROC_TRNS_DT DATETIME
        , PROC_BATCH_SEQ_NBR DECIMAL(5)
        , PROC_TOT_REC_CNT DECIMAL(5)
        , PROC_TOT_AMT DECIMAL(19,2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CAMPUS_CD VARCHAR(2) NOT NULL
        , CNTCT_PRSN_PHN_NBR VARCHAR(20) NOT NULL
        , CNTCT_MAIL_ADDR VARCHAR(30) NOT NULL
        , CNTCT_DEPT_NM VARCHAR(30) NOT NULL
    
    , CONSTRAINT FS_CLCTR_HDR_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD,PROC_TRNS_DT,PROC_BATCH_SEQ_NBR,PROC_TOT_REC_CNT,PROC_TOT_AMT)

    , CONSTRAINT FS_CLCTR_HDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_DOC_HEADER_T
# -----------------------------------------------------------------------
drop table if exists FS_DOC_HEADER_T
/

CREATE TABLE FS_DOC_HEADER_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_STATUS_CD VARCHAR(2)
        , FDOC_TOTAL_AMT DECIMAL(19,2)
        , FDOC_IN_ERR_NBR VARCHAR(14)
        , TEMP_DOC_FNL_DT DATETIME
    
    , CONSTRAINT FS_DOC_HEADER_TP1 PRIMARY KEY(FDOC_NBR)





    
                                                                                                                                                                                            
                                    
, INDEX FS_DOC_HEADER_TI1 (FDOC_IN_ERR_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_HOME_ORIGIN_T
# -----------------------------------------------------------------------
drop table if exists FS_HOME_ORIGIN_T
/

CREATE TABLE FS_HOME_ORIGIN_T
(
      FS_HOME_ORIGIN_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT FS_HOME_ORIGIN_TP1 PRIMARY KEY(FS_HOME_ORIGIN_CD)

    , CONSTRAINT FS_HOME_ORIGIN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_OPTION_T
# -----------------------------------------------------------------------
drop table if exists FS_OPTION_T
/

CREATE TABLE FS_OPTION_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACT_FIN_BAL_TYP_CD VARCHAR(2)
        , BDGT_CHK_BALTYP_CD VARCHAR(2)
        , BDGT_CHK_OPTN_CD VARCHAR(1)
        , UNIV_FSCYR_STRT_YR DECIMAL(4)
        , UNIV_FSCYR_STRT_MO VARCHAR(2)
        , FOBJTP_INC_CSH_CD VARCHAR(2)
        , FOBJTP_XPND_EXP_CD VARCHAR(2)
        , FOBJTP_XPNDNEXP_CD VARCHAR(2)
        , FOBJTP_EXPNXPND_CD VARCHAR(2)
        , FOBJ_TYP_ASSET_CD VARCHAR(2)
        , FOBJ_TYP_LBLTY_CD VARCHAR(2)
        , FOBJ_TYP_FNDBAL_CD VARCHAR(2)
        , EXT_ENC_FBALTYP_CD VARCHAR(2)
        , INT_ENC_FBALTYP_CD VARCHAR(2)
        , PRE_ENC_FBALTYP_CD VARCHAR(2)
        , ELIM_FINBAL_TYP_CD VARCHAR(2)
        , FOBJTP_INC_NCSH_CD VARCHAR(2)
        , FOBJTP_CSH_NINC_CD VARCHAR(2)
        , UNIV_FIN_COA_CD VARCHAR(2)
        , UNIV_FISCAL_YR_NM VARCHAR(10)
        , FIN_BEGBALLOAD_IND VARCHAR(1)
        , CSTSHR_ENCUM_FIN_BAL_TYP_CD VARCHAR(2)
        , BASE_BDGT_FIN_BAL_TYP_CD VARCHAR(2)
        , MO_BDGT_FIN_BAL_TYP_CD VARCHAR(2)
        , FIN_OBJECT_TYP_TRNFR_INC_CD VARCHAR(2)
        , FIN_OBJECT_TYP_TRNFR_EXP_CD VARCHAR(2)
        , NMNL_FIN_BAL_TYP_CD VARCHAR(2)
    
    , CONSTRAINT FS_OPTION_TP1 PRIMARY KEY(UNIV_FISCAL_YR)

    , CONSTRAINT FS_OPTION_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_ORIGIN_CODE_T
# -----------------------------------------------------------------------
drop table if exists FS_ORIGIN_CODE_T
/

CREATE TABLE FS_ORIGIN_CODE_T
(
      FS_ORIGIN_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FS_SERVER_NM VARCHAR(20)
        , FS_DATABASE_NM VARCHAR(15)
        , FS_DATABASE_DESC VARCHAR(40)
        , NEXT_CPTLAST_NBR DECIMAL(12)
        , NEXT_NONCA_NBR DECIMAL(12)
        , NEXT_CG_AGENCY_NBR VARCHAR(5)
        , NEXT_CG_SUBCNR_NBR VARCHAR(5)
        , NXT_DV_PAYEEID_NBR DECIMAL(12)
        , NXT_FDOC_ATT_ID DECIMAL(12)
        , AR_NEXT_CUST_NBR DECIMAL(12)
        , FDOC_NEXT_ITEM_ID DECIMAL(12)
        , ROW_ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT FS_ORIGIN_CODE_TP1 PRIMARY KEY(FS_ORIGIN_CD)

    , CONSTRAINT FS_ORIGIN_CODE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_TAX_COUNTY_T
# -----------------------------------------------------------------------
drop table if exists FS_TAX_COUNTY_T
/

CREATE TABLE FS_TAX_COUNTY_T
(
      POSTAL_CNTRY_CD VARCHAR(2)
        , COUNTY_CD VARCHAR(10)
        , STATE_CD VARCHAR(2)
        , TAX_REGION_CD VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTV_IND VARCHAR(1)
    
    , CONSTRAINT FS_TAX_COUNTY_TP1 PRIMARY KEY(POSTAL_CNTRY_CD,COUNTY_CD,STATE_CD,TAX_REGION_CD)

    , CONSTRAINT FS_TAX_COUNTY_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_TAX_POSTAL_CD_T
# -----------------------------------------------------------------------
drop table if exists FS_TAX_POSTAL_CD_T
/

CREATE TABLE FS_TAX_POSTAL_CD_T
(
      POSTAL_CNTRY_CD VARCHAR(2)
        , POSTAL_CD VARCHAR(20)
        , TAX_REGION_CD VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTV_IND VARCHAR(1)
    
    , CONSTRAINT FS_TAX_POSTAL_CD_TP1 PRIMARY KEY(POSTAL_CNTRY_CD,POSTAL_CD,TAX_REGION_CD)

    , CONSTRAINT FS_TAX_POSTAL_CD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_TAX_REGION_RATE_T
# -----------------------------------------------------------------------
drop table if exists FS_TAX_REGION_RATE_T
/

CREATE TABLE FS_TAX_REGION_RATE_T
(
      TAX_REGION_CD VARCHAR(10)
        , TAX_RATE_EFFECTIVE_DT DATETIME
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TAX_RATE DECIMAL(9,8)
    
    , CONSTRAINT FS_TAX_REGION_RATE_TP1 PRIMARY KEY(TAX_REGION_CD,TAX_RATE_EFFECTIVE_DT)

    , CONSTRAINT FS_TAX_DISTRICT_RATE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_TAX_REGION_T
# -----------------------------------------------------------------------
drop table if exists FS_TAX_REGION_T
/

CREATE TABLE FS_TAX_REGION_T
(
      TAX_REGION_CD VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TAX_REGION_NM VARCHAR(100)
        , TAX_REGION_TYP_CD VARCHAR(4)
        , TAX_REGION_USE_TAX_IND VARCHAR(1)
        , LIAB_ACCT_FIN_COA_CD VARCHAR(2)
        , LIAB_ACCT_ACCT_NBR VARCHAR(7)
        , LIAB_ACCT_FIN_OBJECT_CD VARCHAR(4)
        , ACTV_IND VARCHAR(1)
    
    , CONSTRAINT FS_TAX_REGION_TP1 PRIMARY KEY(TAX_REGION_CD)

    , CONSTRAINT FS_TAX_REGION_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_TAX_REGION_TYPE_T
# -----------------------------------------------------------------------
drop table if exists FS_TAX_REGION_TYPE_T
/

CREATE TABLE FS_TAX_REGION_TYPE_T
(
      TAX_REGION_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TAX_REGION_TYP_NM VARCHAR(100)
    
    , CONSTRAINT FS_TAX_REGION_TYPE_TP1 PRIMARY KEY(TAX_REGION_TYP_CD)

    , CONSTRAINT FS_TAX_REGION_TYPE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# FS_TAX_STATE_T
# -----------------------------------------------------------------------
drop table if exists FS_TAX_STATE_T
/

CREATE TABLE FS_TAX_STATE_T
(
      POSTAL_CNTRY_CD VARCHAR(2)
        , STATE_CD VARCHAR(2)
        , TAX_REGION_CD VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTV_IND VARCHAR(1)
    
    , CONSTRAINT FS_TAX_STATE_TP1 PRIMARY KEY(POSTAL_CNTRY_CD,STATE_CD,TAX_REGION_CD)

    , CONSTRAINT FS_TAX_STATE_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ACCT_BALANCES_HIST_T
# -----------------------------------------------------------------------
drop table if exists GL_ACCT_BALANCES_HIST_T
/

CREATE TABLE GL_ACCT_BALANCES_HIST_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
    
    , CONSTRAINT GL_ACCT_BALANCES_HIST_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ACCT_BALANCES_T
# -----------------------------------------------------------------------
drop table if exists GL_ACCT_BALANCES_T
/

CREATE TABLE GL_ACCT_BALANCES_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , CURR_BDLN_BAL_AMT DECIMAL(19,2)
        , ACLN_ACTLS_BAL_AMT DECIMAL(19,2)
        , ACLN_ENCUM_BAL_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
    
    , CONSTRAINT GL_ACCT_BALANCES_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_BALANCE_HIST_T
# -----------------------------------------------------------------------
drop table if exists GL_BALANCE_HIST_T
/

CREATE TABLE GL_BALANCE_HIST_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , ACLN_ANNL_BAL_AMT DECIMAL(19,2)
        , FIN_BEG_BAL_LN_AMT DECIMAL(19,2)
        , CONTR_GR_BB_AC_AMT DECIMAL(19,2)
        , MO1_ACCT_LN_AMT DECIMAL(19,2)
        , MO2_ACCT_LN_AMT DECIMAL(19,2)
        , MO3_ACCT_LN_AMT DECIMAL(19,2)
        , MO4_ACCT_LN_AMT DECIMAL(19,2)
        , MO5_ACCT_LN_AMT DECIMAL(19,2)
        , MO6_ACCT_LN_AMT DECIMAL(19,2)
        , MO7_ACCT_LN_AMT DECIMAL(19,2)
        , MO8_ACCT_LN_AMT DECIMAL(19,2)
        , MO9_ACCT_LN_AMT DECIMAL(19,2)
        , MO10_ACCT_LN_AMT DECIMAL(19,2)
        , MO11_ACCT_LN_AMT DECIMAL(19,2)
        , MO12_ACCT_LN_AMT DECIMAL(19,2)
        , MO13_ACCT_LN_AMT DECIMAL(19,2)
    
    , CONSTRAINT GL_BALANCE_HIST_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD,FIN_BALANCE_TYP_CD,FIN_OBJ_TYP_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_BALANCE_T
# -----------------------------------------------------------------------
drop table if exists GL_BALANCE_T
/

CREATE TABLE GL_BALANCE_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , ACLN_ANNL_BAL_AMT DECIMAL(19,2)
        , FIN_BEG_BAL_LN_AMT DECIMAL(19,2)
        , CONTR_GR_BB_AC_AMT DECIMAL(19,2)
        , MO1_ACCT_LN_AMT DECIMAL(19,2)
        , MO2_ACCT_LN_AMT DECIMAL(19,2)
        , MO3_ACCT_LN_AMT DECIMAL(19,2)
        , MO4_ACCT_LN_AMT DECIMAL(19,2)
        , MO5_ACCT_LN_AMT DECIMAL(19,2)
        , MO6_ACCT_LN_AMT DECIMAL(19,2)
        , MO7_ACCT_LN_AMT DECIMAL(19,2)
        , MO8_ACCT_LN_AMT DECIMAL(19,2)
        , MO9_ACCT_LN_AMT DECIMAL(19,2)
        , MO10_ACCT_LN_AMT DECIMAL(19,2)
        , MO11_ACCT_LN_AMT DECIMAL(19,2)
        , MO12_ACCT_LN_AMT DECIMAL(19,2)
        , MO13_ACCT_LN_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
    
    , CONSTRAINT GL_BALANCE_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD,FIN_BALANCE_TYP_CD,FIN_OBJ_TYP_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_COR_CHG_GRP_T
# -----------------------------------------------------------------------
drop table if exists GL_COR_CHG_GRP_T
/

CREATE TABLE GL_COR_CHG_GRP_T
(
      FDOC_NBR VARCHAR(14)
        , GL_COR_CHG_GRP_LN_NBR DECIMAL(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , GL_COR_CRTA_NXT_LN_NBR DECIMAL(3)
        , GL_COR_CHG_NXT_LN_NBR DECIMAL(3)
    
    , CONSTRAINT GL_COR_CHG_GRP_TP1 PRIMARY KEY(FDOC_NBR,GL_COR_CHG_GRP_LN_NBR)

    , CONSTRAINT GL_COR_CHG_GRP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_COR_CHG_T
# -----------------------------------------------------------------------
drop table if exists GL_COR_CHG_T
/

CREATE TABLE GL_COR_CHG_T
(
      FDOC_NBR VARCHAR(14)
        , GL_COR_CHG_GRP_LN_NBR DECIMAL(3)
        , GL_COR_CHG_LN_NBR DECIMAL(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , GL_COR_STRT_POS DECIMAL(3)
        , GL_COR_END_POS DECIMAL(3)
        , GL_COR_FIELD_VAL VARCHAR(255)
        , GL_COR_FIELD_NM VARCHAR(50)
    
    , CONSTRAINT GL_COR_CHG_TP1 PRIMARY KEY(FDOC_NBR,GL_COR_CHG_GRP_LN_NBR,GL_COR_CHG_LN_NBR)

    , CONSTRAINT GL_COR_CHG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_COR_CRTA_T
# -----------------------------------------------------------------------
drop table if exists GL_COR_CRTA_T
/

CREATE TABLE GL_COR_CRTA_T
(
      FDOC_NBR VARCHAR(14)
        , GL_COR_CHG_GRP_LN_NBR DECIMAL(3)
        , GL_COR_CRTA_LN_NBR DECIMAL(3)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , GL_COR_STRT_POS DECIMAL(3)
        , GL_COR_END_POS DECIMAL(3)
        , GL_COR_OPR_CD VARCHAR(2)
        , GL_COR_FIELD_VAL VARCHAR(255)
        , GL_COR_FIELD_NM VARCHAR(50)
    
    , CONSTRAINT GL_COR_CRTA_TP1 PRIMARY KEY(FDOC_NBR,GL_COR_CHG_GRP_LN_NBR,GL_COR_CRTA_LN_NBR)

    , CONSTRAINT GL_COR_CRTA_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_COR_DOC_T
# -----------------------------------------------------------------------
drop table if exists GL_COR_DOC_T
/

CREATE TABLE GL_COR_DOC_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , GL_COR_TYP_CD VARCHAR(1)
        , GL_COR_SELECT_IND CHAR(1)
        , GL_COR_FL_DEL_IND CHAR(1)
        , GL_COR_ROW_CNT DECIMAL(7)
        , GL_COR_CHG_GRP_NXT_LN_NBR DECIMAL(3)
        , GL_COR_DEBIT_TOT_AMT DECIMAL(19,2)
        , GL_COR_CRDT_TOT_AMT DECIMAL(19,2)
        , GL_COR_INP_FL_NM VARCHAR(255)
        , GL_COR_OUT_FL_NM VARCHAR(255)
        , GL_COR_SCR_TXT LONGTEXT
        , GL_COR_BDGT_TOT_AMT DECIMAL(19,2)
    
    , CONSTRAINT GL_COR_DOC_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT GL_COR_DOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ENCUMBRANCE_HIST_T
# -----------------------------------------------------------------------
drop table if exists GL_ENCUMBRANCE_HIST_T
/

CREATE TABLE GL_ENCUMBRANCE_HIST_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FDOC_TYP_CD VARCHAR(8)
        , FS_ORIGIN_CD VARCHAR(2)
        , FDOC_NBR VARCHAR(14)
        , ACLN_ENCUM_AMT DECIMAL(19,2)
        , ACLN_ENCUM_CLS_AMT DECIMAL(19,2)
    
    , CONSTRAINT GL_ENCUMBRANCE_HIST_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD,FIN_BALANCE_TYP_CD,FDOC_TYP_CD,FS_ORIGIN_CD,FDOC_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ENCUMBRANCE_T
# -----------------------------------------------------------------------
drop table if exists GL_ENCUMBRANCE_T
/

CREATE TABLE GL_ENCUMBRANCE_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FDOC_TYP_CD VARCHAR(8)
        , FS_ORIGIN_CD VARCHAR(2)
        , FDOC_NBR VARCHAR(14)
        , TRN_ENCUM_DESC VARCHAR(40)
        , TRN_ENCUM_DT DATETIME
        , ACLN_ENCUM_AMT DECIMAL(19,2)
        , ACLN_ENCUM_CLS_AMT DECIMAL(19,2)
        , ACLN_ENCUM_PRG_CD VARCHAR(1)
        , TIMESTAMP DATETIME
    
    , CONSTRAINT GL_ENCUMBRANCE_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD,FIN_BALANCE_TYP_CD,FDOC_TYP_CD,FS_ORIGIN_CD,FDOC_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ENTRY_HIST_T
# -----------------------------------------------------------------------
drop table if exists GL_ENTRY_HIST_T
/

CREATE TABLE GL_ENTRY_HIST_T
(
      UNIV_FISCAL_YR DECIMAL(4) NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , FIN_BALANCE_TYP_CD VARCHAR(2) NOT NULL
        , UNIV_FISCAL_PRD_CD VARCHAR(2) NOT NULL
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TRN_LDGR_ENTR_AMT DECIMAL(19,2)
        , ROW_CNT DECIMAL(7)
    

    , CONSTRAINT GL_ENTRY_HIST_TP1 UNIQUE (UNIV_FISCAL_YR, FIN_COA_CD, FIN_OBJECT_CD, FIN_BALANCE_TYP_CD, UNIV_FISCAL_PRD_CD, TRN_DEBIT_CRDT_CD)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ENTRY_T
# -----------------------------------------------------------------------
drop table if exists GL_ENTRY_T
/

CREATE TABLE GL_ENTRY_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , FDOC_TYP_CD VARCHAR(8)
        , FS_ORIGIN_CD VARCHAR(2)
        , FDOC_NBR VARCHAR(14)
        , TRN_ENTR_SEQ_NBR DECIMAL(5)
        , TRN_LDGR_ENTR_DESC VARCHAR(40)
        , TRN_LDGR_ENTR_AMT DECIMAL(19,2)
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , TRANSACTION_DT DATETIME
        , ORG_DOC_NBR VARCHAR(10)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FDOC_REF_TYP_CD VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_REVERSAL_DT DATETIME
        , TRN_ENCUM_UPDT_CD VARCHAR(1)
        , TRN_POST_DT DATETIME
        , TIMESTAMP DATETIME
    
    , CONSTRAINT GL_ENTRY_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD,FIN_BALANCE_TYP_CD,FIN_OBJ_TYP_CD,UNIV_FISCAL_PRD_CD,FDOC_TYP_CD,FS_ORIGIN_CD,FDOC_NBR,TRN_ENTR_SEQ_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_EXPEND_TRN_MT
# -----------------------------------------------------------------------
drop table if exists GL_EXPEND_TRN_MT
/

CREATE TABLE GL_EXPEND_TRN_MT
(
      UNIV_FISCAL_YR VARCHAR(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ACCT_OBJ_DCST_AMT DECIMAL(19,2)
    
    , CONSTRAINT GL_EXPEND_TRN_MTP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD,FIN_BALANCE_TYP_CD,FIN_OBJ_TYP_CD,UNIV_FISCAL_PRD_CD,PROJECT_CD,ORG_REFERENCE_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ID_BILL_T
# -----------------------------------------------------------------------
drop table if exists GL_ID_BILL_T
/

CREATE TABLE GL_ID_BILL_T
(
      UNIV_FISCAL_PRD_CD VARCHAR(2)
        , UNIV_FISCAL_YR DECIMAL(4)
        , CREATE_DT DATETIME
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , FDOC_IDBIL_SEQ_NBR VARCHAR(2)
        , FDOC_TYP_CD VARCHAR(8)
        , FS_ORIGIN_CD VARCHAR(2)
        , FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_IDBIL_ITM_AMT DECIMAL(19,2) NOT NULL
        , FDOC_IDBIL_NTE_TXT VARCHAR(120) NOT NULL
        , TRN_ENTR_SEQ_NBR DECIMAL(5)
    
    , CONSTRAINT GL_ID_BILL_TP1 PRIMARY KEY(UNIV_FISCAL_PRD_CD,UNIV_FISCAL_YR,CREATE_DT,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD,FIN_BALANCE_TYP_CD,FIN_OBJ_TYP_CD,FDOC_IDBIL_SEQ_NBR,FDOC_TYP_CD,FS_ORIGIN_CD,FDOC_NBR,TRN_ENTR_SEQ_NBR)

    , CONSTRAINT GL_ID_BILL_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_ID_BILL_TI2 (FDOC_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_ID_BILL_TI3 (FS_ORIGIN_CD , FDOC_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_ID_BILL_TI4 (ACCOUNT_NBR , FDOC_TYP_CD , FIN_COA_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_OFFSET_DEFN_T
# -----------------------------------------------------------------------
drop table if exists GL_OFFSET_DEFN_T
/

CREATE TABLE GL_OFFSET_DEFN_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , FDOC_TYP_CD VARCHAR(8)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_OBJECT_CD VARCHAR(4)
    
    , CONSTRAINT GL_OFFSET_DEFN_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,FDOC_TYP_CD,FIN_BALANCE_TYP_CD)

    , CONSTRAINT GL_OFFSET_DEFN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ORG_RVRSN_CTGRY_AMT_T
# -----------------------------------------------------------------------
drop table if exists GL_ORG_RVRSN_CTGRY_AMT_T
/

CREATE TABLE GL_ORG_RVRSN_CTGRY_AMT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , ORG_RVRSN_CTGRY_CD VARCHAR(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_TOT_ACTL_AMT DECIMAL(19,2)
        , ORG_TOT_BDGT_AMT DECIMAL(19,2)
        , ORG_TOT_ENCUM_AMT DECIMAL(19,2)
        , ORG_TOT_CF_AMT DECIMAL(19,2)
        , ORG_TOT_AVAIL_AMT DECIMAL(19,2)
    
    , CONSTRAINT GL_ORG_RVRSN_CTGRY_AMT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,ORG_RVRSN_CTGRY_CD)

    , CONSTRAINT GL_ORG_RVRSN_CTGRY_AMT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_ORG_RVRSN_UNIT_WRK_T
# -----------------------------------------------------------------------
drop table if exists GL_ORG_RVRSN_UNIT_WRK_T
/

CREATE TABLE GL_ORG_RVRSN_UNIT_WRK_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_TOT_RVRSN_AMT DECIMAL(19,2)
        , ORG_TOT_CF_AMT DECIMAL(19,2)
        , ORG_TOT_AVAIL_AMT DECIMAL(19,2)
        , ORG_TOT_CSH_AMT DECIMAL(19,2)
    
    , CONSTRAINT GL_ORG_RVRSN_UNIT_WRK_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR)

    , CONSTRAINT GL_ORG_RVRSN_UNIT_WRK_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_PENDING_BALANCES_MT
# -----------------------------------------------------------------------
drop table if exists GL_PENDING_BALANCES_MT
/

CREATE TABLE GL_PENDING_BALANCES_MT
(
      PERSON_UNVL_ID VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , APPR_BUDGET DECIMAL(19,2)
        , APPR_ACTUAL DECIMAL(19,2)
        , APPR_ENCUM DECIMAL(19,2)
        , PEND_BUDGET DECIMAL(19,2)
        , PEND_ACTUAL DECIMAL(19,2)
        , PEND_ENCUM DECIMAL(19,2)
    
    , CONSTRAINT GL_PENDING_BALANCES_MTP1 PRIMARY KEY(PERSON_UNVL_ID)

    , CONSTRAINT GL_PENDING_BALANCES_MTC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_PENDING_ENTRY_MT
# -----------------------------------------------------------------------
drop table if exists GL_PENDING_ENTRY_MT
/

CREATE TABLE GL_PENDING_ENTRY_MT
(
      SESID VARCHAR(36)
        , FS_ORIGIN_CD VARCHAR(2)
        , FDOC_NBR VARCHAR(14)
        , TRN_ENTR_SEQ_NBR DECIMAL(5)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , TRN_LDGR_ENTR_DESC VARCHAR(40)
        , TRN_LDGR_ENTR_AMT DECIMAL(19,2)
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , TRANSACTION_DT DATETIME
        , FDOC_TYP_CD VARCHAR(8)
        , ORG_DOC_NBR VARCHAR(10)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FDOC_REF_TYP_CD VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_REVERSAL_DT DATETIME
        , TRN_ENCUM_UPDT_CD VARCHAR(1)
        , FDOC_APPROVED_CD VARCHAR(1)
        , ACCT_SF_FINOBJ_CD VARCHAR(4)
        , TRN_ENTR_OFST_CD VARCHAR(1)
        , TRNENTR_PROCESS_TM DATETIME
    
    , CONSTRAINT GL_PENDING_ENTRY_MTP1 PRIMARY KEY(SESID,FS_ORIGIN_CD,FDOC_NBR,TRN_ENTR_SEQ_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_PENDING_ENTRY_T
# -----------------------------------------------------------------------
drop table if exists GL_PENDING_ENTRY_T
/

CREATE TABLE GL_PENDING_ENTRY_T
(
      FS_ORIGIN_CD VARCHAR(2)
        , FDOC_NBR VARCHAR(14)
        , TRN_ENTR_SEQ_NBR DECIMAL(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , TRN_LDGR_ENTR_DESC VARCHAR(40)
        , TRN_LDGR_ENTR_AMT DECIMAL(19,2)
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , TRANSACTION_DT DATETIME
        , FDOC_TYP_CD VARCHAR(8)
        , ORG_DOC_NBR VARCHAR(10)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FDOC_REF_TYP_CD VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_REVERSAL_DT DATETIME
        , TRN_ENCUM_UPDT_CD VARCHAR(1)
        , FDOC_APPROVED_CD VARCHAR(1)
        , ACCT_SF_FINOBJ_CD VARCHAR(4)
        , TRN_ENTR_OFST_CD VARCHAR(1)
        , TRNENTR_PROCESS_TM DATETIME
    
    , CONSTRAINT GL_PENDING_ENTRY_TP1 PRIMARY KEY(FS_ORIGIN_CD,FDOC_NBR,TRN_ENTR_SEQ_NBR)

    , CONSTRAINT GL_PENDING_ENTRY_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_PENDING_ENTRY_TI2 (UNIV_FISCAL_YR , FIN_COA_CD , ACCOUNT_NBR , SUB_ACCT_NBR , FIN_OBJECT_CD , FIN_SUB_OBJ_CD , FIN_BALANCE_TYP_CD , FIN_OBJ_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_PENDING_ENTRY_TI3 (UNIV_FISCAL_YR , FIN_COA_CD , ACCOUNT_NBR , FIN_OBJECT_CD , FIN_BALANCE_TYP_CD , ACCT_SF_FINOBJ_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_PENDING_ENTRY_TI4 (FIN_OBJ_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_PENDING_ENTRY_TI5 (FS_ORIGIN_CD , FDOC_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_PENDING_ENTRY_TI6 (UNIV_FISCAL_YR , FIN_COA_CD , ACCOUNT_NBR , FIN_OBJECT_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX GL_PENDING_ENTRY_TI7 (FDOC_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_REVERSAL_T
# -----------------------------------------------------------------------
drop table if exists GL_REVERSAL_T
/

CREATE TABLE GL_REVERSAL_T
(
      FDOC_REVERSAL_DT DATETIME
        , UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , FDOC_TYP_CD VARCHAR(8)
        , FS_ORIGIN_CD VARCHAR(2)
        , FDOC_NBR VARCHAR(14)
        , TRN_ENTR_SEQ_NBR DECIMAL(5)
        , TRN_LDGR_ENTR_DESC VARCHAR(40)
        , TRN_LDGR_ENTR_AMT DECIMAL(19,2)
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , TRANSACTION_DT DATETIME
        , ORG_DOC_NBR VARCHAR(10)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FDOC_REF_TYP_CD VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , TRN_ENCUM_UPDT_CD VARCHAR(1)
        , TRN_POST_DT DATETIME
    
    , CONSTRAINT GL_REVERSAL_TP1 PRIMARY KEY(FDOC_REVERSAL_DT,UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,SUB_ACCT_NBR,FIN_OBJECT_CD,FIN_SUB_OBJ_CD,FIN_BALANCE_TYP_CD,FIN_OBJ_TYP_CD,UNIV_FISCAL_PRD_CD,FDOC_TYP_CD,FS_ORIGIN_CD,FDOC_NBR,TRN_ENTR_SEQ_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_SF_BALANCES_T
# -----------------------------------------------------------------------
drop table if exists GL_SF_BALANCES_T
/

CREATE TABLE GL_SF_BALANCES_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FIN_OBJECT_CD VARCHAR(4)
        , ACCT_SF_CD VARCHAR(1)
        , CURR_BDGT_BAL_AMT DECIMAL(19,2)
        , ACCT_ACTL_XPND_AMT DECIMAL(19,2)
        , ACCT_ENCUM_AMT DECIMAL(19,2)
        , TIMESTAMP DATETIME
    
    , CONSTRAINT GL_SF_BALANCES_TP1 PRIMARY KEY(UNIV_FISCAL_YR,FIN_COA_CD,ACCOUNT_NBR,FIN_OBJECT_CD)





    
                                                                                                                                                                                                                                        
                                    
                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                            
                                    
, INDEX GL_SF_BALANCES_TI2 (UNIV_FISCAL_YR , FIN_COA_CD , FIN_OBJECT_CD )
    
                                                                                                                                                                                                                                        
                                    
, INDEX GL_SF_BALANCES_TI3 (TIMESTAMP )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GL_SF_REBUILD_T
# -----------------------------------------------------------------------
drop table if exists GL_SF_REBUILD_T
/

CREATE TABLE GL_SF_REBUILD_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCT_FOBJ_TYP_CD VARCHAR(1)
        , ACCT_NBR_FOBJ_CD VARCHAR(7)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT GL_SF_REBUILD_TP1 PRIMARY KEY(FIN_COA_CD,ACCT_FOBJ_TYP_CD,ACCT_NBR_FOBJ_CD)

    , CONSTRAINT GL_SF_REBUILD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_ACC_SUFF_FUND_CHK_T
# -----------------------------------------------------------------------
drop table if exists OLE_ACC_SUFF_FUND_CHK_T
/

CREATE TABLE OLE_ACC_SUFF_FUND_CHK_T
(
      ACCOUNT_NBR VARCHAR(40)
        , FIN_COA_CD VARCHAR(40)
        , OLE_SFC_CHK_ID DECIMAL(8)
        , OLE_SFC_ENCUM_METHOD VARCHAR(10)
        , OLE_SFC_ENCUM_AMT DECIMAL(10,2)
        , OLE_SFC_EXP_AMT DECIMAL(10,2)
        , OLE_SFC_ENCUM_CON_TYP VARCHAR(10)
        , OLE_NOTIFICATION_OPT VARCHAR(50)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_ACC_SUFF_FUND_CHK_TP1 PRIMARY KEY(ACCOUNT_NBR,FIN_COA_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CAT_LOC_STATUS_T
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_LOC_STATUS_T
/

CREATE TABLE OLE_CAT_LOC_STATUS_T
(
      LOC_STATUS_ID VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , LOC_STATUS_CD VARCHAR(40) NOT NULL
        , LOC_STATUS_NM VARCHAR(100) NOT NULL
        , SRC VARCHAR(100) NOT NULL
        , SRC_DT DATETIME NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_CAT_LOC_STATUS_TP1 PRIMARY KEY(LOC_STATUS_ID)

    , CONSTRAINT LOC_STATUS_CD_UQ UNIQUE (LOC_STATUS_CD)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CA_ACCT_ENCUM_CNSTRT_T
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_ENCUM_CNSTRT_T
/

CREATE TABLE OLE_CA_ACCT_ENCUM_CNSTRT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OLE_ENCUM_CNSTRT_AMT DECIMAL(19,4) NOT NULL
        , OLE_ENCUM_CNSTRT_AMT_TYP VARCHAR(1) NOT NULL
        , OLE_CNSTRT_TYP_ID DECIMAL(8) NOT NULL
        , OLE_SFC_TYP_ID DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_CA_ACCT_ENCUM_CNSTRT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CA_ACCT_EXP_CNSTRT_T
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_EXP_CNSTRT_T
/

CREATE TABLE OLE_CA_ACCT_EXP_CNSTRT_T
(
      FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OLE_EXP_CNSTRT_AMT DECIMAL(19,4) NOT NULL
        , OLE_EXP_CNSTRT_AMT_TYP VARCHAR(1) NOT NULL
        , OLE_CNSTRT_TYP_ID DECIMAL(8) NOT NULL
        , OLE_SFC_TYP_ID DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_CA_ACCT_EXP_CNSTRT_TP1 PRIMARY KEY(FIN_COA_CD,ACCOUNT_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CA_ACCT_LGCY_LMS_FND_T
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_LGCY_LMS_FND_T
/

CREATE TABLE OLE_CA_ACCT_LGCY_LMS_FND_T
(
      OLE_CA_ACCT_LGCY_LMS_FND_ID DECIMAL(8)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OLE_LGCY_LIB_FUND_CD VARCHAR(100) NOT NULL
        , OLE_LGCY_LIB_FUND_NTE VARCHAR(700)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_CA_ACCT_LGCY_LMS_FND_TP1 PRIMARY KEY(OLE_CA_ACCT_LGCY_LMS_FND_ID,FIN_COA_CD,ACCOUNT_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CA_ACCT_SFC_TYPE_T
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_SFC_TYPE_T
/

CREATE TABLE OLE_CA_ACCT_SFC_TYPE_T
(
      OLE_SFC_TYP_ID DECIMAL(8)
        , OLE_SFC_TYP VARCHAR(40) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_CA_ACCT_SFC_TYPE_TP1 PRIMARY KEY(OLE_SFC_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CA_ACCT_STWD_T
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_STWD_T
/

CREATE TABLE OLE_CA_ACCT_STWD_T
(
      OLE_CA_ACCT_STWD_ID DECIMAL(8)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , OLE_STWD_TYP_ID DECIMAL(8) NOT NULL
        , OLE_STWD_NTE VARCHAR(700)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_CA_ACCT_STWD_TP1 PRIMARY KEY(OLE_CA_ACCT_STWD_ID,FIN_COA_CD,ACCOUNT_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CA_ACCT_STWD_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_STWD_TYP_T
/

CREATE TABLE OLE_CA_ACCT_STWD_TYP_T
(
      OLE_STWD_TYP_ID DECIMAL(8)
        , OLE_STWD_TYP VARCHAR(40) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_CA_ACCT_STWD_TYP_TP1 PRIMARY KEY(OLE_STWD_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CNSTRT_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_CNSTRT_TYP_T
/

CREATE TABLE OLE_CNSTRT_TYP_T
(
      OLE_CNSTRT_TYP_ID DECIMAL(8)
        , OLE_CNSTRT_TYP VARCHAR(40) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_CNSTRT_TYP_TP1 PRIMARY KEY(OLE_CNSTRT_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_CURR_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_CURR_TYP_T
/

CREATE TABLE OLE_CURR_TYP_T
(
      OLE_CURR_TYP_ID DECIMAL(8)
        , OLE_CURR_TYP VARCHAR(200) NOT NULL
        , OLE_CURR_CNTRY VARCHAR(100) NOT NULL
        , OLE_CURR_ALPHA_CD VARCHAR(3) NOT NULL
        , OLE_CURR_NUM_CD DECIMAL(4) NOT NULL
        , OLE_CURR_MIN_UN VARCHAR(5) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_CURR_TYP_TP1 PRIMARY KEY(OLE_CURR_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_DEFAULTABLE_COLUMNS_T
# -----------------------------------------------------------------------
drop table if exists OLE_DEFAULTABLE_COLUMNS_T
/

CREATE TABLE OLE_DEFAULTABLE_COLUMNS_T
(
      OLE_DEFAULTABLE_COLUMN_ID DECIMAL(8)
        , DOC_TYPE_ID VARCHAR(40)
        , DOC_COLUMN VARCHAR(45)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_DEFAULTABLE_COLUMNS_TP1 PRIMARY KEY(OLE_DEFAULTABLE_COLUMN_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_DEFAULT_VALUE_T
# -----------------------------------------------------------------------
drop table if exists OLE_DEFAULT_VALUE_T
/

CREATE TABLE OLE_DEFAULT_VALUE_T
(
      OLE_DEFAULT_VALUE_ID DECIMAL(8) default 0
        , OLE_DEFAULTABLE_COLUMN_ID DECIMAL(8) NOT NULL
        , DEFAULT_VALUE VARCHAR(50)
        , DEFAULT_VALUE_FOR VARCHAR(45)
        , USER_ID VARCHAR(45)
        , ROLE_ID VARCHAR(40)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_DEFAULT_VALUE_TP1 PRIMARY KEY(OLE_DEFAULT_VALUE_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_DOCSTORE_LINKS_T
# -----------------------------------------------------------------------
drop table if exists OLE_DOCSTORE_LINKS_T
/

CREATE TABLE OLE_DOCSTORE_LINKS_T
(
      DOCSTORE_LINKS_ID DECIMAL(8)
        , OLE_DOCUMENT1_UUID VARCHAR(50) NOT NULL
        , OLE_DOCUMENT2_UUID VARCHAR(50) NOT NULL
        , DOC_TYP_1 VARCHAR(50) NOT NULL
        , DOC_TYP_2 VARCHAR(50) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_DOCSTORE_LINKS_TP1 PRIMARY KEY(DOCSTORE_LINKS_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_DV_FP_ACCT_LINES_T
# -----------------------------------------------------------------------
drop table if exists OLE_DV_FP_ACCT_LINES_T
/

CREATE TABLE OLE_DV_FP_ACCT_LINES_T
(
      FDOC_NBR VARCHAR(14)
        , FDOC_LINE_NBR DECIMAL(7)
        , FDOC_LN_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , FDOC_POST_YR DECIMAL(4)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FDOC_LINE_AMT DECIMAL(19,2)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_REF_TYP_CD VARCHAR(8)
        , FDOC_OVERRIDE_CD VARCHAR(100)
        , FDOC_LINE_DESC VARCHAR(40)
        , FDOC_LINE_DBCR_CD VARCHAR(1)
        , TRN_ENCUM_UPDT_CD VARCHAR(1)
        , ACLN_PCT DECIMAL(35,20)
    
    , CONSTRAINT OLE_DV_FP_ACCT_LINES_TP1 PRIMARY KEY(FDOC_NBR,FDOC_LINE_NBR,FDOC_LN_TYP_CD)

    , CONSTRAINT OLE_DV_FP_ACCT_LINES_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_DV_FP_PAYEE_DTL_T
# -----------------------------------------------------------------------
drop table if exists OLE_DV_FP_PAYEE_DTL_T
/

CREATE TABLE OLE_DV_FP_PAYEE_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , DV_PMT_REAS_CD VARCHAR(1)
        , DV_ALIEN_PMT_IND CHAR(1)
        , DV_DEPOSIT_ACC CHAR(1)
        , DV_PAYEE_ID_NBR VARCHAR(21)
        , DV_PAYEE_PRSN_NM VARCHAR(123)
        , DV_PAYEE_LN1_ADDR VARCHAR(45)
        , DV_PAYEE_LN2_ADDR VARCHAR(45)
        , DV_PAYEE_CTY_NM VARCHAR(37)
        , DV_PAYEE_ST_CD VARCHAR(2)
        , DV_PAYEE_ZIP_CD VARCHAR(20)
        , DV_RMT_PRSN_NM VARCHAR(123)
        , DV_RMT_LN1_ADDR VARCHAR(45)
        , DV_RMT_LN2_ADDR VARCHAR(45)
        , DV_RMT_CTY_NM VARCHAR(37)
        , DV_RMT_ST_CD VARCHAR(2)
        , DV_RMT_ZIP_CD VARCHAR(20)
        , DV_PAYEE_EMP_IND CHAR(1)
        , DV_PAYEE_CNTRY_CD VARCHAR(2)
        , DV_RMT_CNTRY_CD VARCHAR(2)
        , DV_PAYEE_TYP_CD VARCHAR(1)
    
    , CONSTRAINT OLE_DV_FP_PAYEE_DTL_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT OLE_DV_FP_PAYEE_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_EXCHANGE_RT_T
# -----------------------------------------------------------------------
drop table if exists OLE_EXCHANGE_RT_T
/

CREATE TABLE OLE_EXCHANGE_RT_T
(
      OLE_EXCHANGE_RT_ID DECIMAL(8)
        , OLE_CURR_TYP_ID DECIMAL(8) NOT NULL
        , OLE_EXCHANGE_RT DECIMAL(19,6)
        , OLE_EXCHANGE_RT_SRC VARCHAR(700)
        , OLE_EXCHANGE_RT_DT DATETIME
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_EXCHANGE_RT_TP1 PRIMARY KEY(OLE_EXCHANGE_RT_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_INV_SUB_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_INV_SUB_TYP_T
/

CREATE TABLE OLE_INV_SUB_TYP_T
(
      OLE_INV_SUB_TYP_ID DECIMAL(10)
        , INV_SUB_TYP VARCHAR(100) NOT NULL
        , INV_SUB_TYP_DESC VARCHAR(200)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_INV_SUB_TYP_TP1 PRIMARY KEY(OLE_INV_SUB_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_INV_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_INV_TYP_T
/

CREATE TABLE OLE_INV_TYP_T
(
      OLE_INV_TYP_ID DECIMAL(10)
        , INV_TYP VARCHAR(100) NOT NULL
        , INV_TYP_DESC VARCHAR(200)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_INV_TYP_TP1 PRIMARY KEY(OLE_INV_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_ITM_PRC_SRC_T
# -----------------------------------------------------------------------
drop table if exists OLE_ITM_PRC_SRC_T
/

CREATE TABLE OLE_ITM_PRC_SRC_T
(
      ITM_PRC_SRC_ID DECIMAL(8)
        , OLE_ITM_PRC_SRC VARCHAR(100) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_ITM_PRC_SRC_TP1 PRIMARY KEY(ITM_PRC_SRC_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_LIC_RQMT_T
# -----------------------------------------------------------------------
drop table if exists OLE_LIC_RQMT_T
/

CREATE TABLE OLE_LIC_RQMT_T
(
      LIC_RQMT_CD VARCHAR(20)
        , LIC_RQMT_DESC VARCHAR(200)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ACT_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT OLE_LIC_RQMT_TP1 PRIMARY KEY(LIC_RQMT_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_NTE_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_NTE_TYP_T
/

CREATE TABLE OLE_NTE_TYP_T
(
      OLE_NTE_TYP_ID DECIMAL(10)
        , OLE_NTE_TYPE VARCHAR(100) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_NTE_TYP_TP1 PRIMARY KEY(OLE_NTE_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PMT_MTHD_T
# -----------------------------------------------------------------------
drop table if exists OLE_PMT_MTHD_T
/

CREATE TABLE OLE_PMT_MTHD_T
(
      OLE_PMT_MTHD_ID DECIMAL(10)
        , PMT_MTHD VARCHAR(100) NOT NULL
        , PMT_MTHD_DESC VARCHAR(200)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_PMT_MTHD_TP1 PRIMARY KEY(OLE_PMT_MTHD_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PMT_RQST_ITM_NTE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PMT_RQST_ITM_NTE_T
/

CREATE TABLE OLE_PMT_RQST_ITM_NTE_T
(
      OLE_PMT_RQST_ITM_NTE_ID DECIMAL(10)
        , PMT_RQST_ITM_ID DECIMAL(10)
        , OLE_NTE VARCHAR(2000) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_PMT_RQST_ITM_NTE_TP1 PRIMARY KEY(OLE_PMT_RQST_ITM_NTE_ID,PMT_RQST_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_CAT_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_CAT_T
/

CREATE TABLE OLE_PUR_CAT_T
(
      OLE_CAT_ID DECIMAL(8)
        , OLE_CATEGORY VARCHAR(45)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT OLE_PUR_CAT_TP1 PRIMARY KEY(OLE_CAT_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_FRMT_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_FRMT_T
/

CREATE TABLE OLE_PUR_FRMT_T
(
      OLE_FRMT_ID DECIMAL(8)
        , OLE_FORMAT VARCHAR(45)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT OLE_PUR_FRMT_TP1 PRIMARY KEY(OLE_FRMT_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_PO_ERR_CDS_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_ERR_CDS_T
/

CREATE TABLE OLE_PUR_PO_ERR_CDS_T
(
      ERR_ID DECIMAL(10)
        , ERROR VARCHAR(200) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_PUR_PO_ERR_CDS_TP1 PRIMARY KEY(ERR_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_PO_FAIL_DOC_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_FAIL_DOC_T
/

CREATE TABLE OLE_PUR_PO_FAIL_DOC_T
(
      PO_FAIL_DOC_ID DECIMAL(10)
        , PO_LOAD_SUM_ID DECIMAL(10)
        , OLE_VNDR_PO_ID VARCHAR(100)
        , OLE_VNDR_IT_ID VARCHAR(100)
        , ERR_ID DECIMAL(10) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ISBN VARCHAR(50)
        , TITLE VARCHAR(700)
    
    , CONSTRAINT OLE_PUR_PO_FAIL_DOC_TP1 PRIMARY KEY(PO_FAIL_DOC_ID,PO_LOAD_SUM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_PO_ITM_NTE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_ITM_NTE_T
/

CREATE TABLE OLE_PUR_PO_ITM_NTE_T
(
      OLE_PO_ITM_NTE_ID DECIMAL(10)
        , FDOC_NBR VARCHAR(14)
        , PO_ITM_ID DECIMAL(10)
        , OLE_NTE VARCHAR(2000) NOT NULL
        , OLE_NTE_TYP_ID DECIMAL(10)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_PUR_PO_ITM_NTE_TP1 PRIMARY KEY(OLE_PO_ITM_NTE_ID,FDOC_NBR,PO_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_PO_ITM_ORDR_STAT_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_ITM_ORDR_STAT_T
/

CREATE TABLE OLE_PUR_PO_ITM_ORDR_STAT_T
(
      OLE_PO_ITM_ORDR_STAT_ID DECIMAL(8)
        , OLE_PO_ITM_ORDR_STAT VARCHAR(100) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
        , DESC_TXT VARCHAR(500) NOT NULL
    
    , CONSTRAINT OLE_PUR_PO_ITM_ORDR_STAT_TP1 PRIMARY KEY(OLE_PO_ITM_ORDR_STAT_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_PO_LOAD_SUM_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_LOAD_SUM_T
/

CREATE TABLE OLE_PUR_PO_LOAD_SUM_T
(
      PO_LOAD_SUM_ID DECIMAL(10)
        , PRNCPL_ID VARCHAR(45) NOT NULL
        , PO_LOAD_SCCSS_CNT DECIMAL(5) NOT NULL
        , PO_LOAD_FAIL_CNT DECIMAL(5) NOT NULL
        , PO_LOAD_TOT DECIMAL(5) NOT NULL
        , PO_LOAD_PO_TOT DECIMAL(5) NOT NULL
        , PO_LOAD_DESC VARCHAR(2000)
        , FILE_NM VARCHAR(200) NOT NULL
        , BAT_PRCS_PRF_ID VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , FDOC_NBR VARCHAR(14) NOT NULL
        , EDI_FILE_NM VARCHAR(200)
        , PO_LOAD_CREATE_DATE DATETIME
    
    , CONSTRAINT OLE_PUR_PO_LOAD_SUM_TP1 PRIMARY KEY(PO_LOAD_SUM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_PO_PRFL_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_PRFL_T
/

CREATE TABLE OLE_PUR_PO_PRFL_T
(
      PRFL_ID DECIMAL(10)
        , PRFL_NM VARCHAR(200) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_PUR_PO_PRFL_TP1 PRIMARY KEY(PRFL_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_PO_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_TYP_T
/

CREATE TABLE OLE_PUR_PO_TYP_T
(
      OLE_PO_TYPE_ID DECIMAL(8)
        , OLE_PO_TYPE VARCHAR(250) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
        , DESC_TXT VARCHAR(1000)
    
    , CONSTRAINT OLE_PUR_PO_TYP_TP1 PRIMARY KEY(OLE_PO_TYPE_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_COR_LN_ITM_DOC_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_COR_LN_ITM_DOC_T
/

CREATE TABLE OLE_PUR_RCVNG_COR_LN_ITM_DOC_T
(
      OLE_PUR_RCVNG_LN_ITM_DOC_ID DECIMAL(10)
        , RCVNG_COR_ITM_ID DECIMAL(10)
        , OLE_DOCUMENT_UUID VARCHAR(50) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36)
    
    , CONSTRAINT OLE_PUR_RCVNG_COR_LN_ITM_DOP1 PRIMARY KEY(OLE_PUR_RCVNG_LN_ITM_DOC_ID,RCVNG_COR_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_COR_LN_ITM_EXC_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_COR_LN_ITM_EXC_T
/

CREATE TABLE OLE_PUR_RCVNG_COR_LN_ITM_EXC_T
(
      OLE_RCVNG_COR_LN_ITM_EXC_ID DECIMAL(10)
        , RCVNG_LN_ITM_ID DECIMAL(10)
        , OLE_RCVNG_LN_ITM_EXC_MDOC_ID DECIMAL(8) NOT NULL
        , OLE_COR_EXC_NTE VARCHAR(2000) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_PUR_RCVNG_COR_LN_ITM_EXP1 PRIMARY KEY(OLE_RCVNG_COR_LN_ITM_EXC_ID,RCVNG_LN_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_COR_LN_ITM_NTE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_COR_LN_ITM_NTE_T
/

CREATE TABLE OLE_PUR_RCVNG_COR_LN_ITM_NTE_T
(
      OLE_RCVNG_COR_LN_ITM_NTE_ID DECIMAL(10)
        , RCVNG_COR_ITM_ID DECIMAL(10)
        , OLE_NTE VARCHAR(2000) NOT NULL
        , OLE_NTE_TYP_ID DECIMAL(10)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_PUR_RCVNG_COR_LN_ITM_NTP1 PRIMARY KEY(OLE_RCVNG_COR_LN_ITM_NTE_ID,RCVNG_COR_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_LN_ITM_DOC_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_LN_ITM_DOC_T
/

CREATE TABLE OLE_PUR_RCVNG_LN_ITM_DOC_T
(
      OLE_PUR_RCVNG_LN_ITM_DOC_ID DECIMAL(10)
        , RCVNG_LN_ITM_ID DECIMAL(10)
        , OLE_DOCUMENT_UUID VARCHAR(50) NOT NULL
    
    , CONSTRAINT OLE_PUR_RCVNG_LN_ITM_DOC_TP1 PRIMARY KEY(OLE_PUR_RCVNG_LN_ITM_DOC_ID,RCVNG_LN_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_LN_ITM_EXC_MDC_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_LN_ITM_EXC_MDC_T
/

CREATE TABLE OLE_PUR_RCVNG_LN_ITM_EXC_MDC_T
(
      OLE_RCVNG_LN_ITM_EXC_MDOC_ID DECIMAL(8)
        , OLE_RCVNG_LN_ITM_EXC VARCHAR(100) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_PUR_RCVNG_LN_ITM_EXC_MDP1 PRIMARY KEY(OLE_RCVNG_LN_ITM_EXC_MDOC_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_LN_ITM_EXC_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_LN_ITM_EXC_T
/

CREATE TABLE OLE_PUR_RCVNG_LN_ITM_EXC_T
(
      OLE_PUR_RCVNG_LN_ITM_EXC_ID DECIMAL(10)
        , RCVNG_LN_ITM_ID DECIMAL(10)
        , OLE_RCVNG_LN_ITM_EXC_MDOC_ID DECIMAL(8) NOT NULL
        , OLE_EXC_NTE VARCHAR(2000)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_PUR_RCVNG_LN_ITM_EXC_TP1 PRIMARY KEY(OLE_PUR_RCVNG_LN_ITM_EXC_ID,RCVNG_LN_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_LN_ITM_NTE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_LN_ITM_NTE_T
/

CREATE TABLE OLE_PUR_RCVNG_LN_ITM_NTE_T
(
      OLE_RCVNG_LN_ITM_NTE_ID DECIMAL(10)
        , RCVNG_LN_ITM_ID DECIMAL(10)
        , OLE_NTE VARCHAR(2000) NOT NULL
        , OLE_NTE_TYP_ID DECIMAL(10)
        , OLE_NTE_ACK VARCHAR(1)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_PUR_RCVNG_LN_ITM_NTE_TP1 PRIMARY KEY(OLE_RCVNG_LN_ITM_NTE_ID,RCVNG_LN_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_REQS_ITM_T_NTE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_REQS_ITM_T_NTE_T
/

CREATE TABLE OLE_PUR_REQS_ITM_T_NTE_T
(
      OLE_REQ_ITM_NTE_ID DECIMAL(10)
        , REQS_ITM_ID DECIMAL(10)
        , OLE_NTE VARCHAR(2000) NOT NULL
        , OLE_NTE_TYP_ID DECIMAL(10)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_PUR_REQS_ITM_T_NTE_TP1 PRIMARY KEY(OLE_REQ_ITM_NTE_ID,REQS_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_REQ_RCPT_STATUS_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_REQ_RCPT_STATUS_T
/

CREATE TABLE OLE_PUR_REQ_RCPT_STATUS_T
(
      OLE_REQ_RCPT_STATUS_ID DECIMAL(10)
        , OLE_REQ_RCPT_STATUS_DOC_TYP VARCHAR(200) NOT NULL
        , OLE_REQ_RCPT_STATUS_CD VARCHAR(100) NOT NULL
        , OLE_REQ_RCPT_STATUS_NM VARCHAR(200) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_PUR_REQ_RCPT_STATUS_TP1 PRIMARY KEY(OLE_REQ_RCPT_STATUS_ID)

    , CONSTRAINT OLE_REQ_RCPT_STS_CD_TC0 UNIQUE (OLE_REQ_RCPT_STATUS_DOC_TYP, OLE_REQ_RCPT_STATUS_CD)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_REQ_SRC_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_REQ_SRC_TYP_T
/

CREATE TABLE OLE_PUR_REQ_SRC_TYP_T
(
      OLE_REQ_SRC_TYP_ID DECIMAL(8)
        , OLE_REQ_SRC_TYPE VARCHAR(45)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT OLE_PUR_REQ_SRC_TYP_TP1 PRIMARY KEY(OLE_REQ_SRC_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_RQSTR_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_RQSTR_TYP_T
/

CREATE TABLE OLE_RQSTR_TYP_T
(
      OLE_RQSTR_TYP_ID DECIMAL(8)
        , OLE_RQSTR_TYP VARCHAR(100)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT OLE_RQSTR_TYP_TP1 PRIMARY KEY(OLE_RQSTR_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_VNDR_ALIAS_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_ALIAS_TYP_T
/

CREATE TABLE OLE_VNDR_ALIAS_TYP_T
(
      OLE_ALIAS_TYP_ID DECIMAL(8)
        , OLE_ALIAS_TYP VARCHAR(100) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
        , DESC_TXT VARCHAR(500)
    
    , CONSTRAINT OLE_VNDR_ALIAS_TYP_TP1 PRIMARY KEY(OLE_ALIAS_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_VNDR_TRANS_FRMT_T
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_TRANS_FRMT_T
/

CREATE TABLE OLE_VNDR_TRANS_FRMT_T
(
      OLE_VNDR_TRANS_FRMT_ID DECIMAL(8)
        , OLE_VNDR_TRANS_FRMT VARCHAR(200) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT OLE_VNDR_TRANS_FRMT_TP1 PRIMARY KEY(OLE_VNDR_TRANS_FRMT_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_VNDR_TRANS_FRMT_TYP_INT_T
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_TRANS_FRMT_TYP_INT_T
/

CREATE TABLE OLE_VNDR_TRANS_FRMT_TYP_INT_T
(
      VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , OLE_VNDR_TRANS_FRMT_ID DECIMAL(8)
        , OLE_PRF_TRANS_FRMT_TYP VARCHAR(1) NOT NULL
        , OLE_TRANS_TYP_ADD VARCHAR(700)
        , OLE_TRANS_USR_NM VARCHAR(45)
        , OLE_TRANS_PW VARCHAR(45)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , ROW_ACT_IND VARCHAR(1) NOT NULL
        , OLE_TRANS_TYP_ID DECIMAL(10)
    
    , CONSTRAINT OLE_VNDR_TRANS_FRMT_TYP_INTP1 PRIMARY KEY(VNDR_DTL_ASND_ID,VNDR_HDR_GNRTD_ID,OLE_VNDR_TRANS_FRMT_ID,OLE_TRANS_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_VNDR_TRANS_TYP_T
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_TRANS_TYP_T
/

CREATE TABLE OLE_VNDR_TRANS_TYP_T
(
      OLE_TRANS_TYP_ID DECIMAL(10)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , OLE_TRANS_TYP VARCHAR(45)
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_VNDR_TRANS_TYP_TP1 PRIMARY KEY(OLE_TRANS_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_LIC_REQ_DET_T
# -----------------------------------------------------------------------
drop table if exists OLE_LIC_REQ_DET_T
/

CREATE TABLE OLE_LIC_REQ_DET_T
(
      OLE_LIC_REQ_DET_ID DECIMAL(10)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , OLE_REQ_DOC_NUM VARCHAR(14)
        , OLE_LIC_DOC_NUM VARCHAR(14)
    
    , CONSTRAINT OLE_LIC_REQ_DET_TP1 PRIMARY KEY(OLE_LIC_REQ_DET_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_ACCTG_CHG_CD_T
# -----------------------------------------------------------------------
drop table if exists PDP_ACCTG_CHG_CD_T
/

CREATE TABLE PDP_ACCTG_CHG_CD_T
(
      ACCTG_CHG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCTG_CHG_CD_DESC VARCHAR(50) NOT NULL
    
    , CONSTRAINT PDP_ACCTG_CHG_CD_TP1 PRIMARY KEY(ACCTG_CHG_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_ACH_ACCT_NBR_T
# -----------------------------------------------------------------------
drop table if exists PDP_ACH_ACCT_NBR_T
/

CREATE TABLE PDP_ACH_ACCT_NBR_T
(
      PMT_GRP_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACH_BNK_ACCT_NBR VARCHAR(255)
        , LST_UPDT_TS DATETIME NOT NULL
    
    , CONSTRAINT PDP_ACH_ACCT_NBR_TP1 PRIMARY KEY(PMT_GRP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_ACH_BNK_T
# -----------------------------------------------------------------------
drop table if exists PDP_ACH_BNK_T
/

CREATE TABLE PDP_ACH_BNK_T
(
      BNK_RTNG_NBR VARCHAR(9)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BNK_OFFC_CD VARCHAR(1)
        , BNK_SRVC_NBR VARCHAR(9)
        , BNK_TYP_CD VARCHAR(1)
        , BNK_NEW_RTNG_NBR VARCHAR(9)
        , BNK_NM VARCHAR(40)
        , BNK_STR_ADDR VARCHAR(45)
        , BNK_CTY_NM VARCHAR(50)
        , BNK_ST_CD VARCHAR(2)
        , BNK_ZIP_CD VARCHAR(20)
        , BNK_PHN_AREA_CD VARCHAR(3)
        , BNK_PHN_PRFX_NBR VARCHAR(3)
        , BNK_PHN_SFX_NBR VARCHAR(4)
        , BNK_INST_STAT_CD VARCHAR(1)
        , BNK_DTA_V_CD VARCHAR(1)
        , ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT PDP_ACH_BNK_TP1 PRIMARY KEY(BNK_RTNG_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_ACH_TRANS_CD_T
# -----------------------------------------------------------------------
drop table if exists PDP_ACH_TRANS_CD_T
/

CREATE TABLE PDP_ACH_TRANS_CD_T
(
      TRANS_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TRANS_DESC VARCHAR(100)
    
    , CONSTRAINT PDP_ACH_TRANS_CD_TP1 PRIMARY KEY(TRANS_CD)

    , CONSTRAINT PDP_ACH_TRANS_CD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_ACH_TRANS_TYP_T
# -----------------------------------------------------------------------
drop table if exists PDP_ACH_TRANS_TYP_T
/

CREATE TABLE PDP_ACH_TRANS_TYP_T
(
      TRANS_TYP VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , TRANS_TYP_DESC VARCHAR(50) NOT NULL
    
    , CONSTRAINT PDP_ACH_TRANS_TYP_TP1 PRIMARY KEY(TRANS_TYP)

    , CONSTRAINT PDP_ACH_TRANS_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_CUST_BNK_T
# -----------------------------------------------------------------------
drop table if exists PDP_CUST_BNK_T
/

CREATE TABLE PDP_CUST_BNK_T
(
      CUST_ID DECIMAL(8)
        , DISB_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BNK_CD VARCHAR(4) NOT NULL
        , ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT PDP_CUST_BNK_TP1 PRIMARY KEY(CUST_ID,DISB_TYP_CD)

    , CONSTRAINT PDP_CUST_BNK_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_CUST_PRFL_T
# -----------------------------------------------------------------------
drop table if exists PDP_CUST_PRFL_T
/

CREATE TABLE PDP_CUST_PRFL_T
(
      CUST_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , UNT_CD VARCHAR(4) NOT NULL
        , SBUNT_CD VARCHAR(4) NOT NULL
        , CUST_DESC VARCHAR(50)
        , CUST_ACTV_IND VARCHAR(1)
        , CUST_PRCS_EMAIL_ADDR VARCHAR(200)
        , PMT_THRSHLD_AMT DECIMAL(19,2)
        , CUST_PMT_THRSHLD_EMAIL_ADDR VARCHAR(200)
        , FL_THRSHLD_AMT DECIMAL(19,2)
        , CUST_FILE_THRSHLD_EMAIL_ADDR VARCHAR(200)
        , DFLT_COA_CD VARCHAR(2) NOT NULL
        , DFLT_ACCT_NBR VARCHAR(7) NOT NULL
        , DFLT_SUB_ACCT_NBR VARCHAR(5) NOT NULL
        , DFLT_OBJ_CD VARCHAR(4) NOT NULL
        , DFLT_SUB_OBJ_CD VARCHAR(3) NOT NULL
        , ADV_CRTE_IND VARCHAR(1)
        , ACH_PMT_DESC VARCHAR(100)
        , ACH_TRANS_TYP VARCHAR(4)
        , CUST_CNTC_FULL_NM VARCHAR(123)
        , CUST_LN1_ADDR VARCHAR(55)
        , CUST_LN2_ADDR VARCHAR(55)
        , CUST_LN3_ADDR VARCHAR(55)
        , CUST_LN4_ADDR VARCHAR(55)
        , CUST_CTY_NM VARCHAR(50)
        , CUST_ST_CD VARCHAR(2)
        , CUST_ZIP_CD VARCHAR(20)
        , CUST_CNTRY_CD VARCHAR(10)
        , CHK_HDR_NTE_LN1_TXT VARCHAR(90)
        , CHK_HDR_NTE_LN2_TXT VARCHAR(90)
        , CHK_HDR_NTE_LN3_TXT VARCHAR(90)
        , CHK_HDR_NTE_LN4_TXT VARCHAR(90)
        , ADDL_CHK_NTE_LN1_TXT VARCHAR(90)
        , ADDL_CHK_NTE_LN2_TXT VARCHAR(90)
        , ADDL_CHK_NTE_LN3_TXT VARCHAR(90)
        , ADDL_CHK_NTE_LN4_TXT VARCHAR(90)
        , ADV_HDR_TXT VARCHAR(400)
        , ADV_SUBJ_LN_TXT VARCHAR(40)
        , ADV_RTRN_EMAIL_ADDR VARCHAR(200)
        , DFLT_PHYS_CMP_PROC_CD VARCHAR(2)
        , CUST_NRA_RVW_IND VARCHAR(1) NOT NULL
        , ACCTG_EDIT_REQ_IND VARCHAR(1) NOT NULL
        , CUST_EMP_CHK_IND VARCHAR(1) NOT NULL
        , CUST_OWNR_CD_REQ_IND VARCHAR(1) NOT NULL
        , CUST_PAYEE_ID_REQ_IND VARCHAR(1) NOT NULL
        , FIN_OBJECT_CD_LBLTY_RLF_CD VARCHAR(1)
        , ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT PDP_CUST_PRFL_TP1 PRIMARY KEY(CUST_ID)

    , CONSTRAINT PDP_CUST_PRFL_TC1 UNIQUE (FIN_COA_CD, UNT_CD, SBUNT_CD)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_DISB_NBR_RNG_T
# -----------------------------------------------------------------------
drop table if exists PDP_DISB_NBR_RNG_T
/

CREATE TABLE PDP_DISB_NBR_RNG_T
(
      OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PHYS_CMP_PROC_CD VARCHAR(2)
        , BEG_DISB_NBR DECIMAL(9) NOT NULL
        , LST_ASND_DISB_NBR DECIMAL(9) NOT NULL
        , END_DISB_NBR DECIMAL(9) NOT NULL
        , DISB_NBR_RNG_START_DT DATETIME
        , BNK_CD VARCHAR(4)
        , DISB_TYP_CD VARCHAR(4)
        , ACTV_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT PDP_DISB_NBR_RNG_TP1 PRIMARY KEY(PHYS_CMP_PROC_CD,DISB_NBR_RNG_START_DT,BNK_CD,DISB_TYP_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_DISB_TYP_CD_T
# -----------------------------------------------------------------------
drop table if exists PDP_DISB_TYP_CD_T
/

CREATE TABLE PDP_DISB_TYP_CD_T
(
      DISB_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DISB_TYP_DESC VARCHAR(25) NOT NULL
    
    , CONSTRAINT PDP_DISB_TYP_CD_TP1 PRIMARY KEY(DISB_TYP_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_FIL_T
# -----------------------------------------------------------------------
drop table if exists PDP_FIL_T
/

CREATE TABLE PDP_FIL_T
(
      PMT_FIL_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_FL_NM VARCHAR(30)
        , CUST_FL_CRTN_TS DATETIME
        , PMT_CNT DECIMAL(5)
        , PMT_TOT_AMT DECIMAL(19,2)
        , SBMTR_USR_ID VARCHAR(40)
        , FL_PROC_TS DATETIME
        , CUST_ID DECIMAL(8)
        , LST_UPDT_TS DATETIME NOT NULL
    
    , CONSTRAINT PDP_FIL_TP1 PRIMARY KEY(PMT_FIL_ID)





    
                                                                                                                                                                                                                                                                                
                                    
, INDEX PDP_FIL_TI2 (CUST_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_FMT_PROC_T
# -----------------------------------------------------------------------
drop table if exists PDP_FMT_PROC_T
/

CREATE TABLE PDP_FMT_PROC_T
(
      PHYS_CMP_PROC_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BEG_PROC_TS DATETIME NOT NULL
        , LST_UPDT_TS DATETIME NOT NULL
        , PMT_PROC_ID DECIMAL(8)
    
    , CONSTRAINT PDP_FMT_PROC_TP1 PRIMARY KEY(PHYS_CMP_PROC_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_GL_PENDING_ENTRY_T
# -----------------------------------------------------------------------
drop table if exists PDP_GL_PENDING_ENTRY_T
/

CREATE TABLE PDP_GL_PENDING_ENTRY_T
(
      GL_PENDING_ENTRY_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FS_ORIGIN_CD VARCHAR(2) NOT NULL
        , FDOC_NBR VARCHAR(14) NOT NULL
        , TRN_ENTR_SEQ_NBR DECIMAL(5)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCOUNT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_BALANCE_TYP_CD VARCHAR(2)
        , FIN_OBJ_TYP_CD VARCHAR(2)
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , TRN_LDGR_ENTR_DESC VARCHAR(40)
        , TRN_LDGR_ENTR_AMT DECIMAL(19,2)
        , TRN_DEBIT_CRDT_CD VARCHAR(1)
        , TRANSACTION_DT DATETIME
        , FDOC_TYP_CD VARCHAR(8)
        , ORG_DOC_NBR VARCHAR(10)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , FDOC_REF_TYP_CD VARCHAR(8)
        , FS_REF_ORIGIN_CD VARCHAR(2)
        , FDOC_REF_NBR VARCHAR(14)
        , FDOC_REVERSAL_DT DATETIME
        , TRN_ENCUM_UPDT_CD VARCHAR(1)
        , FDOC_APPROVED_CD VARCHAR(1)
        , ACCT_SF_FINOBJ_CD VARCHAR(4)
        , TRN_ENTR_OFST_CD VARCHAR(1)
        , TRN_EXTRT_IND VARCHAR(1) default 'N' NOT NULL
    
    , CONSTRAINT PDP_GL_PENDING_ENTRY_TP1 PRIMARY KEY(GL_PENDING_ENTRY_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PAYEE_ACH_ACCT_T
# -----------------------------------------------------------------------
drop table if exists PDP_PAYEE_ACH_ACCT_T
/

CREATE TABLE PDP_PAYEE_ACH_ACCT_T
(
      ACH_ACCT_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BNK_RTNG_NBR VARCHAR(9)
        , BNK_ACCT_NBR VARCHAR(255)
        , PAYEE_NM VARCHAR(123)
        , PAYEE_EMAIL_ADDR VARCHAR(200)
        , PAYEE_ID_TYP_CD VARCHAR(1)
        , ACH_TRANS_TYP VARCHAR(4)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
        , BNK_ACCT_TYP_CD VARCHAR(2)
        , PAYEE_ID_NBR VARCHAR(40) default '1' NOT NULL
    
    , CONSTRAINT PDP_PAYEE_ACH_ACCT_TP1 PRIMARY KEY(ACH_ACCT_GNRTD_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PAYEE_TYP_T
# -----------------------------------------------------------------------
drop table if exists PDP_PAYEE_TYP_T
/

CREATE TABLE PDP_PAYEE_TYP_T
(
      PAYEE_TYP_CD VARCHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PAYEE_TYP_DESC VARCHAR(40) NOT NULL
        , ACH_ELGBL_IND VARCHAR(1) default 'N'
    
    , CONSTRAINT PDP_PAYEE_TYP_TP1 PRIMARY KEY(PAYEE_TYP_CD)

    , CONSTRAINT PDP_PAYEE_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_ACCT_DTL_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_ACCT_DTL_T
/

CREATE TABLE PDP_PMT_ACCT_DTL_T
(
      PMT_ACCT_DTL_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5) NOT NULL
        , FIN_SUB_OBJ_CD VARCHAR(3) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , ORG_REFERENCE_ID VARCHAR(8)
        , PROJECT_CD VARCHAR(10) NOT NULL
        , ACCT_NET_AMT DECIMAL(19,2) NOT NULL
        , PMT_DTL_ID DECIMAL(8) NOT NULL
        , LST_UPDT_TS DATETIME NOT NULL
    
    , CONSTRAINT PDP_PMT_ACCT_DTL_TP1 PRIMARY KEY(PMT_ACCT_DTL_ID)





    
                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PDP_PMT_ACCT_DTL_TI2 (PMT_DTL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_ACCT_HIST_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_ACCT_HIST_T
/

CREATE TABLE PDP_PMT_ACCT_HIST_T
(
      PMT_ACCT_HIST_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACCTG_CHG_CD VARCHAR(4)
        , ACCT_ATTRIB_NM VARCHAR(25)
        , ACCT_ATTRIB_ORIG_VAL VARCHAR(15)
        , ACCT_ATTRIB_NEW_VAL VARCHAR(15)
        , ACCT_CHG_TS DATETIME
        , PMT_ACCT_DTL_ID DECIMAL(8)
        , LST_UPDT_TS DATETIME NOT NULL
    
    , CONSTRAINT PDP_PMT_ACCT_HIST_TP1 PRIMARY KEY(PMT_ACCT_HIST_ID)





    
                                                                                                                                                                                                                                                            
                                    
, INDEX PDP_PMT_ACCT_HIST_TI2 (PMT_ACCT_DTL_ID )
    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX PDP_PMT_ACCT_HIST_TI3 (ACCTG_CHG_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_CHG_CD_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_CHG_CD_T
/

CREATE TABLE PDP_PMT_CHG_CD_T
(
      PMT_CHG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_CHG_CD_DESC VARCHAR(50) NOT NULL
    
    , CONSTRAINT PDP_PMT_CHG_CD_TP1 PRIMARY KEY(PMT_CHG_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_DTL_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_DTL_T
/

CREATE TABLE PDP_PMT_DTL_T
(
      PMT_DTL_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_PMT_DOC_NBR VARCHAR(14)
        , LST_UPDT_TS DATETIME NOT NULL
        , INV_NBR VARCHAR(25)
        , PO_NBR VARCHAR(9)
        , INV_DT DATETIME NOT NULL
        , PMT_GRP_ID DECIMAL(8)
        , REQS_NBR VARCHAR(8)
        , ORG_DOC_NBR VARCHAR(10)
        , ORIG_INV_AMT DECIMAL(19,2) NOT NULL
        , NET_PMT_AMT DECIMAL(19,2) NOT NULL
        , INV_TOT_DSCT_AMT DECIMAL(14,2) NOT NULL
        , INV_TOT_SHP_AMT DECIMAL(19,2) NOT NULL
        , INV_TOT_OTHR_DEBIT_AMT DECIMAL(19,2) NOT NULL
        , INV_TOT_OTHR_CRDT_AMT DECIMAL(19,2) NOT NULL
        , PDP_PRM_PMT_CNCL_IND VARCHAR(1)
        , FDOC_TYP_CD VARCHAR(8)
        , FS_ORIGIN_CD VARCHAR(2)
        , CUST_INST_NBR VARCHAR(30)
        , OLE_PMT_MTHD_CDE VARCHAR(100)
    
    , CONSTRAINT PDP_PMT_DTL_TP1 PRIMARY KEY(PMT_DTL_ID)





    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PDP_PMT_DTL_TI2 (PMT_GRP_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PDP_PMT_DTL_TI3 (CUST_PMT_DOC_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_GRP_HIST_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_GRP_HIST_T
/

CREATE TABLE PDP_PMT_GRP_HIST_T
(
      PMT_GRP_HIST_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_CHG_CD VARCHAR(4)
        , PMT_CHG_NTE_TXT VARCHAR(250)
        , PMT_CHG_USR_ID VARCHAR(40)
        , PMT_CHG_TS DATETIME
        , ORIG_PMT_STAT_CD VARCHAR(4)
        , ORIG_PMT_DT DATETIME
        , ORIG_ACH_BNK_RTNG_NBR VARCHAR(9)
        , ORIG_ADV_EMAIL_ADDR VARCHAR(50)
        , ORIG_DISB_NBR DECIMAL(9)
        , ORIG_DISB_TS DATETIME
        , ORIG_PROC_IMD_IND VARCHAR(1)
        , ORIG_PMT_SPCL_HANDLG_IND VARCHAR(1)
        , PMT_CNCL_EXTRT_TS DATETIME
        , ORIG_DISB_TYP_CD VARCHAR(4)
        , PMT_CNCL_EXTRT_STAT_IND VARCHAR(1)
        , ORIG_PROC_ID DECIMAL(8)
        , PMT_GRP_ID DECIMAL(8)
        , LST_UPDT_TS DATETIME NOT NULL
        , ORIG_BNK_CD VARCHAR(4)
    
    , CONSTRAINT PDP_PMT_GRP_HIST_TP1 PRIMARY KEY(PMT_GRP_HIST_ID)





    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PDP_PMT_GRP_HIST_TI3 (ORIG_PMT_STAT_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PDP_PMT_GRP_HIST_TI4 (PMT_CHG_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PDP_PMT_GRP_HIST_TI6 (ORIG_DISB_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PDP_PMT_GRP_HIST_TI7 (ORIG_PROC_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PDP_PMT_GRP_HIST_TI8 (PMT_GRP_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_GRP_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_GRP_T
/

CREATE TABLE PDP_PMT_GRP_T
(
      PMT_GRP_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_PAYEE_NM VARCHAR(123)
        , DISB_NBR DECIMAL(9)
        , PAYEE_ID VARCHAR(25)
        , DISB_TS DATETIME
        , PAYEE_ID_TYP_CD VARCHAR(1)
        , PHYS_CMP_PROC_CD VARCHAR(2)
        , PMT_SORT_ORD_VAL VARCHAR(150)
        , ALTRNT_PAYEE_ID VARCHAR(25)
        , ALTRNT_PAYEE_ID_TYP_CD VARCHAR(1)
        , PMT_ACH_EXTRT_TS DATETIME
        , PAYEE_OWNR_CD VARCHAR(2)
        , CUST_INST_NBR VARCHAR(30)
        , PMT_LN1_ADDR VARCHAR(55)
        , PMT_LN2_ADDR VARCHAR(55)
        , PMT_LN3_ADDR VARCHAR(55)
        , PMT_LN4_ADDR VARCHAR(55)
        , PMT_CTY_NM VARCHAR(50)
        , PMT_ZIP_CD VARCHAR(20)
        , PMT_ST_NM VARCHAR(30)
        , CMP_ADDR_IND VARCHAR(1)
        , PMT_DT DATETIME
        , PMT_CNTRY_NM VARCHAR(30)
        , PMT_ATTCHMNT_IND VARCHAR(1)
        , PMT_SPCL_HANDLG_IND VARCHAR(1)
        , PMT_TXBL_IND VARCHAR(1)
        , NRA_PMT_IND VARCHAR(1)
        , PROC_IMD_IND VARCHAR(1)
        , CUST_ACCT_TYP_CD VARCHAR(2)
        , ACH_BNK_RTNG_NBR VARCHAR(9)
        , ADV_EMAIL_ADDR VARCHAR(200)
        , EMP_IND VARCHAR(1)
        , PMT_FIL_ID DECIMAL(8)
        , DISB_TYP_CD VARCHAR(4)
        , PMT_STAT_CD VARCHAR(4)
        , LST_UPDT_TS DATETIME NOT NULL
        , PROC_ID DECIMAL(8)
        , PMT_GRP_CMB_IND VARCHAR(1) NOT NULL
        , ADV_EMAIL_SNT_TS DATETIME
        , PDP_EPIC_PMT_CNCL_EXTRT_TS DATETIME
        , PDP_EPIC_PMT_PD_EXTRT_TS DATETIME
        , BNK_CD VARCHAR(4)
        , VNDR_ALIAS_NM VARCHAR(45)
    
    , CONSTRAINT PDP_PMT_GRP_TP1 PRIMARY KEY(PMT_GRP_ID)





    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PDP_PMT_GRP_TI2 (PMT_FIL_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PDP_PMT_GRP_TI4 (DISB_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PDP_PMT_GRP_TI5 (PMT_STAT_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PDP_PMT_GRP_TI6 (DISB_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PDP_PMT_GRP_TI7 (PMT_PAYEE_NM )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PDP_PMT_GRP_TI8 (PROC_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_NTE_TXT_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_NTE_TXT_T
/

CREATE TABLE PDP_PMT_NTE_TXT_T
(
      PMT_NTE_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CUST_NTE_LN_NBR DECIMAL(2) NOT NULL
        , CUST_NTE_TXT VARCHAR(90) NOT NULL
        , PMT_DTL_ID DECIMAL(8)
        , LST_UPDT_TS DATETIME NOT NULL
    
    , CONSTRAINT PDP_PMT_NTE_TXT_TP1 PRIMARY KEY(PMT_NTE_ID)

    , CONSTRAINT PDP_PMT_NTE_TXT_TC1 UNIQUE (PMT_DTL_ID, CUST_NTE_LN_NBR)




    
                                                                                                                                                                                                
                                    
, INDEX PDP_PMT_NTE_TXT_TI3 (PMT_DTL_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_STAT_CD_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_STAT_CD_T
/

CREATE TABLE PDP_PMT_STAT_CD_T
(
      PMT_STAT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_STAT_CD_DESC VARCHAR(25) NOT NULL
    
    , CONSTRAINT PDP_PMT_STAT_CD_TP1 PRIMARY KEY(PMT_STAT_CD)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PMT_TYP_T
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_TYP_T
/

CREATE TABLE PDP_PMT_TYP_T
(
      PMT_TYP_CD VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PMT_TYP_DESC VARCHAR(200) NOT NULL
    
    , CONSTRAINT PDP_PMT_TYP_TP1 PRIMARY KEY(PMT_TYP_CD)

    , CONSTRAINT PDP_PMT_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PROC_SUM_T
# -----------------------------------------------------------------------
drop table if exists PDP_PROC_SUM_T
/

CREATE TABLE PDP_PROC_SUM_T
(
      PROC_SUM_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DISB_TYP_CD VARCHAR(4) NOT NULL
        , PMT_SORT_ORD_VAL DECIMAL(22) NOT NULL
        , BEG_DISB_NBR DECIMAL(9) NOT NULL
        , END_DISB_NBR DECIMAL(9) NOT NULL
        , PROC_TOT_AMT DECIMAL(19,2) NOT NULL
        , PROC_TOT_CNT DECIMAL(6) NOT NULL
        , CUST_ID DECIMAL(8) NOT NULL
        , PROC_ID DECIMAL(8)
        , LST_UPDT_TS DATETIME NOT NULL
    
    , CONSTRAINT PDP_PROC_SUM_TP1 PRIMARY KEY(PROC_SUM_ID)





    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PDP_PROC_SUM_TI2 (DISB_TYP_CD )
    
                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PDP_PROC_SUM_TI3 (CUST_ID )
    
                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PDP_PROC_SUM_TI4 (PROC_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PDP_PROC_T
# -----------------------------------------------------------------------
drop table if exists PDP_PROC_T
/

CREATE TABLE PDP_PROC_T
(
      PROC_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PHYS_CMP_CD VARCHAR(2) NOT NULL
        , PROC_TS DATETIME NOT NULL
        , EXTR_TS DATETIME
        , PROC_USR_ID VARCHAR(40) NOT NULL
        , LST_UPDT_TS DATETIME NOT NULL
        , EXTRACTED_IND VARCHAR(1) default 'Y'
        , FORMATTED_IND VARCHAR(1) default 'N'
    
    , CONSTRAINT PDP_PROC_TP1 PRIMARY KEY(PROC_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_ADDR_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_ADDR_TYP_T
/

CREATE TABLE PUR_ADDR_TYP_T
(
      VNDR_ADDR_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_ADDR_TYP_DESC VARCHAR(45)
        , VNDR_DFLT_IND VARCHAR(1)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_ADDR_TYP_TP1 PRIMARY KEY(VNDR_ADDR_TYP_CD)

    , CONSTRAINT PUR_ADDR_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_AP_CMP_PARM_T
# -----------------------------------------------------------------------
drop table if exists PUR_AP_CMP_PARM_T
/

CREATE TABLE PUR_AP_CMP_PARM_T
(
      CAMPUS_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CMP_PUR_DRCTR_NM VARCHAR(45)
        , CMP_PUR_DRCTR_TTL VARCHAR(45)
        , CMP_AP_EMAIL_ADDR VARCHAR(100)
        , PUR_INST_NM VARCHAR(45)
        , PUR_DEPT_NM VARCHAR(45)
        , PUR_DEPT_LN1_ADDR VARCHAR(45)
        , PUR_DEPT_LN2_ADDR VARCHAR(45)
        , PUR_DEPT_CTY_NM VARCHAR(45)
        , PUR_DEPT_ST_CD VARCHAR(2)
        , PUR_DEPT_ZIP_CD VARCHAR(20)
        , PUR_DEPT_CNTRY_CD VARCHAR(2)
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT PUR_AP_CMP_PARM_TP1 PRIMARY KEY(CAMPUS_CD)

    , CONSTRAINT PUR_AP_CMP_PARM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_AP_CMP_PARM_TI1 (CMP_PUR_DRCTR_NM )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_AP_ITM_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_AP_ITM_TYP_T
/

CREATE TABLE PUR_AP_ITM_TYP_T
(
      ITM_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ITM_TYP_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , QTY_BSD_GL_IND VARCHAR(1) NOT NULL
        , ITM_TYP_ADDL_CHRG_IND VARCHAR(1) NOT NULL
        , TAXABLE_IND VARCHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT PUR_AP_ITM_TYP_TP1 PRIMARY KEY(ITM_TYP_CD)

    , CONSTRAINT PUR_AP_ITM_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_AP_ORG_PARM_T
# -----------------------------------------------------------------------
drop table if exists PUR_AP_ORG_PARM_T
/

CREATE TABLE PUR_AP_ORG_PARM_T
(
      FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ORG_AUTO_PO_LMT DECIMAL(19,2)
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT PUR_AP_ORG_PARM_TP1 PRIMARY KEY(FIN_COA_CD,ORG_CD)

    , CONSTRAINT PUR_AP_ORG_PARM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_AP_RECUR_PMT_FREQ_T
# -----------------------------------------------------------------------
drop table if exists PUR_AP_RECUR_PMT_FREQ_T
/

CREATE TABLE PUR_AP_RECUR_PMT_FREQ_T
(
      RECUR_PMT_FREQ_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , RECUR_PMT_FREQ_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_AP_RECUR_PMT_FREQ_TP1 PRIMARY KEY(RECUR_PMT_FREQ_CD)

    , CONSTRAINT PUR_AP_RECUR_PMT_FREQ_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_AP_RECUR_PMT_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_AP_RECUR_PMT_TYP_T
/

CREATE TABLE PUR_AP_RECUR_PMT_TYP_T
(
      RECUR_PMT_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , RECUR_PMT_TYP_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_AP_RECUR_PMT_TYP_TP1 PRIMARY KEY(RECUR_PMT_TYP_CD)

    , CONSTRAINT PUR_AP_RECUR_PMT_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_ASGN_CONTR_MGR_DTL_T
# -----------------------------------------------------------------------
drop table if exists PUR_ASGN_CONTR_MGR_DTL_T
/

CREATE TABLE PUR_ASGN_CONTR_MGR_DTL_T
(
      FDOC_NBR VARCHAR(14)
        , REQS_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CONTR_MGR_CD DECIMAL(2)
    
    , CONSTRAINT PUR_ASGN_CONTR_MGR_DTL_TP1 PRIMARY KEY(FDOC_NBR,REQS_ID)

    , CONSTRAINT PUR_ASGN_CONTR_MGR_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_ASGN_CONTR_MGR_T
# -----------------------------------------------------------------------
drop table if exists PUR_ASGN_CONTR_MGR_T
/

CREATE TABLE PUR_ASGN_CONTR_MGR_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT PUR_ASGN_CONTR_MGR_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT PUR_ASGN_CONTR_MGR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_BILL_ADDR_T
# -----------------------------------------------------------------------
drop table if exists PUR_BILL_ADDR_T
/

CREATE TABLE PUR_BILL_ADDR_T
(
      BILL_CMP_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BILL_NM VARCHAR(45) NOT NULL
        , BILL_LN1_ADDR VARCHAR(45) NOT NULL
        , BILL_LN2_ADDR VARCHAR(45)
        , BILL_CTY_NM VARCHAR(45) NOT NULL
        , BILL_ST_CD VARCHAR(2) NOT NULL
        , BILL_PSTL_CD VARCHAR(20) NOT NULL
        , BILL_CNTRY_CD VARCHAR(2) NOT NULL
        , BILL_PHN_NBR VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , BILL_EMAIL_ADDR VARCHAR(100)
    
    , CONSTRAINT PUR_BILL_ADDR_TP1 PRIMARY KEY(BILL_CMP_CD)

    , CONSTRAINT PUR_BILL_ADDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_BLK_RCVNG_T
# -----------------------------------------------------------------------
drop table if exists PUR_BLK_RCVNG_T
/

CREATE TABLE PUR_BLK_RCVNG_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_ID DECIMAL(9)
        , CARI_CD VARCHAR(4)
        , SHPMNT_PKNG_SLP_NBR VARCHAR(45)
        , SHPMNT_BLL_OF_LDNG_NBR VARCHAR(45)
        , TRAKNG_NBR VARCHAR(45)
        , SHPMNT_RCVD_DT DATETIME NOT NULL
        , SHPMNT_REF_NBR VARCHAR(45)
        , SHPMNT_WGHT VARCHAR(45)
        , CRTNS_CNT DECIMAL(10)
        , RQSTR_PRSN_NM VARCHAR(80)
        , RQSTR_PRSN_PHN_NBR VARCHAR(12)
        , RQSTR_PRSN_EMAIL_ADDR VARCHAR(100)
        , PREPR_PRSN_NM VARCHAR(123)
        , PREPR_PRSN_PHN_NBR VARCHAR(12)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_PSTL_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
        , VNDR_NTE_TXT VARCHAR(255)
        , ALTRNT_VNDR_HDR_GNRTD_ID DECIMAL(10)
        , ALTRNT_VNDR_DTL_ASND_ID DECIMAL(10)
        , GDS_DLVD_VNDR_HDR_GNRTD_ID DECIMAL(10)
        , GDS_DLVD_VNDR_DTL_ASND_ID DECIMAL(10)
        , DLVY_BLDG_CD VARCHAR(10)
        , DLVY_BLDG_NM VARCHAR(45)
        , DLVY_BLDG_RM_NBR VARCHAR(8)
        , DLVY_BLDG_LN1_ADDR VARCHAR(45)
        , DLVY_BLDG_LN2_ADDR VARCHAR(45)
        , DLVY_CTY_NM VARCHAR(45)
        , DLVY_ST_CD VARCHAR(2)
        , DLVY_PSTL_CD VARCHAR(20)
        , DLVY_CNTRY_CD VARCHAR(2)
        , DLVY_TO_NM VARCHAR(45)
        , DLVY_TO_EMAIL_ADDR VARCHAR(100)
        , DLVY_TO_PHN_NBR VARCHAR(45)
        , DLVY_CMP_CD VARCHAR(2)
        , DLVY_INSTRC_TXT VARCHAR(255)
        , DLVY_ADDL_INSTRC_TXT VARCHAR(255)
        , INST_CNTCT_NM VARCHAR(45)
        , INST_CNTCT_PHN_NBR VARCHAR(45)
        , INST_CNTCT_EMAIL_ADDR VARCHAR(100)
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , DLVY_BLDG_OTHR_IND VARCHAR(1)
    
    , CONSTRAINT PUR_BLK_RCVNG_TP1 PRIMARY KEY(FDOC_NBR)





    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_BLK_RCVNG_TI1 (AP_PUR_DOC_LNK_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_CARI_T
# -----------------------------------------------------------------------
drop table if exists PUR_CARI_T
/

CREATE TABLE PUR_CARI_T
(
      CARI_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CARI_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_CARI_TP1 PRIMARY KEY(CARI_CD)

    , CONSTRAINT PUR_CARI_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_CNTCT_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_CNTCT_TYP_T
/

CREATE TABLE PUR_CNTCT_TYP_T
(
      VNDR_CNTCT_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_CNTCT_TYP_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_CNTCT_TYP_TP1 PRIMARY KEY(VNDR_CNTCT_TYP_CD)

    , CONSTRAINT PUR_CNTCT_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_COMM_CONTR_MGR_T
# -----------------------------------------------------------------------
drop table if exists PUR_COMM_CONTR_MGR_T
/

CREATE TABLE PUR_COMM_CONTR_MGR_T
(
      PUR_COMM_CD VARCHAR(40)
        , CAMPUS_CD VARCHAR(2)
        , CONTR_MGR_CD DECIMAL(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CONTR_MGR_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT PUR_COMM_CONTR_MGR_TP1 PRIMARY KEY(PUR_COMM_CD,CAMPUS_CD,CONTR_MGR_CD)

    , CONSTRAINT PUR_COMM_CONTR_MGR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_COMM_T
# -----------------------------------------------------------------------
drop table if exists PUR_COMM_T
/

CREATE TABLE PUR_COMM_T
(
      PUR_COMM_CD VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PUR_COMM_DESC VARCHAR(200) NOT NULL
        , PUR_SALES_TAX_IND VARCHAR(1)
        , ITM_RSTRC_IND VARCHAR(1)
        , SNSTV_DTA_CD VARCHAR(4)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_COMM_TP1 PRIMARY KEY(PUR_COMM_CD)

    , CONSTRAINT PUR_COMM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_CONTR_MGR_T
# -----------------------------------------------------------------------
drop table if exists PUR_CONTR_MGR_T
/

CREATE TABLE PUR_CONTR_MGR_T
(
      CONTR_MGR_CD DECIMAL(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CONTR_MGR_NM VARCHAR(45) NOT NULL
        , CONTR_MGR_PHN_NBR VARCHAR(45) NOT NULL
        , CONTR_MGR_FAX_NBR VARCHAR(45) NOT NULL
        , CONTR_MGR_DLGN_DLR_LMT DECIMAL(19,2)
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT PUR_CONTR_MGR_TP1 PRIMARY KEY(CONTR_MGR_CD)

    , CONSTRAINT PUR_CONTR_MGR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_CPTL_AST_SYS_ST_T
# -----------------------------------------------------------------------
drop table if exists PUR_CPTL_AST_SYS_ST_T
/

CREATE TABLE PUR_CPTL_AST_SYS_ST_T
(
      CPTL_AST_SYS_ST_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTL_AST_SYS_ST_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1)
    
    , CONSTRAINT PUR_CPTL_AST_SYS_ST_TP1 PRIMARY KEY(CPTL_AST_SYS_ST_CD)

    , CONSTRAINT PUR_CPTL_AST_SYS_ST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_CPTL_AST_SYS_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_CPTL_AST_SYS_TYP_T
/

CREATE TABLE PUR_CPTL_AST_SYS_TYP_T
(
      CPTL_AST_SYS_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTL_AST_SYS_TYP_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_CPTL_AST_SYS_TYP_TP1 PRIMARY KEY(CPTL_AST_SYS_TYP_CD)

    , CONSTRAINT PUR_CPTL_AST_SYS_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_DFLT_PRNCPL_ADDR_T
# -----------------------------------------------------------------------
drop table if exists PUR_DFLT_PRNCPL_ADDR_T
/

CREATE TABLE PUR_DFLT_PRNCPL_ADDR_T
(
      PRNCPL_ID VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
    
    , CONSTRAINT PUR_DFLT_PRNCPL_ADDR_TP1 PRIMARY KEY(PRNCPL_ID)

    , CONSTRAINT PUR_DFLT_PRNCPL_ADDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_DLVY_REQ_DT_REAS_T
# -----------------------------------------------------------------------
drop table if exists PUR_DLVY_REQ_DT_REAS_T
/

CREATE TABLE PUR_DLVY_REQ_DT_REAS_T
(
      DLVY_REQ_DT_REAS_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DLVY_REQ_DT_REAS_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_DLVY_REQ_DT_REAS_TP1 PRIMARY KEY(DLVY_REQ_DT_REAS_CD)

    , CONSTRAINT PUR_DLVY_REQ_DT_REAS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_FND_SRC_T
# -----------------------------------------------------------------------
drop table if exists PUR_FND_SRC_T
/

CREATE TABLE PUR_FND_SRC_T
(
      FND_SRC_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FND_SRC_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_FND_SRC_TP1 PRIMARY KEY(FND_SRC_CD)

    , CONSTRAINT PUR_FND_SRC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_ITM_REAS_ADD_T
# -----------------------------------------------------------------------
drop table if exists PUR_ITM_REAS_ADD_T
/

CREATE TABLE PUR_ITM_REAS_ADD_T
(
      ITM_REAS_ADD_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ITM_REAS_ADD_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_ITM_REAS_ADD_TP1 PRIMARY KEY(ITM_REAS_ADD_CD)

    , CONSTRAINT PUR_ITM_REAS_ADD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_OWNR_CTGRY_T
# -----------------------------------------------------------------------
drop table if exists PUR_OWNR_CTGRY_T
/

CREATE TABLE PUR_OWNR_CTGRY_T
(
      VNDR_OWNR_CTGRY_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_OWNR_CTGRY_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_OWNR_CTGRY_TP1 PRIMARY KEY(VNDR_OWNR_CTGRY_CD)

    , CONSTRAINT PUR_OWNR_CTGRY_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_OWNR_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_OWNR_TYP_T
/

CREATE TABLE PUR_OWNR_TYP_T
(
      VNDR_OWNR_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_OWNR_DESC VARCHAR(45)
        , VNDR_OWNR_CTGRY_ALLW_IND VARCHAR(1)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_OWNR_TYP_TP1 PRIMARY KEY(VNDR_OWNR_CD)

    , CONSTRAINT PUR_OWNR_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PHN_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_PHN_TYP_T
/

CREATE TABLE PUR_PHN_TYP_T
(
      VNDR_PHN_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_PHN_TYP_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_PHN_TYP_TP1 PRIMARY KEY(VNDR_PHN_TYP_CD)

    , CONSTRAINT PUR_PHN_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PMT_TERM_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_PMT_TERM_TYP_T
/

CREATE TABLE PUR_PMT_TERM_TYP_T
(
      VNDR_PMT_TERM_CD VARCHAR(5)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_DSCT_DUE_TYP_DESC VARCHAR(20)
        , VNDR_DSCT_DUE_NBR DECIMAL(2)
        , VNDR_PMT_TERM_PCT DECIMAL(6,3)
        , VNDR_NET_DUE_TYP_DESC VARCHAR(20)
        , VNDR_NET_DUE_NBR DECIMAL(2)
        , VNDR_PMT_TERM_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_PMT_TERM_TYP_TP1 PRIMARY KEY(VNDR_PMT_TERM_CD)

    , CONSTRAINT PUR_PMT_TERM_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_ACCT_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_ACCT_T
/

CREATE TABLE PUR_PO_ACCT_T
(
      FDOC_NBR VARCHAR(14)
        , PO_ACCT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ACLN_PCT DECIMAL(35,20) default 100
        , ITM_ACCT_OSTND_ENCUM_AMT DECIMAL(19,2)
        , ACLN_AMT DECIMAL(19,2)
        , FDOC_LINE_NBR DECIMAL(7)
    
    , CONSTRAINT PUR_PO_ACCT_TP1 PRIMARY KEY(FDOC_NBR,PO_ACCT_ID)

    , CONSTRAINT PUR_PO_ACCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_CONTR_LANG_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CONTR_LANG_T
/

CREATE TABLE PUR_PO_CONTR_LANG_T
(
      PO_CONTR_LANG_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CMP_CD VARCHAR(2) NOT NULL
        , PO_CONTR_LANG_DESC VARCHAR(2000) NOT NULL
        , CONTR_LANG_CRTE_DT DATETIME NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_PO_CONTR_LANG_TP1 PRIMARY KEY(PO_CONTR_LANG_ID)

    , CONSTRAINT PUR_PO_CONTR_LANG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_CPTL_AST_ITM_AST_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CPTL_AST_ITM_AST_T
/

CREATE TABLE PUR_PO_CPTL_AST_ITM_AST_T
(
      PO_ITM_CPTL_AST_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_NBR DECIMAL(12)
        , CPTL_AST_SYS_ID DECIMAL(10)
    
    , CONSTRAINT PUR_PO_CPTL_AST_ITM_AST_TP1 PRIMARY KEY(PO_ITM_CPTL_AST_ID)

    , CONSTRAINT PUR_PO_CPTL_AST_ITM_AST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_CPTL_AST_ITM_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CPTL_AST_ITM_T
/

CREATE TABLE PUR_PO_CPTL_AST_ITM_T
(
      CPTL_AST_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NBR VARCHAR(14)
        , PO_ITM_ID DECIMAL(10)
        , CPTL_AST_TRN_TYP_CD VARCHAR(4)
        , CPTL_AST_SYS_ID DECIMAL(10)
    
    , CONSTRAINT PUR_PO_CPTL_AST_ITM_TP1 PRIMARY KEY(CPTL_AST_ITM_ID)

    , CONSTRAINT PUR_PO_CPTL_AST_ITM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_CPTL_AST_LOC_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CPTL_AST_LOC_T
/

CREATE TABLE PUR_PO_CPTL_AST_LOC_T
(
      CPTL_AST_LOC_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTL_AST_SYS_ID DECIMAL(10)
        , CPTL_AST_ITM_QTY DECIMAL(11,2)
        , CAMPUS_CD VARCHAR(2)
        , CPTL_AST_OFF_CMP_IND VARCHAR(1)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , CPTL_AST_LN1_ADDR VARCHAR(45)
        , CPTL_AST_CTY_NM VARCHAR(45)
        , CPTL_AST_ST_CD VARCHAR(2)
        , CPTL_AST_PSTL_CD VARCHAR(20)
        , CPTL_AST_CNTRY_CD VARCHAR(2)
    
    , CONSTRAINT PUR_PO_CPTL_AST_LOC_TP1 PRIMARY KEY(CPTL_AST_LOC_ID)

    , CONSTRAINT PUR_PO_CPTL_AST_LOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_CPTL_AST_SYS_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CPTL_AST_SYS_T
/

CREATE TABLE PUR_PO_CPTL_AST_SYS_T
(
      CPTL_AST_SYS_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NBR VARCHAR(14)
        , CPTL_AST_SYS_DESC VARCHAR(4000)
        , CPTLAST_NOTRCVD_CUR_FSCLYR_IND VARCHAR(1)
        , CPTLAST_TYP_CD VARCHAR(7)
        , CPTL_AST_MFR_NM VARCHAR(45)
        , CPTL_AST_MDL_DESC VARCHAR(45)
        , CPTL_AST_NTE_TXT VARCHAR(800)
        , CPTL_AST_CNT_AST_NBR DECIMAL(11)
    
    , CONSTRAINT PUR_PO_CPTL_AST_SYS_TP1 PRIMARY KEY(CPTL_AST_SYS_ID)

    , CONSTRAINT PUR_PO_CPTL_AST_SYS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_CST_SRC_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CST_SRC_T
/

CREATE TABLE PUR_PO_CST_SRC_T
(
      PO_CST_SRC_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_CST_SRC_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , ITM_UNIT_PRC_UPR_VAR_PCT DECIMAL(3)
        , ITM_UNIT_PRC_LWR_VAR_PCT DECIMAL(3)
    
    , CONSTRAINT PUR_PO_CST_SRC_TP1 PRIMARY KEY(PO_CST_SRC_CD)

    , CONSTRAINT PUR_PO_CST_SRC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_ITM_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_ITM_T
/

CREATE TABLE PUR_PO_ITM_T
(
      FDOC_NBR VARCHAR(14)
        , PO_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ITM_LN_NBR DECIMAL(3)
        , ITM_TYP_CD VARCHAR(4)
        , ITM_UOM_CD VARCHAR(4) default 'EA'
        , ITM_ORD_QTY DECIMAL(11,2) default 1
        , ITM_INV_TOT_QTY DECIMAL(11,2)
        , ITM_INV_TOT_AMT DECIMAL(19,2)
        , ITM_CATLG_NBR VARCHAR(30)
        , ITM_RCVD_TOT_QTY DECIMAL(11,2)
        , ITM_DESC VARCHAR(4000)
        , ITM_UNIT_PRC DECIMAL(19,4)
        , ITM_OSTND_ENC_QTY DECIMAL(11,2)
        , ITM_OSTND_ENC_AMT DECIMAL(19,2)
        , ITM_AUX_PART_ID VARCHAR(300)
        , ITM_ACTV_IND VARCHAR(1)
        , PUR_COMM_CD VARCHAR(40)
        , EXT_ORG_B2B_PROD_REF_NBR VARCHAR(19)
        , EXT_ORG_B2B_PROD_TYP_NM VARCHAR(15)
        , ITM_ASND_TO_TRADE_IN_IND VARCHAR(1)
        , ITM_DMGED_TOT_QTY DECIMAL(11,2)
        , ITM_TAX_AMT DECIMAL(19,4)
        , OLE_REQ_SRC_URL VARCHAR(700)
        , OLE_RTE_RQSTR VARCHAR(2) default 'No'
        , OLE_DOCUMENT_UUID VARCHAR(50)
        , LINK_ORD_OPT VARCHAR(50)
        , OLE_FRMT_ID DECIMAL(8)
        , OLE_CAT_ID DECIMAL(8)
        , OLE_REQ_SRC_TYP_ID DECIMAL(8)
        , OLE_RQSTR_TYP_ID DECIMAL(8)
        , PRNCPL_INT_RQSTR_ID VARCHAR(40)
        , OLE_DIS_PCT DECIMAL(4,2)
        , OLE_EDI_TYP_CON_ID DECIMAL(10)
        , OLE_VNDR_TRANS_FRMT_ID DECIMAL(8)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , OLE_RQSTR_ID VARCHAR(40)
        , OLE_SCOPE_ORDER VARCHAR(700)
        , OLE_VNDR_IT_ID VARCHAR(100)
        , OLE_PO_IT_ORDR_STAT_ID DECIMAL(8)
        , OLE_NUM_PRTS DECIMAL(11,2)
        , OLE_AVL_PUB VARCHAR(2)
        , OLE_DISCNT_TYP VARCHAR(1)
        , OLE_FOR_DISCNT_TYP VARCHAR(1)
        , OLE_DISCNT DECIMAL(19,4)
        , OLE_FOR_DISCNT DECIMAL(19,4)
        , OLE_LST_PRC DECIMAL(19,4)
        , OLE_FOR_LST_PRC DECIMAL(19,4)
        , OLE_FOR_DISCNT_AMT DECIMAL(19,4)
        , OLE_FOR_UNT_CST DECIMAL(19,4)
        , OLE_EXCHANGE_RT DECIMAL(19,6)
        , OLE_CON_CST DECIMAL(19,4)
        , OLE_ITM_PRC_SRC_ID DECIMAL(8)
        , PURP_ID DECIMAL(10)
        , OLE_PO_ITM_ID DECIMAL(10)
        , OLE_PRTS_RCVD_TOT_QTY DECIMAL(11,2)
        , OLE_PRTS_DMGED_TOT_QTY DECIMAL(11,2)
        , OLE_REQ_RCPT_STATUS_ID DECIMAL(10)
        , OLE_NO_COPIES_RCVD VARCHAR(40)
        , OLE_NO_PARTS_RCVD VARCHAR(40)
        , OLE_ITM_LOC VARCHAR(40)
        , OLE_ITM_STATUS VARCHAR(40)
        , OLE_DNT_CLM VARCHAR(2) default 'N'
        , OLE_CLM_CNT DECIMAL(5)
        , OLE_CLM_DT DATETIME
        , OLE_CLM_NT VARCHAR(40)
    
    , CONSTRAINT PUR_PO_ITM_TP1 PRIMARY KEY(FDOC_NBR,PO_ITM_ID)

    , CONSTRAINT PUR_PO_ITM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_ITM_TI3 (ITM_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_PO_ITM_TI1 (OLE_FRMT_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_PO_ITM_TI2 (OLE_CAT_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_PO_ITM_TI4 (OLE_REQ_SRC_TYP_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_PO_ITM_TI5 (OLE_RQSTR_TYP_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_ITM_TI6 (OLE_VNDR_IT_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_ITM_USE_TAX_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_ITM_USE_TAX_T
/

CREATE TABLE PUR_PO_ITM_USE_TAX_T
(
      FDOC_NBR VARCHAR(14)
        , PO_ITM_USE_TAX_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_ITM_ID DECIMAL(10)
        , RATE_CD VARCHAR(10) NOT NULL
        , TAX_AMT DECIMAL(19,4)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
    
    , CONSTRAINT PUR_PO_ITM_USE_TAX_TP1 PRIMARY KEY(FDOC_NBR,PO_ITM_USE_TAX_ID)

    , CONSTRAINT PUR_PO_ITM_USE_TAX_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_QT_LANG_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_QT_LANG_T
/

CREATE TABLE PUR_PO_QT_LANG_T
(
      PO_QT_LANG_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_QT_LANG_DESC VARCHAR(2000)
        , PO_QT_LANG_CRTE_DT DATETIME
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_PO_QT_LANG_TP1 PRIMARY KEY(PO_QT_LANG_ID)

    , CONSTRAINT PUR_PO_QT_LANG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_QT_LST_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_QT_LST_T
/

CREATE TABLE PUR_PO_QT_LST_T
(
      PO_QT_LST_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_QT_LST_NM VARCHAR(100) NOT NULL
        , CONTR_MGR_CD DECIMAL(2) NOT NULL
        , ACTV_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT PUR_PO_QT_LST_TP1 PRIMARY KEY(PO_QT_LST_ID)

    , CONSTRAINT PUR_PO_QT_LST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_QT_LST_VNDR_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_QT_LST_VNDR_T
/

CREATE TABLE PUR_PO_QT_LST_VNDR_T
(
      PO_QT_LST_ID DECIMAL(9)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTV_IND CHAR(1) default 'Y'
    
    , CONSTRAINT PUR_PO_QT_LST_VNDR_TP1 PRIMARY KEY(PO_QT_LST_ID,VNDR_HDR_GNRTD_ID,VNDR_DTL_ASND_ID)

    , CONSTRAINT PUR_PO_QT_LST_VNDR_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                            
                                    
, INDEX PUR_PO_QT_LST_VNDR_TI1 (PO_QT_LST_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_QT_STAT_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_QT_STAT_T
/

CREATE TABLE PUR_PO_QT_STAT_T
(
      PO_QT_STAT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_QT_STAT_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_PO_QT_STAT_TP1 PRIMARY KEY(PO_QT_STAT_CD)

    , CONSTRAINT PUR_PO_QT_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_SNSTV_DTA_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_SNSTV_DTA_T
/

CREATE TABLE PUR_PO_SNSTV_DTA_T
(
      PO_ID DECIMAL(9)
        , SNSTV_DTA_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , REQS_ID DECIMAL(8) NOT NULL
    
    , CONSTRAINT PUR_PO_SNSTV_DTA_TP1 PRIMARY KEY(PO_ID,SNSTV_DTA_CD)

    , CONSTRAINT PUR_PO_SNSTV_DTA_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_STAT_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_STAT_T
/

CREATE TABLE PUR_PO_STAT_T
(
      PO_STAT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_STAT_DESC VARCHAR(45) NOT NULL
    
    , CONSTRAINT PUR_PO_STAT_TP1 PRIMARY KEY(PO_STAT_CD)

    , CONSTRAINT PUR_PO_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_T
/

CREATE TABLE PUR_PO_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_ID DECIMAL(9)
        , REQS_ID DECIMAL(8)
        , REQS_SRC_CD VARCHAR(4)
        , PO_VNDR_CHC_CD VARCHAR(4)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_PSTL_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , VNDR_RSTRC_IND VARCHAR(1)
        , VNDR_PMT_TERM_CD VARCHAR(5)
        , VNDR_SHP_TTL_CD VARCHAR(4)
        , VNDR_PHN_NBR VARCHAR(45)
        , VNDR_FAX_NBR VARCHAR(40)
        , VNDR_CUST_NBR VARCHAR(30)
        , VNDR_CONTR_GNRTD_ID DECIMAL(10)
        , VNDR_NTE_TXT VARCHAR(255)
        , VNDR_SHP_PMT_TERM_CD VARCHAR(4)
        , FND_SRC_CD VARCHAR(4)
        , RQSTR_PRSN_NM VARCHAR(45)
        , RQSTR_PRSN_EMAIL_ADDR VARCHAR(100)
        , RQSTR_PRSN_PHN_NBR VARCHAR(45)
        , NON_INST_FND_ORG_COA_CD VARCHAR(2)
        , NON_INST_FND_ORG_CD VARCHAR(4)
        , NON_INST_FND_COA_CD VARCHAR(2)
        , NON_INST_FND_ACCT_NBR VARCHAR(7)
        , DLVY_CMP_CD VARCHAR(2)
        , DLVY_BLDG_CD VARCHAR(10)
        , DLVY_BLDG_NM VARCHAR(45)
        , DLVY_BLDG_RM_NBR VARCHAR(8)
        , DLVY_BLDG_LN1_ADDR VARCHAR(45)
        , DLVY_BLDG_LN2_ADDR VARCHAR(45)
        , DLVY_CTY_NM VARCHAR(45)
        , DLVY_ST_CD VARCHAR(2)
        , DLVY_PSTL_CD VARCHAR(20)
        , DLVY_CNTRY_CD VARCHAR(2)
        , DLVY_TO_NM VARCHAR(45)
        , DLVY_TO_EMAIL_ADDR VARCHAR(100)
        , DLVY_TO_PHN_NBR VARCHAR(45)
        , DLVY_REQ_DT DATETIME
        , DLVY_INSTRC_TXT VARCHAR(255)
        , DLVY_REQ_DT_REAS_CD VARCHAR(4)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , PO_CRTE_DT DATETIME NOT NULL
        , PO_ENCUM_FSCL_YR DECIMAL(4)
        , PO_CST_SRC_CD VARCHAR(4)
        , PO_TRNS_MTHD_CD VARCHAR(4)
        , PO_TOT_LMT DECIMAL(19,2)
        , PO_BEG_DT DATETIME
        , PO_END_DT DATETIME
        , RECUR_PMT_FREQ_CD VARCHAR(4)
        , RECUR_PMT_AMT DECIMAL(19,2)
        , RECUR_PMT_TYP_CD VARCHAR(4)
        , RECUR_PMT_DT DATETIME
        , INST_CNTCT_NM VARCHAR(45)
        , INST_CNTCT_PHN_NBR VARCHAR(45)
        , INST_CNTCT_EMAIL_ADDR VARCHAR(100)
        , BILL_NM VARCHAR(45)
        , BILL_LN1_ADDR VARCHAR(45)
        , BILL_LN2_ADDR VARCHAR(45)
        , BILL_CTY_NM VARCHAR(45)
        , BILL_ST_CD VARCHAR(2)
        , BILL_PSTL_CD VARCHAR(20)
        , BILL_CNTRY_CD VARCHAR(2)
        , BILL_PHN_NBR VARCHAR(20)
        , INIT_PMT_AMT DECIMAL(19,2)
        , INIT_PMT_DT DATETIME
        , FNL_PMT_AMT DECIMAL(19,2)
        , FNL_PMT_DT DATETIME
        , EXT_ORG_B2B_SUPP_ID VARCHAR(19)
        , CONTR_MGR_CD DECIMAL(2)
        , PO_AUTO_IND VARCHAR(1)
        , PO_INIT_OPEN_DT DATETIME
        , PO_LST_TRNS_DT DATETIME
        , PO_QT_DUE_DT DATETIME
        , PO_QT_TYP_CD VARCHAR(25)
        , PO_QT_VNDR_NTE_TXT VARCHAR(255)
        , PO_CNFRMD_IND VARCHAR(1)
        , PO_COMM_DESC VARCHAR(7)
        , PO_PREV_ID DECIMAL(9)
        , ALTRNT_VNDR_HDR_GNRTD_ID DECIMAL(10)
        , ALTRNT_VNDR_DTL_ASND_ID DECIMAL(10)
        , ALTRNT_VNDR_NM VARCHAR(45)
        , PO_CUR_IND VARCHAR(1)
        , PEND_ACTN_IND VARCHAR(1)
        , PO_1ST_TRNS_DT DATETIME
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
        , RCVNG_DOC_REQ_IND VARCHAR(1)
        , PMT_RQST_PSTV_APRVL_IND VARCHAR(1)
        , PO_QT_INITLZTN_DT DATETIME
        , PO_QT_AWDED_DT DATETIME
        , CPTL_AST_SYS_TYP_CD VARCHAR(4)
        , PUR_RCVNG_NM VARCHAR(45)
        , PUR_RCVNG_LN1_ADDR VARCHAR(45)
        , PUR_RCVNG_LN2_ADDR VARCHAR(45)
        , PUR_RCVNG_CTY_NM VARCHAR(45)
        , PUR_RCVNG_ST_CD VARCHAR(2)
        , PUR_RCVNG_PSTL_CD VARCHAR(20)
        , PUR_RCVNG_CNTRY_CD VARCHAR(2)
        , CPTL_AST_SYS_ST_CD VARCHAR(4)
        , PUR_RCVNG_ADDR_TO_VNDR_IND VARCHAR(1)
        , USE_TAX_IND VARCHAR(1) default 'Y' NOT NULL
        , DLVY_BLDG_OTHR_IND VARCHAR(1)
        , VNDR_ATTN_NM VARCHAR(45)
        , OLE_VNDR_TRANS_FRMT_ID DECIMAL(8)
        , OLE_PO_TYPE_ID DECIMAL(8) default 1 NOT NULL
        , OLE_LIB_PO_ID VARCHAR(45)
        , OLE_VNDR_PO_ID VARCHAR(100)
        , OLE_TRANS_TYP_ID DECIMAL(10)
        , ACCT_DISTR_MTD_IND VARCHAR(1) default 'P' NOT NULL
        , VNDR_DEBRD_REAS_TXT VARCHAR(255)
        , BILL_EMAIL_ADDR VARCHAR(100)
        , LIC_REQ_IND VARCHAR(1) default 'N'
        , LIC_RQMT_CD VARCHAR(20)
        , PRNCPL_ID VARCHAR(40)
    
    , CONSTRAINT PUR_PO_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT PUR_PO_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_TI1 (PO_VNDR_CHC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_PO_TI10 (PO_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_PO_TI11 (AP_PUR_DOC_LNK_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_TI2 (RECUR_PMT_FREQ_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_TI4 (PO_TRNS_MTHD_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_TI5 (PO_CST_SRC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_TI6 (DLVY_REQ_DT_REAS_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_TI7 (RECUR_PMT_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_TI8 (FND_SRC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_PO_TI9 (PO_INIT_OPEN_DT )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_TRNS_MTHD_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_TRNS_MTHD_T
/

CREATE TABLE PUR_PO_TRNS_MTHD_T
(
      PO_TRNS_MTHD_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_TRNS_MTHD_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , DISPLAY_TO_USER_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT PUR_PO_TRNS_MTHD_TP1 PRIMARY KEY(PO_TRNS_MTHD_CD)

    , CONSTRAINT PUR_PO_TRNS_MTHD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_VNDR_CHC_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_VNDR_CHC_T
/

CREATE TABLE PUR_PO_VNDR_CHC_T
(
      PO_VNDR_CHC_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_VNDR_CHC_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_PO_VNDR_CHC_TP1 PRIMARY KEY(PO_VNDR_CHC_CD)

    , CONSTRAINT PUR_PO_VNDR_CHC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_VNDR_QT_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_VNDR_QT_T
/

CREATE TABLE PUR_PO_VNDR_QT_T
(
      FDOC_NBR VARCHAR(14)
        , PO_VNDR_QT_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_PSTL_CD VARCHAR(20)
        , VNDR_PHN_NBR VARCHAR(45)
        , VNDR_FAX_NBR VARCHAR(45)
        , VNDR_EMAIL_ADDR VARCHAR(100)
        , VNDR_ATTN_NM VARCHAR(45)
        , PO_QT_TRANS_TYP_CD VARCHAR(50)
        , PO_QT_TRANS_DT DATETIME
        , PO_QT_PRCE_EXPR_DT DATETIME
        , PO_QT_STAT_CD VARCHAR(4)
        , PO_QT_AWD_DT DATETIME
        , PO_QT_RANK_NBR VARCHAR(3)
        , VNDR_CNTRY_CD VARCHAR(2)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
    
    , CONSTRAINT PUR_PO_VNDR_QT_TP1 PRIMARY KEY(FDOC_NBR,PO_VNDR_QT_ID)

    , CONSTRAINT PUR_PO_VNDR_QT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX PUR_PO_VNDR_QT_TI2 (PO_QT_STAT_CD )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_PO_VNDR_STPLTN_T
# -----------------------------------------------------------------------
drop table if exists PUR_PO_VNDR_STPLTN_T
/

CREATE TABLE PUR_PO_VNDR_STPLTN_T
(
      FDOC_NBR VARCHAR(14)
        , PO_VNDR_STPLTN_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_STPLTN_DESC VARCHAR(4000) NOT NULL
        , VNDR_STPLTN_AUTH_EMP_ID VARCHAR(40) NOT NULL
        , VNDR_STPLTN_CRTE_DT DATETIME NOT NULL
    
    , CONSTRAINT PUR_PO_VNDR_STPLTN_TP1 PRIMARY KEY(FDOC_NBR,PO_VNDR_STPLTN_ID)

    , CONSTRAINT PUR_PO_VNDR_STPLTN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_RCVNG_ADDR_T
# -----------------------------------------------------------------------
drop table if exists PUR_RCVNG_ADDR_T
/

CREATE TABLE PUR_RCVNG_ADDR_T
(
      PUR_RCVNG_ADDR_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ORG_CD VARCHAR(4)
        , PUR_RCVNG_NM VARCHAR(45)
        , PUR_RCVNG_LN1_ADDR VARCHAR(45)
        , PUR_RCVNG_LN2_ADDR VARCHAR(45)
        , PUR_RCVNG_CTY_NM VARCHAR(45)
        , PUR_RCVNG_ST_CD VARCHAR(2)
        , PUR_RCVNG_PSTL_CD VARCHAR(20)
        , PUR_RCVNG_CNTRY_CD VARCHAR(2)
        , PUR_RCVNG_DFLT_ADDR_IND VARCHAR(1)
        , VNDR_ADDR_USE_RCVNG_IND VARCHAR(1)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_RCVNG_ADDR_TP1 PRIMARY KEY(PUR_RCVNG_ADDR_ID)

    , CONSTRAINT PUR_RCVNG_ADDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_RCVNG_COR_ITM_T
# -----------------------------------------------------------------------
drop table if exists PUR_RCVNG_COR_ITM_T
/

CREATE TABLE PUR_RCVNG_COR_ITM_T
(
      RCVNG_COR_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NBR VARCHAR(14)
        , PO_ID DECIMAL(9)
        , ITM_LN_NBR DECIMAL(3)
        , ITM_TYP_CD VARCHAR(4)
        , ITM_UOM_CD VARCHAR(4)
        , ITM_CATLG_NBR VARCHAR(30)
        , ITM_DESC VARCHAR(4000)
        , ITM_ORIG_RCVD_TOT_QTY DECIMAL(11,2)
        , ITM_ORIG_RTRN_TOT_QTY DECIMAL(11,2)
        , ITM_ORIG_DMGED_TOT_QTY DECIMAL(11,2)
        , ITM_COR_RCVD_TOT_QTY DECIMAL(11,2)
        , ITM_COR_RTRN_TOT_QTY DECIMAL(11,2)
        , ITM_COR_DMGED_TOT_QTY DECIMAL(11,2)
        , ITM_REAS_ADD_CD VARCHAR(4)
        , OLE_VNDR_IT_ID VARCHAR(100)
        , OLE_FRMT_ID DECIMAL(8)
        , OLE_ITM_ORIG_PRTS_RCVD_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_ORIG_PRTS_RTRN_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_ORIG_PRTS_DMGD_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_COR_PRTS_RCVD_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_COR_PRTS_RTRN_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_COR_PRTS_DMGED_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_ORIG_RCVD_DT DATETIME
        , OLE_ITM_COR_RCVD_DT DATETIME
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OLE_PO_ITM_ID DECIMAL(10)
    
    , CONSTRAINT PUR_RCVNG_COR_ITM_TP1 PRIMARY KEY(RCVNG_COR_ITM_ID)

    , CONSTRAINT PUR_RCVNG_COR_ITM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_RCVNG_COR_T
# -----------------------------------------------------------------------
drop table if exists PUR_RCVNG_COR_T
/

CREATE TABLE PUR_RCVNG_COR_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , RCVNG_LN_FDOC_NBR VARCHAR(14)
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
    
    , CONSTRAINT PUR_RCVNG_COR_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT PUR_RCVNG_COR_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                        
                                    
, INDEX PUR_RCVNG_COR_TI1 (AP_PUR_DOC_LNK_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_RCVNG_LN_ITM_T
# -----------------------------------------------------------------------
drop table if exists PUR_RCVNG_LN_ITM_T
/

CREATE TABLE PUR_RCVNG_LN_ITM_T
(
      RCVNG_LN_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NBR VARCHAR(14)
        , PO_ID DECIMAL(9)
        , ITM_LN_NBR DECIMAL(3)
        , ITM_TYP_CD VARCHAR(4)
        , ITM_UOM_CD VARCHAR(4) default 'EA'
        , ITM_ORD_QTY DECIMAL(11,2)
        , ITM_CATLG_NBR VARCHAR(30)
        , ITM_DESC VARCHAR(4000)
        , ITM_RCVD_TOT_QTY DECIMAL(11,2)
        , ITM_RTRN_TOT_QTY DECIMAL(11,2)
        , ITM_DMGED_TOT_QTY DECIMAL(11,2)
        , ITM_REAS_ADD_CD VARCHAR(4)
        , OLE_RTE_RQSTR VARCHAR(2)
        , OLE_NUM_PRTS DECIMAL(11,2)
        , OLE_ITM_PRTS_RCVD_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_PRTS_RTND_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_PRTS_DMGD_TOT_QTY DECIMAL(11,2)
        , OLE_ITM_RCVD_DT DATETIME
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OLE_VNDR_IT_ID VARCHAR(100)
        , OLE_AVL_PUB VARCHAR(1)
        , OLE_FRMT_ID DECIMAL(8)
        , OLE_REQ_RCPT_STATUS_ID DECIMAL(10)
    
    , CONSTRAINT PUR_RCVNG_LN_ITM_TP1 PRIMARY KEY(RCVNG_LN_ITM_ID)

    , CONSTRAINT PUR_RCVNG_LN_ITM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_RCVNG_LN_STAT_T
# -----------------------------------------------------------------------
drop table if exists PUR_RCVNG_LN_STAT_T
/

CREATE TABLE PUR_RCVNG_LN_STAT_T
(
      RCVNG_LN_STAT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , RCVNG_LN_STAT_DESC VARCHAR(45)
    
    , CONSTRAINT PUR_RCVNG_LN_STAT_TP1 PRIMARY KEY(RCVNG_LN_STAT_CD)

    , CONSTRAINT PUR_RCVNG_LN_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_RCVNG_LN_T
# -----------------------------------------------------------------------
drop table if exists PUR_RCVNG_LN_T
/

CREATE TABLE PUR_RCVNG_LN_T
(
      FDOC_NBR VARCHAR(14)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_ID DECIMAL(9)
        , CARI_CD VARCHAR(4)
        , SHPMNT_PKNG_SLP_NBR VARCHAR(45)
        , SHPMNT_REF_NBR VARCHAR(45)
        , SHPMNT_BLL_OF_LDNG_NBR VARCHAR(45)
        , SHPMNT_RCVD_DT DATETIME
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_PSTL_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , DLVY_CMP_CD VARCHAR(2)
        , DLVY_BLDG_CD VARCHAR(10)
        , DLVY_BLDG_NM VARCHAR(45)
        , DLVY_BLDG_RM_NBR VARCHAR(8)
        , DLVY_BLDG_LN1_ADDR VARCHAR(45)
        , DLVY_BLDG_LN2_ADDR VARCHAR(45)
        , DLVY_CTY_NM VARCHAR(45)
        , DLVY_ST_CD VARCHAR(2)
        , DLVY_PSTL_CD VARCHAR(20)
        , DLVY_CNTRY_CD VARCHAR(2)
        , DLVY_TO_NM VARCHAR(45)
        , DLVY_TO_EMAIL_ADDR VARCHAR(100)
        , DLVY_TO_PHN_NBR VARCHAR(45)
        , DLVY_REQ_DT DATETIME
        , DLVY_INSTRC_TXT VARCHAR(255)
        , DLVY_REQ_DT_REAS_CD VARCHAR(4)
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , DLVY_BLDG_OTHR_IND VARCHAR(1)
        , RCVNG_LN_STAT_CD VARCHAR(4)
        , OLE_VNDR_PO_ID VARCHAR(100)
        , OLE_PO_ITM_ID DECIMAL(10)
    
    , CONSTRAINT PUR_RCVNG_LN_TP1 PRIMARY KEY(FDOC_NBR)

    , CONSTRAINT PUR_RCVNG_LN_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_RCVNG_LN_TI1 (AP_PUR_DOC_LNK_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_ACCT_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_ACCT_T
/

CREATE TABLE PUR_REQS_ACCT_T
(
      REQS_ACCT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , REQS_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ACLN_PCT DECIMAL(35,20) default 100
        , ACLN_AMT DECIMAL(19,2)
        , FDOC_LINE_NBR DECIMAL(7)
    
    , CONSTRAINT PUR_REQS_ACCT_TP1 PRIMARY KEY(REQS_ACCT_ID)

    , CONSTRAINT PUR_REQS_ACCT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PUR_REQS_ACCT_TI1 (REQS_ITM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_CPTL_AST_ITM_AST_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_CPTL_AST_ITM_AST_T
/

CREATE TABLE PUR_REQS_CPTL_AST_ITM_AST_T
(
      REQS_ITM_CPTL_AST_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTLAST_NBR DECIMAL(12) NOT NULL
        , CPTL_AST_SYS_ID DECIMAL(10)
    
    , CONSTRAINT PUR_REQS_CPTL_AST_ITM_AST_TP1 PRIMARY KEY(REQS_ITM_CPTL_AST_ID)

    , CONSTRAINT PUR_REQS_ITM_CPTL_AST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_CPTL_AST_ITM_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_CPTL_AST_ITM_T
/

CREATE TABLE PUR_REQS_CPTL_AST_ITM_T
(
      CPTL_AST_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , REQS_ID DECIMAL(8)
        , REQS_ITM_ID DECIMAL(10)
        , CPTL_AST_TRN_TYP_CD VARCHAR(4)
        , CPTL_AST_SYS_ID DECIMAL(10)
    
    , CONSTRAINT PUR_REQS_CPTL_AST_ITM_TP1 PRIMARY KEY(CPTL_AST_ITM_ID)

    , CONSTRAINT PUR_REQS_CPTL_AST_ITM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_CPTL_AST_ITM_TI1 (REQS_ITM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_CPTL_AST_LOC_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_CPTL_AST_LOC_T
/

CREATE TABLE PUR_REQS_CPTL_AST_LOC_T
(
      CPTL_AST_LOC_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , CPTL_AST_SYS_ID DECIMAL(10)
        , CPTL_AST_ITM_QTY DECIMAL(11,2)
        , CAMPUS_CD VARCHAR(2)
        , CPTL_AST_OFF_CMP_IND VARCHAR(1)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , CPTL_AST_LN1_ADDR VARCHAR(45)
        , CPTL_AST_CTY_NM VARCHAR(45)
        , CPTL_AST_ST_CD VARCHAR(2)
        , CPTL_AST_PSTL_CD VARCHAR(20)
        , CPTL_AST_CNTRY_CD VARCHAR(2)
    
    , CONSTRAINT PUR_REQS_CPTL_AST_LOC_TP1 PRIMARY KEY(CPTL_AST_LOC_ID)

    , CONSTRAINT PUR_REQS_CPTL_AST_LOC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_CPTL_AST_SYS_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_CPTL_AST_SYS_T
/

CREATE TABLE PUR_REQS_CPTL_AST_SYS_T
(
      CPTL_AST_SYS_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , REQS_ID DECIMAL(8)
        , CPTL_AST_SYS_DESC VARCHAR(4000)
        , CPTLAST_NOTRCVD_CUR_FSCLYR_IND VARCHAR(1)
        , CPTLAST_TYP_CD VARCHAR(7)
        , CPTL_AST_MFR_NM VARCHAR(45)
        , CPTL_AST_MDL_DESC VARCHAR(45)
        , CPTL_AST_NTE_TXT VARCHAR(800)
        , CPTL_AST_CNT_AST_NBR DECIMAL(11)
    
    , CONSTRAINT PUR_REQS_CPTL_AST_SYS_TP1 PRIMARY KEY(CPTL_AST_SYS_ID)

    , CONSTRAINT PUR_REQS_CPTL_AST_SYS_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_CPTL_AST_SYS_TI1 (REQS_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_ITM_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_ITM_T
/

CREATE TABLE PUR_REQS_ITM_T
(
      REQS_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , REQS_ID DECIMAL(8) NOT NULL
        , ITM_LN_NBR DECIMAL(3)
        , ITM_UOM_CD VARCHAR(4) default 'EA'
        , ITM_QTY DECIMAL(11,2) default 1
        , ITM_CATLG_NBR VARCHAR(30)
        , ITM_DESC VARCHAR(4000)
        , ITM_UNIT_PRC DECIMAL(19,4)
        , ITM_RSTRC_IND VARCHAR(1) NOT NULL
        , ITM_TYP_CD VARCHAR(4)
        , ITM_AUX_PART_ID VARCHAR(300)
        , EXT_ORG_B2B_PROD_REF_NBR VARCHAR(19)
        , EXT_ORG_B2B_PROD_TYP_NM VARCHAR(15)
        , ITM_ASND_TO_TRADE_IN_IND VARCHAR(1)
        , PUR_COMM_CD VARCHAR(40)
        , ITM_TAX_AMT DECIMAL(19,4)
        , OLE_REQ_SRC_URL VARCHAR(700)
        , OLE_RTE_RQSTR VARCHAR(1) default 'N'
        , OLE_DOCUMENT_UUID VARCHAR(50)
        , LINK_ORD_OPT VARCHAR(50)
        , OLE_FRMT_ID DECIMAL(8)
        , OLE_CAT_ID DECIMAL(8)
        , OLE_REQ_SRC_TYP_ID DECIMAL(8)
        , OLE_RQSTR_TYP_ID DECIMAL(8)
        , PRNCPL_INT_RQSTR_ID VARCHAR(40)
        , OLE_DIS_PCT DECIMAL(4,2)
        , OLE_SCOPE_ORDER VARCHAR(700)
        , OLE_AVL_PUB VARCHAR(2) default 'Y' NOT NULL
        , OLE_VNDR_IT_ID VARCHAR(100)
        , OLE_NUM_PRTS DECIMAL(11,2)
        , OLE_EDI_TYP_CON_ID DECIMAL(10)
        , OLE_VNDR_TRANS_FRMT_ID DECIMAL(8)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , OLE_RQSTR_ID VARCHAR(40)
        , OLE_DISCNT_TYP VARCHAR(1)
        , OLE_FOR_DISCNT_TYP VARCHAR(1)
        , OLE_DISCNT DECIMAL(19,4)
        , OLE_FOR_DISCNT DECIMAL(19,4)
        , OLE_LST_PRC DECIMAL(19,4)
        , OLE_FOR_LST_PRC DECIMAL(19,4)
        , OLE_FOR_DISCNT_AMT DECIMAL(19,4)
        , OLE_FOR_UNT_CST DECIMAL(19,4)
        , OLE_EXCHANGE_RT DECIMAL(19,6)
        , OLE_CON_CST DECIMAL(19,4)
        , OLE_ITM_PRC_SRC_ID DECIMAL(8)
        , PURP_ID DECIMAL(10)
        , OLE_PO_TYPE_ID DECIMAL(8) default 1
        , OLE_REQ_RCPT_STATUS_ID DECIMAL(10)
        , OLE_NO_COPIES_RCVD VARCHAR(40)
        , OLE_NO_PARTS_RCVD VARCHAR(40)
        , OLE_ITM_LOC VARCHAR(40)
        , OLE_ITM_STATUS VARCHAR(40)
        , OLE_CLM_CNT DECIMAL(5)
        , OLE_CLM_DT DATETIME
        , OLE_DNT_CLM VARCHAR(2) default 'N'
        , OLE_CLM_NT VARCHAR(40)
    
    , CONSTRAINT PUR_REQS_ITM_TP1 PRIMARY KEY(REQS_ITM_ID)

    , CONSTRAINT PUR_REQS_ITM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX PUR_REQS_ITM_TI1 (ITM_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_ITM_TI3 (REQS_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_ITM_TI2 (OLE_FRMT_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_ITM_TI4 (OLE_CAT_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_ITM_TI5 (OLE_REQ_SRC_TYP_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_ITM_TI6 (OLE_RQSTR_TYP_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_ITM_USE_TAX_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_ITM_USE_TAX_T
/

CREATE TABLE PUR_REQS_ITM_USE_TAX_T
(
      REQS_ITM_USE_TAX_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , REQS_ITM_ID DECIMAL(10)
        , RATE_CD VARCHAR(10) NOT NULL
        , TAX_AMT DECIMAL(19,4)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
    
    , CONSTRAINT PUR_REQS_ITM_USE_TAX_TP1 PRIMARY KEY(REQS_ITM_USE_TAX_ID)

    , CONSTRAINT PUR_REQS_ITM_USE_TAX_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_SRC_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_SRC_T
/

CREATE TABLE PUR_REQS_SRC_T
(
      REQS_SRC_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , REQS_SRC_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_REQS_SRC_TP1 PRIMARY KEY(REQS_SRC_CD)

    , CONSTRAINT PUR_REQS_SRC_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_STAT_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_STAT_T
/

CREATE TABLE PUR_REQS_STAT_T
(
      REQS_STAT_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , REQS_STAT_DESC VARCHAR(45) NOT NULL
    
    , CONSTRAINT PUR_REQS_STAT_TP1 PRIMARY KEY(REQS_STAT_CD)

    , CONSTRAINT PUR_REQS_STAT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_REQS_T
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_T
/

CREATE TABLE PUR_REQS_T
(
      REQS_ID DECIMAL(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FDOC_NBR VARCHAR(14) NOT NULL
        , FND_SRC_CD VARCHAR(4)
        , REQS_SRC_CD VARCHAR(4) NOT NULL
        , PO_TRNS_MTHD_CD VARCHAR(4)
        , PO_CST_SRC_CD VARCHAR(4) NOT NULL
        , DLVY_REQ_DT_REAS_CD VARCHAR(4)
        , RECUR_PMT_TYP_CD VARCHAR(4)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , DLVY_CMP_CD VARCHAR(2) NOT NULL
        , PO_ENCUM_FSCL_YR DECIMAL(4) NOT NULL
        , PO_TOT_LMT DECIMAL(19,2)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_PSTL_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , VNDR_RSTRC_IND VARCHAR(1)
        , VNDR_PHN_NBR VARCHAR(45)
        , VNDR_FAX_NBR VARCHAR(40)
        , VNDR_CUST_NBR VARCHAR(30)
        , VNDR_CONTR_GNRTD_ID DECIMAL(10)
        , VNDR_NTE_TXT VARCHAR(255)
        , RQSTR_PRSN_NM VARCHAR(45)
        , RQSTR_PRSN_EMAIL_ADDR VARCHAR(100)
        , RQSTR_PRSN_PHN_NBR VARCHAR(45)
        , NON_INST_FND_ORG_COA_CD VARCHAR(2)
        , NON_INST_FND_ORG_CD VARCHAR(4)
        , NON_INST_FND_COA_CD VARCHAR(2)
        , NON_INST_FND_ACCT_NBR VARCHAR(7)
        , DLVY_BLDG_CD VARCHAR(10)
        , DLVY_BLDG_NM VARCHAR(45)
        , DLVY_BLDG_RM_NBR VARCHAR(8)
        , DLVY_BLDG_LN1_ADDR VARCHAR(45)
        , DLVY_BLDG_LN2_ADDR VARCHAR(45)
        , DLVY_CTY_NM VARCHAR(45)
        , DLVY_ST_CD VARCHAR(2)
        , DLVY_PSTL_CD VARCHAR(20)
        , DLVY_CNTRY_CD VARCHAR(2)
        , DLVY_TO_NM VARCHAR(45)
        , DLVY_TO_EMAIL_ADDR VARCHAR(100)
        , DLVY_TO_PHN_NBR VARCHAR(45)
        , DLVY_REQ_DT DATETIME
        , DLVY_INSTRC_TXT VARCHAR(255)
        , REQS_ORG_REF_1_TXT VARCHAR(20)
        , REQS_ORG_REF_2_TXT VARCHAR(20)
        , REQS_ORG_REF_3_TXT VARCHAR(20)
        , PO_BEG_DT DATETIME
        , PO_END_DT DATETIME
        , INST_CNTCT_NM VARCHAR(45)
        , INST_CNTCT_PHN_NBR VARCHAR(45)
        , INST_CNTCT_EMAIL_ADDR VARCHAR(100)
        , ALTRNT_1_VNDR_NM VARCHAR(45)
        , ALTRNT_2_VNDR_NM VARCHAR(45)
        , ALTRNT_3_VNDR_NM VARCHAR(45)
        , ALTRNT_4_VNDR_NM VARCHAR(45)
        , ALTRNT_5_VNDR_NM VARCHAR(45)
        , BILL_NM VARCHAR(45) NOT NULL
        , BILL_LN1_ADDR VARCHAR(45) NOT NULL
        , BILL_LN2_ADDR VARCHAR(45)
        , BILL_CTY_NM VARCHAR(45) NOT NULL
        , BILL_ST_CD VARCHAR(2) NOT NULL
        , BILL_PSTL_CD VARCHAR(20) NOT NULL
        , BILL_CNTRY_CD VARCHAR(2) NOT NULL
        , BILL_PHN_NBR VARCHAR(20) NOT NULL
        , EXT_ORG_B2B_SUPP_ID VARCHAR(19)
        , ORG_AUTO_PO_LMT DECIMAL(19,2)
        , PO_AUTO_IND VARCHAR(1)
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
        , RCVNG_DOC_REQ_IND VARCHAR(1) default 'Y'
        , PMT_RQST_PSTV_APRVL_IND VARCHAR(1)
        , CPTL_AST_SYS_TYP_CD VARCHAR(4)
        , PUR_RCVNG_NM VARCHAR(45)
        , PUR_RCVNG_LN1_ADDR VARCHAR(45)
        , PUR_RCVNG_LN2_ADDR VARCHAR(45)
        , PUR_RCVNG_CTY_NM VARCHAR(45)
        , PUR_RCVNG_ST_CD VARCHAR(2)
        , PUR_RCVNG_PSTL_CD VARCHAR(20)
        , PUR_RCVNG_CNTRY_CD VARCHAR(2)
        , CPTL_AST_SYS_ST_CD VARCHAR(4)
        , PUR_RCVNG_ADDR_TO_VNDR_IND VARCHAR(1)
        , USE_TAX_IND VARCHAR(1) default 'Y' NOT NULL
        , DLVY_BLDG_OTHR_IND VARCHAR(1)
        , VNDR_ATTN_NM VARCHAR(45)
        , OLE_REQSTR_TYP_ID DECIMAL(22)
        , OLE_VNDR_TRANS_FRMT_ID DECIMAL(8)
        , OLE_PO_TYPE_ID DECIMAL(8) default 1
        , OLE_VNDR_PO_ID VARCHAR(100)
        , OLE_TRANS_TYP_ID DECIMAL(10)
        , ACCT_DISTR_MTD_IND VARCHAR(1) default 'P' NOT NULL
        , VNDR_DEBRD_REAS_TXT VARCHAR(255)
        , BILL_EMAIL_ADDR VARCHAR(100)
        , LIC_REQ_IND VARCHAR(1) default 'N'
        , LIC_RQMT_CD VARCHAR(20)
    
    , CONSTRAINT PUR_REQS_TP1 PRIMARY KEY(REQS_ID)

    , CONSTRAINT PUR_REQS_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_TI1 (REQS_SRC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_TI2 (FND_SRC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_TI4 (PO_TRNS_MTHD_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_TI5 (RECUR_PMT_TYP_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_TI6 (DLVY_REQ_DT_REAS_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_TI7 (FDOC_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX PUR_REQS_TI8 (PO_CST_SRC_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PUR_REQS_TI9 (AP_PUR_DOC_LNK_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_SHP_PMT_TERM_T
# -----------------------------------------------------------------------
drop table if exists PUR_SHP_PMT_TERM_T
/

CREATE TABLE PUR_SHP_PMT_TERM_T
(
      VNDR_SHP_PMT_TERM_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_SHP_PMT_TERM_DESC VARCHAR(45)
        , VNDR_SHP_PMT_TERM_PAY_IND VARCHAR(1)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_SHP_PMT_TERM_TP1 PRIMARY KEY(VNDR_SHP_PMT_TERM_CD)

    , CONSTRAINT PUR_SHP_PMT_TERM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_SHP_SPCL_COND_T
# -----------------------------------------------------------------------
drop table if exists PUR_SHP_SPCL_COND_T
/

CREATE TABLE PUR_SHP_SPCL_COND_T
(
      VNDR_SHP_SPCL_COND_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_SHP_SPCL_COND_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_SHP_SPCL_COND_TP1 PRIMARY KEY(VNDR_SHP_SPCL_COND_CD)

    , CONSTRAINT PUR_SHP_SPCL_COND_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_SHP_TTL_T
# -----------------------------------------------------------------------
drop table if exists PUR_SHP_TTL_T
/

CREATE TABLE PUR_SHP_TTL_T
(
      VNDR_SHP_TTL_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_SHP_TTL_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_SHP_TTL_TP1 PRIMARY KEY(VNDR_SHP_TTL_CD)

    , CONSTRAINT PUR_SHP_TTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_SNSTV_DTA_ASGN_DTL_T
# -----------------------------------------------------------------------
drop table if exists PUR_SNSTV_DTA_ASGN_DTL_T
/

CREATE TABLE PUR_SNSTV_DTA_ASGN_DTL_T
(
      SNSTV_DTA_ASGN_ID DECIMAL(9)
        , SNSTV_DTA_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
    
    , CONSTRAINT PUR_SNSTV_DTA_ASGN_DTL_TP1 PRIMARY KEY(SNSTV_DTA_ASGN_ID,SNSTV_DTA_CD)

    , CONSTRAINT PUR_SNSTV_DTA_ASGN_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_SNSTV_DTA_ASGN_T
# -----------------------------------------------------------------------
drop table if exists PUR_SNSTV_DTA_ASGN_T
/

CREATE TABLE PUR_SNSTV_DTA_ASGN_T
(
      SNSTV_DTA_ASGN_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_ID DECIMAL(9) NOT NULL
        , SNSTV_DTA_ASGN_REAS_TXT VARCHAR(500)
        , SNSTV_DTA_ASGN_CHG_PRSN_ID VARCHAR(40)
        , SNSTV_DTA_ASGN_CHG_DT DATETIME
    
    , CONSTRAINT PUR_SNSTV_DTA_ASGN_TP1 PRIMARY KEY(SNSTV_DTA_ASGN_ID)

    , CONSTRAINT PUR_SNSTV_DTA_ASGN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_SNSTV_DTA_T
# -----------------------------------------------------------------------
drop table if exists PUR_SNSTV_DTA_T
/

CREATE TABLE PUR_SNSTV_DTA_T
(
      SNSTV_DTA_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , SNSTV_DTA_DESC VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_SNSTV_DTA_TP1 PRIMARY KEY(SNSTV_DTA_CD)

    , CONSTRAINT PUR_SNSTV_DTA_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_SUPP_DVRST_T
# -----------------------------------------------------------------------
drop table if exists PUR_SUPP_DVRST_T
/

CREATE TABLE PUR_SUPP_DVRST_T
(
      VNDR_SUPP_DVRST_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_SUPP_DVRST_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_SUPP_DVRST_TP1 PRIMARY KEY(VNDR_SUPP_DVRST_CD)

    , CONSTRAINT PUR_SUPP_DVRST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_THRSHLD_T
# -----------------------------------------------------------------------
drop table if exists PUR_THRSHLD_T
/

CREATE TABLE PUR_THRSHLD_T
(
      PUR_THRSHLD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , ACCT_TYP_CD VARCHAR(2)
        , SUB_FUND_GRP_CD VARCHAR(6)
        , FIN_OBJECT_CD VARCHAR(4)
        , ORG_CD VARCHAR(4)
        , PUR_THRSHLD_AMT DECIMAL(19,2)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , PUR_COMM_CD VARCHAR(40)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_THRSHLD_TP1 PRIMARY KEY(PUR_THRSHLD_ID)

    , CONSTRAINT PUR_THRSHLD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_ADDR_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_ADDR_T
/

CREATE TABLE PUR_VNDR_ADDR_T
(
      VNDR_ADDR_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_DTL_ASND_ID DECIMAL(10) NOT NULL
        , VNDR_ADDR_TYP_CD VARCHAR(4) NOT NULL
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_ZIP_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , VNDR_ATTN_NM VARCHAR(45)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
        , VNDR_ADDR_EMAIL_ADDR VARCHAR(90)
        , VNDR_B2B_URL_ADDR VARCHAR(90)
        , VNDR_FAX_NBR VARCHAR(40)
        , VNDR_DFLT_ADDR_IND VARCHAR(1)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , VNDR_ACCOUNT_NBR VARCHAR(7)
        , VNDR_FIN_COA_CD VARCHAR(2)
        , OLE_VNDR_ADDR_NT VARCHAR(400)
    
    , CONSTRAINT PUR_VNDR_ADDR_TP1 PRIMARY KEY(VNDR_ADDR_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_ADDR_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX PUR_VNDR_ADDR_TI1 (VNDR_HDR_GNRTD_ID , VNDR_DTL_ASND_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_ALIAS_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_ALIAS_T
/

CREATE TABLE PUR_VNDR_ALIAS_T
(
      VNDR_ALIAS_NM VARCHAR(4000)
        , GOKB_VNDR_ALIAS_IND VARCHAR(1) default 'N'
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , OLE_ALIAS_TYP_ID DECIMAL(8)
        , OLE_PUR_VNDR_ALIAS_ID DECIMAL(10)
    
    , CONSTRAINT PUR_VNDR_ALIAS_TP1 PRIMARY KEY(VNDR_HDR_GNRTD_ID,VNDR_DTL_ASND_ID,OLE_PUR_VNDR_ALIAS_ID)

    , CONSTRAINT PUR_VNDR_ALIAS_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                        
                                    
, INDEX PUR_VNDR_ALIAS_TI1 (VNDR_HDR_GNRTD_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_CNTCT_PHN_NBR_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_CNTCT_PHN_NBR_T
/

CREATE TABLE PUR_VNDR_CNTCT_PHN_NBR_T
(
      VNDR_CNTCT_PHN_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_CNTCT_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_PHN_TYP_CD VARCHAR(4) NOT NULL
        , VNDR_PHN_NBR VARCHAR(40)
        , VNDR_PHN_EXTNS_NBR VARCHAR(10)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_CNTCT_PHN_NBR_TP1 PRIMARY KEY(VNDR_CNTCT_PHN_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_CNTCT_PHN_NBR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_CNTCT_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_CNTCT_T
/

CREATE TABLE PUR_VNDR_CNTCT_T
(
      VNDR_CNTCT_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_DTL_ASND_ID DECIMAL(10) NOT NULL
        , VNDR_CNTCT_TYP_CD VARCHAR(4) NOT NULL
        , VNDR_CNTCT_NM VARCHAR(45)
        , VNDR_CNTCT_EMAIL_ADDR VARCHAR(90)
        , VNDR_CNTCT_CMNT_TXT VARCHAR(800)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_ZIP_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , VNDR_ATTN_NM VARCHAR(45)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , VNDR_ACCOUNT_NBR VARCHAR(7)
        , VNDR_FIN_COA_CD VARCHAR(2)
        , VNDR_CNTCT_TITLE VARCHAR(200)
        , LAST_VERIFIED_DATE DATETIME
        , FORMAT VARCHAR(20)
    
    , CONSTRAINT PUR_VNDR_CNTCT_TP1 PRIMARY KEY(VNDR_CNTCT_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_CNTCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_COMM_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_COMM_T
/

CREATE TABLE PUR_VNDR_COMM_T
(
      VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , PUR_COMM_CD VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PUR_COMM_DFLT_IND VARCHAR(1)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_COMM_TP1 PRIMARY KEY(VNDR_HDR_GNRTD_ID,VNDR_DTL_ASND_ID,PUR_COMM_CD)

    , CONSTRAINT PUR_VNDR_COMM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_CONTR_ORG_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_CONTR_ORG_T
/

CREATE TABLE PUR_VNDR_CONTR_ORG_T
(
      VNDR_CONTR_GNRTD_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2)
        , ORG_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_CTRPO_LMT_AMT DECIMAL(19,2)
        , VNDR_CONTR_EXCL_IND VARCHAR(2)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_CONTR_ORG_TP1 PRIMARY KEY(VNDR_CONTR_GNRTD_ID,FIN_COA_CD,ORG_CD)

    , CONSTRAINT PUR_VNDR_CONTR_ORG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_CONTR_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_CONTR_T
/

CREATE TABLE PUR_VNDR_CONTR_T
(
      VNDR_CONTR_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_DTL_ASND_ID DECIMAL(10) NOT NULL
        , VNDR_CONTR_NM VARCHAR(20)
        , VNDR_CONTR_DESC VARCHAR(60)
        , VNDR_CMP_CD VARCHAR(2)
        , VNDR_CONTR_BEG_DT DATETIME
        , VNDR_CONTR_END_DT DATETIME
        , CONTR_MGR_CD DECIMAL(2)
        , PO_CST_SRC_CD VARCHAR(4)
        , VNDR_PMT_TERM_CD VARCHAR(5)
        , VNDR_SHP_PMT_TERM_CD VARCHAR(4)
        , VNDR_SHP_TTL_CD VARCHAR(4)
        , VNDR_CONTR_EXTNS_DT DATETIME
        , VNDR_B2B_IND VARCHAR(1)
        , ORG_AUTO_PO_LMT DECIMAL(19,2)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_CONTR_TP1 PRIMARY KEY(VNDR_CONTR_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_CONTR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_CUST_NBR_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_CUST_NBR_T
/

CREATE TABLE PUR_VNDR_CUST_NBR_T
(
      VNDR_CUST_NBR_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_DTL_ASND_ID DECIMAL(10) NOT NULL
        , VNDR_CUST_NBR VARCHAR(30) NOT NULL
        , FIN_COA_CD VARCHAR(2)
        , VNDR_ORG_CD VARCHAR(4)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , OLE_STD_DEL_CARR_INT DECIMAL(6,2)
        , CARI_CD VARCHAR(4)
        , OLE_DISCNT DECIMAL(19,4)
        , OLE_VNDR_DISCNT_TYP VARCHAR(1)
    
    , CONSTRAINT PUR_VNDR_CUST_NBR_TP1 PRIMARY KEY(VNDR_CUST_NBR_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_CUST_NBR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_DFLT_ADDR_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_DFLT_ADDR_T
/

CREATE TABLE PUR_VNDR_DFLT_ADDR_T
(
      VNDR_DFLT_ADDR_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_ADDR_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_CMP_CD VARCHAR(2)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_DFLT_ADDR_TP1 PRIMARY KEY(VNDR_DFLT_ADDR_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_DFLT_ADDR_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                            
                                    
, INDEX PUR_VNDR_DFLT_ADDR_TI1 (VNDR_ADDR_GNRTD_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_DTL_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_DTL_T
/

CREATE TABLE PUR_VNDR_DTL_T
(
      VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_PARENT_IND VARCHAR(1)
        , VNDR_NM VARCHAR(45) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , VNDR_INACTV_REAS_CD VARCHAR(4)
        , VNDR_DUNS_NBR VARCHAR(9)
        , VNDR_PMT_TERM_CD VARCHAR(5)
        , VNDR_SHP_TTL_CD VARCHAR(4)
        , VNDR_SHP_PMT_TERM_CD VARCHAR(4)
        , VNDR_CNFM_IND VARCHAR(1)
        , VNDR_PRPYMT_IND VARCHAR(1)
        , VNDR_CCRD_IND VARCHAR(1)
        , VNDR_MIN_ORD_AMT DECIMAL(7,2)
        , VNDR_URL_ADDR VARCHAR(45)
        , VNDR_SOLD_TO_NM VARCHAR(100)
        , VNDR_RMT_NM VARCHAR(45)
        , VNDR_RSTRC_IND VARCHAR(1)
        , VNDR_RSTRC_REAS_TXT VARCHAR(60)
        , VNDR_RSTRC_DT DATETIME
        , VNDR_RSTRC_PRSN_ID VARCHAR(40)
        , VNDR_SOLD_TO_GNRTD_ID DECIMAL(10)
        , VNDR_SOLD_TO_ASND_ID DECIMAL(10)
        , VNDR_1ST_LST_NM_IND VARCHAR(1)
        , COLLECT_TAX_IND VARCHAR(1) default 'Y' NOT NULL
        , OLE_CURR_TYP_ID DECIMAL(8)
        , VNDR_PMT_MTHD_ID DECIMAL(10)
        , VNDR_LINK_ID VARCHAR(40)
        , VNDR_CLM_INTRVL VARCHAR(40)
        , NON_BILL_VND VARCHAR(1) default 'Y'
        , GOKB_ID INTEGER
        , GOKB_ORG_STATUS VARCHAR(30)
        , GOKB_LAST_UPDATED_DATE DATETIME
    
    , CONSTRAINT PUR_VNDR_DTL_TP1 PRIMARY KEY(VNDR_HDR_GNRTD_ID,VNDR_DTL_ASND_ID)

    , CONSTRAINT PUR_VNDR_DTL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_EXCL_MT
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_EXCL_MT
/

CREATE TABLE PUR_VNDR_EXCL_MT
(
      VNDR_EXCL_ID DECIMAL(10)
        , VNDR_EXCL_LOAD_DT DATETIME
        , VNDR_EXCL_NM VARCHAR(200)
        , VNDR_EXCL_LN1_ADDR VARCHAR(150)
        , VNDR_EXCL_LN2_ADDR VARCHAR(50)
        , VNDR_EXCL_CTY_NM VARCHAR(50)
        , VNDR_EXCL_ST_CD VARCHAR(2)
        , VNDR_EXCL_PRVN_NM VARCHAR(20)
        , VNDR_EXCL_ZIP_CD VARCHAR(20)
        , VNDR_EXCL_OTHR_NM VARCHAR(1000)
        , VNDR_EXCL_DESC_TXT VARCHAR(1000)
    
    , CONSTRAINT PUR_VNDR_EXCL_MTP1 PRIMARY KEY(VNDR_EXCL_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_EXCL_MTCH_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_EXCL_MTCH_T
/

CREATE TABLE PUR_VNDR_EXCL_MTCH_T
(
      VNDR_EXCL_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_ADDR_GNRTD_ID DECIMAL(10)
        , VNDR_EXCL_CFRM_STAT_CD VARCHAR(10)
        , VNDR_EXCL_LOAD_DT DATETIME
        , VNDR_EXCL_NM VARCHAR(200)
        , VNDR_EXCL_LN1_ADDR VARCHAR(150)
        , VNDR_EXCL_LN2_ADDR VARCHAR(50)
        , VNDR_EXCL_CTY_NM VARCHAR(50)
        , VNDR_EXCL_ST_CD VARCHAR(2)
        , VNDR_EXCL_PRVN_NM VARCHAR(20)
        , VNDR_EXCL_ZIP_CD VARCHAR(20)
        , VNDR_EXCL_OTHR_NM VARCHAR(1000)
        , VNDR_EXCL_DESC_TXT VARCHAR(1000)
        , LST_UPDT_TS DATETIME
        , LST_UPDT_PRNCPL_NM VARCHAR(100)
    
    , CONSTRAINT PUR_VNDR_EXCL_MTCH_TP1 PRIMARY KEY(VNDR_EXCL_ID)

    , CONSTRAINT PUR_VNDR_EXCL_MTCH_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_HDR_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_HDR_T
/

CREATE TABLE PUR_VNDR_HDR_T
(
      VNDR_HDR_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_TYP_CD VARCHAR(4)
        , VNDR_TAX_NBR VARCHAR(255)
        , VNDR_TAX_TYP_CD VARCHAR(4)
        , VNDR_OWNR_CD VARCHAR(4)
        , VNDR_OWNR_CTGRY_CD VARCHAR(4)
        , VNDR_FWT_BEG_DT DATETIME
        , VNDR_FWT_END_DT DATETIME
        , VNDR_W9_RCVD_IND VARCHAR(1)
        , VNDR_W8_BEN_RCVD_IND VARCHAR(1)
        , VNDR_DEBRD_IND VARCHAR(1)
        , VNDR_FRGN_IND VARCHAR(1)
    
    , CONSTRAINT PUR_VNDR_HDR_TP1 PRIMARY KEY(VNDR_HDR_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_HDR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_INACTV_REAS_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_INACTV_REAS_T
/

CREATE TABLE PUR_VNDR_INACTV_REAS_T
(
      VNDR_INACTV_REAS_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_INACTV_REAS_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_INACTV_REAS_TP1 PRIMARY KEY(VNDR_INACTV_REAS_CD)

    , CONSTRAINT PUR_VNDR_INACTV_REAS_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_PHN_NBR_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_PHN_NBR_T
/

CREATE TABLE PUR_VNDR_PHN_NBR_T
(
      VNDR_PHN_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_DTL_ASND_ID DECIMAL(10) NOT NULL
        , VNDR_PHN_TYP_CD VARCHAR(4) NOT NULL
        , VNDR_PHN_NBR VARCHAR(40)
        , VNDR_PHN_EXTNS_NBR VARCHAR(10)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_PHN_NBR_TP1 PRIMARY KEY(VNDR_PHN_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_PHN_NBR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_SHP_SPCL_COND_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_SHP_SPCL_COND_T
/

CREATE TABLE PUR_VNDR_SHP_SPCL_COND_T
(
      VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_SHP_SPCL_COND_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_SHP_SPCL_COND_TP1 PRIMARY KEY(VNDR_HDR_GNRTD_ID,VNDR_DTL_ASND_ID,VNDR_SHP_SPCL_COND_CD)

    , CONSTRAINT PUR_VNDR_SHP_SPCL_COND_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_STPLTN_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_STPLTN_T
/

CREATE TABLE PUR_VNDR_STPLTN_T
(
      VNDR_STPLTN_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_STPLTN_NM VARCHAR(40) NOT NULL
        , VNDR_STPLTN_DESC VARCHAR(4000) NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_STPLTN_TP1 PRIMARY KEY(VNDR_STPLTN_ID)

    , CONSTRAINT PUR_VNDR_STPLTN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_SUPP_DVRST_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_SUPP_DVRST_T
/

CREATE TABLE PUR_VNDR_SUPP_DVRST_T
(
      VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_SUPP_DVRST_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT PUR_VNDR_SUPP_DVRST_TP1 PRIMARY KEY(VNDR_HDR_GNRTD_ID,VNDR_SUPP_DVRST_CD)

    , CONSTRAINT PUR_VNDR_SUPP_DVRST_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_TAX_CHG_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_TAX_CHG_T
/

CREATE TABLE PUR_VNDR_TAX_CHG_T
(
      VNDR_TAX_CHG_GNRTD_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_HDR_GNRTD_ID DECIMAL(10) NOT NULL
        , VNDR_TAX_CHG_DT DATETIME NOT NULL
        , VNDR_PREV_TAX_NBR VARCHAR(255)
        , VNDR_PREV_TAX_TYP_CD VARCHAR(4)
        , VNDR_TAX_CHG_PRSN_ID VARCHAR(40) NOT NULL
    
    , CONSTRAINT PUR_VNDR_TAX_CHG_TP1 PRIMARY KEY(VNDR_TAX_CHG_GNRTD_ID)

    , CONSTRAINT PUR_VNDR_TAX_CHG_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# PUR_VNDR_TYP_T
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_TYP_T
/

CREATE TABLE PUR_VNDR_TYP_T
(
      VNDR_TYP_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , VNDR_TYP_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
        , VNDR_TAX_NBR_REQ_IND VARCHAR(1)
        , VNDR_TYP_CHG_ALLW_IND VARCHAR(1)
        , VNDR_ADDR_TYP_REQ_CD VARCHAR(4)
        , VNDR_CONTR_ALLW_IND VARCHAR(1)
        , VNDR_SHOW_RVW_IND VARCHAR(1)
        , VNDR_RVW_TXT VARCHAR(4000)
        , PUR_COMM_REQ_IND VARCHAR(1)
    
    , CONSTRAINT PUR_VNDR_TYP_TP1 PRIMARY KEY(VNDR_TYP_CD)

    , CONSTRAINT PUR_VNDR_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_BLOB_TRIGGERS
# -----------------------------------------------------------------------
drop table if exists QRTZ_BLOB_TRIGGERS
/

CREATE TABLE QRTZ_BLOB_TRIGGERS
(
      TRIGGER_NAME VARCHAR(80)
        , TRIGGER_GROUP VARCHAR(80)
        , BLOB_DATA LONGBLOB
    
    , CONSTRAINT QRTZ_BLOB_TRIGGERSP1 PRIMARY KEY(TRIGGER_NAME,TRIGGER_GROUP)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_CALENDARS
# -----------------------------------------------------------------------
drop table if exists QRTZ_CALENDARS
/

CREATE TABLE QRTZ_CALENDARS
(
      CALENDAR_NAME VARCHAR(80)
        , CALENDAR LONGBLOB NOT NULL
    
    , CONSTRAINT QRTZ_CALENDARSP1 PRIMARY KEY(CALENDAR_NAME)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_CRON_TRIGGERS
# -----------------------------------------------------------------------
drop table if exists QRTZ_CRON_TRIGGERS
/

CREATE TABLE QRTZ_CRON_TRIGGERS
(
      TRIGGER_NAME VARCHAR(80)
        , TRIGGER_GROUP VARCHAR(80)
        , CRON_EXPRESSION VARCHAR(80) NOT NULL
        , TIME_ZONE_ID VARCHAR(80)
    
    , CONSTRAINT QRTZ_CRON_TRIGGERSP1 PRIMARY KEY(TRIGGER_NAME,TRIGGER_GROUP)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_FIRED_TRIGGERS
# -----------------------------------------------------------------------
drop table if exists QRTZ_FIRED_TRIGGERS
/

CREATE TABLE QRTZ_FIRED_TRIGGERS
(
      ENTRY_ID VARCHAR(95)
        , TRIGGER_NAME VARCHAR(80) NOT NULL
        , TRIGGER_GROUP VARCHAR(80) NOT NULL
        , IS_VOLATILE VARCHAR(1) NOT NULL
        , INSTANCE_NAME VARCHAR(80) NOT NULL
        , FIRED_TIME DECIMAL(13) NOT NULL
        , PRIORITY DECIMAL(13) NOT NULL
        , STATE VARCHAR(16) NOT NULL
        , JOB_NAME VARCHAR(80)
        , JOB_GROUP VARCHAR(80)
        , IS_STATEFUL VARCHAR(1)
        , REQUESTS_RECOVERY VARCHAR(1)
    
    , CONSTRAINT QRTZ_FIRED_TRIGGERSP1 PRIMARY KEY(ENTRY_ID)





    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_JOB_GROUP (JOB_GROUP )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_JOB_NAME (JOB_NAME )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_JOB_REQ_RECOVERY (REQUESTS_RECOVERY )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_JOB_STATEFUL (IS_STATEFUL )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_TRIG_GROUP (TRIGGER_GROUP )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_TRIG_INST_NAME (INSTANCE_NAME )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_TRIG_NAME (TRIGGER_NAME )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_TRIG_NM_GP (TRIGGER_NAME , TRIGGER_GROUP )
    
                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_FT_TRIG_VOLATILE (IS_VOLATILE )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_JOB_DETAILS
# -----------------------------------------------------------------------
drop table if exists QRTZ_JOB_DETAILS
/

CREATE TABLE QRTZ_JOB_DETAILS
(
      JOB_NAME VARCHAR(80)
        , JOB_GROUP VARCHAR(80)
        , DESCRIPTION VARCHAR(120)
        , JOB_CLASS_NAME VARCHAR(128) NOT NULL
        , IS_DURABLE VARCHAR(1) NOT NULL
        , IS_VOLATILE VARCHAR(1) NOT NULL
        , IS_STATEFUL VARCHAR(1) NOT NULL
        , REQUESTS_RECOVERY VARCHAR(1) NOT NULL
        , JOB_DATA LONGBLOB
    
    , CONSTRAINT QRTZ_JOB_DETAILSP1 PRIMARY KEY(JOB_NAME,JOB_GROUP)





    
                                                                                                                                                                                                                                                                            
                                    
, INDEX IDX_QRTZ_J_REQ_RECOVERY (REQUESTS_RECOVERY )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_JOB_LISTENERS
# -----------------------------------------------------------------------
drop table if exists QRTZ_JOB_LISTENERS
/

CREATE TABLE QRTZ_JOB_LISTENERS
(
      JOB_NAME VARCHAR(80)
        , JOB_GROUP VARCHAR(80)
        , JOB_LISTENER VARCHAR(80)
    
    , CONSTRAINT QRTZ_JOB_LISTENERSP1 PRIMARY KEY(JOB_NAME,JOB_GROUP,JOB_LISTENER)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_LOCKS
# -----------------------------------------------------------------------
drop table if exists QRTZ_LOCKS
/

CREATE TABLE QRTZ_LOCKS
(
      LOCK_NAME VARCHAR(40)
    
    , CONSTRAINT QRTZ_LOCKSP1 PRIMARY KEY(LOCK_NAME)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_PAUSED_TRIGGER_GRPS
# -----------------------------------------------------------------------
drop table if exists QRTZ_PAUSED_TRIGGER_GRPS
/

CREATE TABLE QRTZ_PAUSED_TRIGGER_GRPS
(
      TRIGGER_GROUP VARCHAR(80)
    
    , CONSTRAINT QRTZ_PAUSED_TRIGGER_GRPSP1 PRIMARY KEY(TRIGGER_GROUP)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_SCHEDULER_STATE
# -----------------------------------------------------------------------
drop table if exists QRTZ_SCHEDULER_STATE
/

CREATE TABLE QRTZ_SCHEDULER_STATE
(
      INSTANCE_NAME VARCHAR(80)
        , LAST_CHECKIN_TIME DECIMAL(13) NOT NULL
        , CHECKIN_INTERVAL DECIMAL(13) NOT NULL
    
    , CONSTRAINT QRTZ_SCHEDULER_STATEP1 PRIMARY KEY(INSTANCE_NAME)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_SIMPLE_TRIGGERS
# -----------------------------------------------------------------------
drop table if exists QRTZ_SIMPLE_TRIGGERS
/

CREATE TABLE QRTZ_SIMPLE_TRIGGERS
(
      TRIGGER_NAME VARCHAR(80)
        , TRIGGER_GROUP VARCHAR(80)
        , REPEAT_COUNT DECIMAL(7) NOT NULL
        , REPEAT_INTERVAL DECIMAL(12) NOT NULL
        , TIMES_TRIGGERED DECIMAL(7) NOT NULL
    
    , CONSTRAINT QRTZ_SIMPLE_TRIGGERSP1 PRIMARY KEY(TRIGGER_NAME,TRIGGER_GROUP)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_TRIGGERS
# -----------------------------------------------------------------------
drop table if exists QRTZ_TRIGGERS
/

CREATE TABLE QRTZ_TRIGGERS
(
      TRIGGER_NAME VARCHAR(80)
        , TRIGGER_GROUP VARCHAR(80)
        , JOB_NAME VARCHAR(80) NOT NULL
        , JOB_GROUP VARCHAR(80) NOT NULL
        , IS_VOLATILE VARCHAR(1) NOT NULL
        , DESCRIPTION VARCHAR(120)
        , NEXT_FIRE_TIME DECIMAL(13)
        , PREV_FIRE_TIME DECIMAL(13)
        , PRIORITY DECIMAL(13)
        , TRIGGER_STATE VARCHAR(16) NOT NULL
        , TRIGGER_TYPE VARCHAR(8) NOT NULL
        , START_TIME DECIMAL(13) NOT NULL
        , END_TIME DECIMAL(13)
        , CALENDAR_NAME VARCHAR(80)
        , MISFIRE_INSTR DECIMAL(2)
        , JOB_DATA LONGBLOB
    
    , CONSTRAINT QRTZ_TRIGGERSP1 PRIMARY KEY(TRIGGER_NAME,TRIGGER_GROUP)





    
                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX IDX_QRTZ_T_NEXT_FIRE_TIME (NEXT_FIRE_TIME )
    
                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_T_NFT_ST (NEXT_FIRE_TIME , TRIGGER_STATE )
    
                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_T_STATE (TRIGGER_STATE )
    
                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX IDX_QRTZ_T_VOLATILE (IS_VOLATILE )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# QRTZ_TRIGGER_LISTENERS
# -----------------------------------------------------------------------
drop table if exists QRTZ_TRIGGER_LISTENERS
/

CREATE TABLE QRTZ_TRIGGER_LISTENERS
(
      TRIGGER_NAME VARCHAR(80)
        , TRIGGER_GROUP VARCHAR(80)
        , TRIGGER_LISTENER VARCHAR(80)
    
    , CONSTRAINT QRTZ_TRIGGER_LISTENERSP1 PRIMARY KEY(TRIGGER_NAME,TRIGGER_GROUP,TRIGGER_LISTENER)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SEC_SCRTY_ATTR_T
# -----------------------------------------------------------------------
drop table if exists SEC_SCRTY_ATTR_T
/

CREATE TABLE SEC_SCRTY_ATTR_T
(
      ATTR_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ATTR_NM VARCHAR(100) NOT NULL
        , ACTV_IND CHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT SEC_SCRTY_ATTR_TP1 PRIMARY KEY(ATTR_ID)

    , CONSTRAINT SEC_SCRTY_ATTR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SEC_SCRTY_DEFN_DOC_TYP_T
# -----------------------------------------------------------------------
drop table if exists SEC_SCRTY_DEFN_DOC_TYP_T
/

CREATE TABLE SEC_SCRTY_DEFN_DOC_TYP_T
(
      DEFN_ID DECIMAL(10)
        , DOC_TYP_NM VARCHAR(64)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTV_IND CHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT SEC_SCRTY_DEFN_DOC_TYP_TP1 PRIMARY KEY(DEFN_ID,DOC_TYP_NM)

    , CONSTRAINT SEC_SCRTY_DEFN_DOC_TYP_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SEC_SCRTY_DEFN_T
# -----------------------------------------------------------------------
drop table if exists SEC_SCRTY_DEFN_T
/

CREATE TABLE SEC_SCRTY_DEFN_T
(
      DEFN_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DEFN_NM VARCHAR(100) NOT NULL
        , DEFN_DESC_TXT VARCHAR(400)
        , ROLE_ID VARCHAR(40)
        , ATTR_ID DECIMAL(10) NOT NULL
        , RSTR_VIEW_ACCT_LINE_IND CHAR(1) default 'N' NOT NULL
        , RSTR_EDIT_ACCT_LINE_IND CHAR(1) default 'N' NOT NULL
        , RSTR_VIEW_DOC_IND CHAR(1) default 'N' NOT NULL
        , RSTR_EDIT_DOC_IND CHAR(1) default 'N' NOT NULL
        , RSTR_VIEW_NTE_ATT_IND CHAR(1) default 'N' NOT NULL
        , RSTR_LU_IND CHAR(1) default 'N' NOT NULL
        , RSTR_GL_INQ_IND CHAR(1) default 'N' NOT NULL
        , RSTR_LD_INQ_IND CHAR(1) default 'N' NOT NULL
        , ACTV_IND CHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT SEC_SCRTY_DEFN_TP1 PRIMARY KEY(DEFN_ID)

    , CONSTRAINT SEC_SCRTY_DEFN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SEC_SCRTY_MDL_DEFN_T
# -----------------------------------------------------------------------
drop table if exists SEC_SCRTY_MDL_DEFN_T
/

CREATE TABLE SEC_SCRTY_MDL_DEFN_T
(
      MDL_DEFN_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , MDL_ID DECIMAL(10) NOT NULL
        , DEFN_ID DECIMAL(10) NOT NULL
        , CONS_CD VARCHAR(1) default 'A' NOT NULL
        , OPR_CD VARCHAR(2) NOT NULL
        , ATTR_VAL VARCHAR(400) NOT NULL
        , OVRD_DNY_IND CHAR(1) default 'N' NOT NULL
        , ACTV_IND CHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT SEC_SCRTY_MDL_DEFN_TP1 PRIMARY KEY(MDL_DEFN_ID)

    , CONSTRAINT SEC_SCRTY_MDL_DEFN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SEC_SCRTY_MDL_MBR_T
# -----------------------------------------------------------------------
drop table if exists SEC_SCRTY_MDL_MBR_T
/

CREATE TABLE SEC_SCRTY_MDL_MBR_T
(
      MDL_ID DECIMAL(10)
        , MBR_ID VARCHAR(40)
        , MBR_TYP_CD CHAR(1)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTV_FRM_DT DATETIME
        , ACTV_TO_DT DATETIME
    
    , CONSTRAINT SEC_SCRTY_MDL_MBR_TP1 PRIMARY KEY(MDL_ID,MBR_ID,MBR_TYP_CD)

    , CONSTRAINT SEC_SCRTY_MDL_MBR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SEC_SCRTY_MDL_T
# -----------------------------------------------------------------------
drop table if exists SEC_SCRTY_MDL_T
/

CREATE TABLE SEC_SCRTY_MDL_T
(
      MDL_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , MDL_NM VARCHAR(100) NOT NULL
        , MDL_DESC_TXT VARCHAR(400)
        , ROLE_ID VARCHAR(40)
        , ACTV_IND CHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT SEC_SCRTY_MDL_TP1 PRIMARY KEY(MDL_ID)

    , CONSTRAINT SEC_SCRTY_MDL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SEC_SCRTY_PRNCPL_DEFN_T
# -----------------------------------------------------------------------
drop table if exists SEC_SCRTY_PRNCPL_DEFN_T
/

CREATE TABLE SEC_SCRTY_PRNCPL_DEFN_T
(
      PRNCPL_DEFN_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , DEFN_ID DECIMAL(10) NOT NULL
        , PRNCPL_ID VARCHAR(40) NOT NULL
        , CONS_CD VARCHAR(1) default 'A' NOT NULL
        , OPR_CD VARCHAR(2) NOT NULL
        , ATTR_VAL VARCHAR(400) NOT NULL
        , OVRD_DNY_IND CHAR(1) default 'N' NOT NULL
        , ACTV_IND CHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT SEC_SCRTY_PRNCPL_DEFN_TP1 PRIMARY KEY(PRNCPL_DEFN_ID)

    , CONSTRAINT SEC_SCRTY_PRNCPL_DEFN_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SEC_SCRTY_PRNCPL_T
# -----------------------------------------------------------------------
drop table if exists SEC_SCRTY_PRNCPL_T
/

CREATE TABLE SEC_SCRTY_PRNCPL_T
(
      PRNCPL_ID VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ACTV_IND CHAR(1) default 'Y' NOT NULL
    
    , CONSTRAINT SEC_SCRTY_PRNCPL_TP1 PRIMARY KEY(PRNCPL_ID)

    , CONSTRAINT SEC_SCRTY_PRNCPL_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SH_ACCT_PERIOD_T
# -----------------------------------------------------------------------
drop table if exists SH_ACCT_PERIOD_T
/

CREATE TABLE SH_ACCT_PERIOD_T
(
      UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_PRD_NM VARCHAR(10)
        , ROW_ACTV_IND VARCHAR(1)
        , BDGT_ROLLOVER_CD VARCHAR(1)
        , UNIV_FSCPD_END_DT DATETIME
    
    , CONSTRAINT SH_ACCT_PERIOD_TP1 PRIMARY KEY(UNIV_FISCAL_YR,UNIV_FISCAL_PRD_CD)

    , CONSTRAINT SH_ACCT_PERIOD_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SH_BUILDING_T
# -----------------------------------------------------------------------
drop table if exists SH_BUILDING_T
/

CREATE TABLE SH_BUILDING_T
(
      CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BLDG_NM VARCHAR(40)
        , BLDG_STR_ADDR VARCHAR(40)
        , BLDG_ADDR_CTY_NM VARCHAR(37)
        , BLDG_ADDR_ST_CD VARCHAR(2)
        , BLDG_ADDR_ZIP_CD VARCHAR(20)
        , ALTRNT_BLDG_CD VARCHAR(4)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
        , BLDG_ADDR_CNTRY_CD VARCHAR(2)
    
    , CONSTRAINT SH_BUILDING_TP1 PRIMARY KEY(CAMPUS_CD,BLDG_CD)

    , CONSTRAINT SH_BUILDING_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SH_FNCTNL_FIELD_DESCR_T
# -----------------------------------------------------------------------
drop table if exists SH_FNCTNL_FIELD_DESCR_T
/

CREATE TABLE SH_FNCTNL_FIELD_DESCR_T
(
      NMSPC_CD VARCHAR(20)
        , CMPNT_CLSS VARCHAR(100)
        , PRPRTY_NM VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , FNCTNL_FIELD_DESCR VARCHAR(4000)
        , ACTIVE_IND VARCHAR(1)
    
    , CONSTRAINT SH_FNCTNL_FIELD_DESCR_TP1 PRIMARY KEY(NMSPC_CD,CMPNT_CLSS,PRPRTY_NM)

    , CONSTRAINT SH_FNCTNL_FIELD_DESCR_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SH_ROOM_T
# -----------------------------------------------------------------------
drop table if exists SH_ROOM_T
/

CREATE TABLE SH_ROOM_T
(
      CAMPUS_CD VARCHAR(2)
        , BLDG_CD VARCHAR(10)
        , BLDG_ROOM_NBR VARCHAR(8)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , BLDG_ROOM_TYPE VARCHAR(50)
        , BLDG_ROOM_DEPT VARCHAR(40)
        , BLDG_ROOM_DESC VARCHAR(25)
        , ROW_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT SH_ROOM_TP1 PRIMARY KEY(CAMPUS_CD,BLDG_CD,BLDG_ROOM_NBR)

    , CONSTRAINT SH_ROOM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SH_UNIV_DATE_T
# -----------------------------------------------------------------------
drop table if exists SH_UNIV_DATE_T
/

CREATE TABLE SH_UNIV_DATE_T
(
      UNIV_DT DATETIME
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , UNIV_FISCAL_YR DECIMAL(4)
        , UNIV_FISCAL_PRD_CD VARCHAR(2)
    
    , CONSTRAINT SH_UNIV_DATE_TP1 PRIMARY KEY(UNIV_DT)

    , CONSTRAINT SH_UNIV_DATE_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                        
                                    
, INDEX SH_UNIV_DATE_TI2 (UNIV_FISCAL_YR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# SH_UOM_T
# -----------------------------------------------------------------------
drop table if exists SH_UOM_T
/

CREATE TABLE SH_UOM_T
(
      ITM_UOM_CD VARCHAR(4)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , ITM_UOM_DESC VARCHAR(45)
        , DOBJ_MAINT_CD_ACTV_IND VARCHAR(1) NOT NULL
    
    , CONSTRAINT SH_UOM_TP1 PRIMARY KEY(ITM_UOM_CD)

    , CONSTRAINT PUR_AP_UOM_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_AP_INV_T
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_T
/

CREATE TABLE OLE_AP_INV_T
(
      INV_RQST_ID DECIMAL(9)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_STAT_CD VARCHAR(4)
        , FDOC_NBR VARCHAR(14) NOT NULL
        , INV_DT DATETIME NOT NULL
        , INV_NBR VARCHAR(25)
        , VNDR_INV_AMT DECIMAL(19,2)
        , VNDR_FRGN_INV_AMT DECIMAL(19,2)
        , VNDR_PMT_TERMS_CD VARCHAR(5)
        , VNDR_SHP_PMT_TERM_CD VARCHAR(4)
        , VNDR_CUST_NBR VARCHAR(30)
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , INV_PAY_DT DATETIME
        , PMT_HLD_IND VARCHAR(1)
        , INV_CNCL_IND VARCHAR(1)
        , PMT_ATT_IND VARCHAR(1)
        , IMD_PMT_IND VARCHAR(1)
        , INV_HLD_IND VARCHAR(1)
        , INV_NTE_LN1_TXT VARCHAR(90)
        , INV_NTE_LN2_TXT VARCHAR(90)
        , INV_NTE_LN3_TXT VARCHAR(90)
        , INV_SPCL_HANDLG_INSTRC_LN1_TXT VARCHAR(90)
        , INV_SPCL_HANDLG_INSTRC_LN2_TXT VARCHAR(90)
        , INV_SPCL_HANDLG_INSTRC_LN3_TXT VARCHAR(90)
        , INV_PD_DT DATETIME
        , INV_ELCTRNC_INV_IND VARCHAR(1)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , VNDR_NM VARCHAR(45)
        , VNDR_LN1_ADDR VARCHAR(45)
        , VNDR_LN2_ADDR VARCHAR(45)
        , VNDR_CTY_NM VARCHAR(45)
        , VNDR_ST_CD VARCHAR(2)
        , VNDR_PSTL_CD VARCHAR(20)
        , VNDR_CNTRY_CD VARCHAR(2)
        , PMT_EXTRT_DT DATETIME
        , AP_PRCSR_ID VARCHAR(40) NOT NULL
        , AP_RQST_CNCL_ID VARCHAR(40)
        , AP_HLD_ID VARCHAR(40)
        , PRCS_CMP_CD VARCHAR(2)
        , AP_APRVL_DT DATETIME
        , ORIG_VNDR_HDR_GNRTD_ID DECIMAL(10)
        , ORIG_VNDR_DTL_ASND_ID DECIMAL(10)
        , ALTRNT_VNDR_HDR_GNRTD_ID DECIMAL(10)
        , ALTRNT_VNDR_DTL_ASND_ID DECIMAL(10)
        , CONT_ACCT_IND VARCHAR(1)
        , VNDR_ADDR_INTL_PROV_NM VARCHAR(45)
        , INV_PSTV_APRVL_IND VARCHAR(1)
        , USE_TAX_IND VARCHAR(1) default 'Y' NOT NULL
        , BNK_CD VARCHAR(4)
        , TAX_CLSIF_CD VARCHAR(50)
        , FTX_PCT DECIMAL(10,8)
        , STX_PCT DECIMAL(10,8)
        , TAX_CNTRY_CD VARCHAR(10)
        , GRS_UP_IND VARCHAR(1)
        , TRTY_EXMPT_IND VARCHAR(1)
        , FRGN_SRC_IND VARCHAR(1)
        , SPCL_W4_INC_AMT DECIMAL(19,2)
        , USAID_DIEM_IND VARCHAR(1)
        , INC_TAX_EXMPT_CD_OTHR_IND VARCHAR(1)
        , NQI_CUST_TAX_ID VARCHAR(50)
        , VNDR_ATTN_NM VARCHAR(45)
        , OLE_VNDR_CURR_ID DECIMAL(10)
        , OLE_VNDR_FOR_CURR_INV_AMT DECIMAL(19,2)
        , OLE_INV_TYP_ID DECIMAL(10)
        , OLE_INV_SUB_TYP_ID DECIMAL(10)
        , OLE_PMT_MTHD_ID DECIMAL(10)
        , OLE_CURR_TYP_ID DECIMAL(8)
        , OLE_VNDR_PO_ID VARCHAR(100)
        , ACCT_DISTR_MTD_IND VARCHAR(1) default 'P' NOT NULL
        , OLE_PR_BY VARCHAR(50)
        , OLE_PRFRMA_IND VARCHAR(1)
        , OLE_EXCHNG_RATE VARCHAR(10)
    
    , CONSTRAINT OLE_AP_INV_TP1 PRIMARY KEY(INV_RQST_ID)

    , CONSTRAINT OLE_AP_INV_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX OLE_AP_INV_TI3 (FDOC_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                    
, INDEX OLE_AP_INV_TI4 (AP_PUR_DOC_LNK_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_AP_INV_PO_ITM_T
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_PO_ITM_T
/

CREATE TABLE OLE_AP_INV_PO_ITM_T
(
      INV_PO_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , PO_ID DECIMAL(9)
        , PO_LN_NBR DECIMAL(3)
        , PO_ENCUM_FSCL_YR DECIMAL(4) NOT NULL
        , PO_CLSIF_TYP_DESC VARCHAR(4)
        , INV_RQST_ID DECIMAL(9) NOT NULL
        , AP_PUR_DOC_LNK_ID DECIMAL(10)
        , ITM_LN_NBR DECIMAL(3)
        , ITM_TYP_CD VARCHAR(4)
        , ITM_DESC VARCHAR(4000)
        , ITM_CATLG_NBR VARCHAR(30)
        , ITM_AUX_PART_ID VARCHAR(300)
        , ITM_UOM_CD VARCHAR(4)
        , ITM_INV_QTY DECIMAL(11,2)
        , ITM_UNIT_PRC DECIMAL(19,4)
        , PO_ITM_UNIT_PRC DECIMAL(19,4)
        , CLOSE_PO_IND VARCHAR(1)
        , REOPEN_PO_IND VARCHAR(1)
        , RCVNG_DOC_REQ_IND VARCHAR(1)
        , CPTL_AST_TRN_TYP_CD VARCHAR(4)
        , ITM_CPTL_AST_NTE_TXT VARCHAR(800)
        , ITM_ASND_TO_TRADE_IN_IND VARCHAR(1)
        , ITM_OSTND_INV_QTY DECIMAL(11,2)
        , ITM_OSTND_INV_AMT DECIMAL(19,2)
        , ITM_TAX_AMT DECIMAL(19,4)
        , ITM_EXTND_PRC DECIMAL(19,2)
        , OLE_ITM_OSTND_INV_PRTS DECIMAL(11,2)
        , OLE_ITM_INV_PRTS DECIMAL(11,2)
        , OLE_DISCNT DECIMAL(19,4)
        , OLE_DISCNT_TYP VARCHAR(1)
        , OLE_FOR_DISCNT_TYP VARCHAR(1)
        , OLE_FOR_DISCNT DECIMAL(19,4)
        , OLE_FOR_LST_PRC DECIMAL(19,4)
        , OLE_FOR_DISCNT_AMT DECIMAL(19,4)
        , OLE_FOR_UNT_CST DECIMAL(19,4)
        , OLE_EXCHANGE_RT DECIMAL(19,6)
        , OLE_CON_CST DECIMAL(19,4)
        , OLE_PR_QTY VARCHAR(1)
        , OLE_PR_AMT VARCHAR(1)
        , OLE_PR_MAN VARCHAR(1)
        , OLE_FRMT_ID DECIMAL(8)
        , OLE_VNDR_IT_ID VARCHAR(100)
        , OLE_PO_ITM_ID DECIMAL(10)
        , OLE_LST_PRC DECIMAL(19,4)
        , OLE_DOCUMENT_UUID VARCHAR(50)
        , SUB_FROM_DT DATETIME
        , SUB_TO_DT DATETIME
        , SUB_OVERLAP VARCHAR(1)
        , USE_TAX_IND VARCHAR(1) default 'Y' NOT NULL
        , OLE_ADDL_CHRG_USD VARCHAR(1) default 'N' NOT NULL
        , OLE_REQ_RCPT_STATUS_ID DECIMAL(10)
        , OLE_ITM_PO_END_DT DATETIME
        , OLE_SEQ_NBR DECIMAL(8)
        , OLE_DEBIT_ITM VARCHAR(1) default 'Y'
    
    , CONSTRAINT OLE_AP_INV_PO_ITM_TP1 PRIMARY KEY(INV_PO_ITM_ID)

    , CONSTRAINT OLE_AP_INV_PO_ITM_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX OLE_AP_INV_PO_ITM_TI1 (INV_RQST_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX OLE_AP_INV_PO_ITM_TI4 (AP_PUR_DOC_LNK_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_AP_INV_ACCT_T
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_ACCT_T
/

CREATE TABLE OLE_AP_INV_ACCT_T
(
      INV_ACCT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_PO_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , ACLN_PCT DECIMAL(35,20) NOT NULL
        , DISENC_AMT DECIMAL(19,2) NOT NULL
        , FDOC_LINE_NBR DECIMAL(7)
    
    , CONSTRAINT OLE_AP_INV_ACCT_TP1 PRIMARY KEY(INV_ACCT_ID)

    , CONSTRAINT OLE_AP_INV_ACCT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX OLE_AP_INV_ACCT_TI1 (INV_PO_ITM_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX OLE_AP_INV_ACCT_TI2 (FIN_COA_CD )
    
                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX OLE_AP_INV_ACCT_TI3 (FIN_COA_CD , ACCOUNT_NBR )
    
                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX OLE_AP_INV_ACCT_TI4 (FIN_COA_CD , ACCOUNT_NBR , SUB_ACCT_NBR )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_AP_INV_SUM_ACCT_T
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_SUM_ACCT_T
/

CREATE TABLE OLE_AP_INV_SUM_ACCT_T
(
      INV_SUM_ACCT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_RQST_ID DECIMAL(9)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , CRDT_MEMO_ID DECIMAL(9)
        , LST_UPDT_TS DATETIME
    
    , CONSTRAINT OLE_AP_INV_SUM_ACCT_TP1 PRIMARY KEY(INV_SUM_ACCT_ID)

    , CONSTRAINT OLE_AP_INV_SUM_ACCT_TI1 UNIQUE (INV_RQST_ID, FIN_COA_CD, ACCOUNT_NBR, SUB_ACCT_NBR, FIN_SUB_OBJ_CD, FIN_OBJECT_CD, PROJECT_CD, ORG_REFERENCE_ID)
    , CONSTRAINT OLE_AP_INV_SUM_ACCT_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_AP_INV_ACCT_CHG_T
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_ACCT_CHG_T
/

CREATE TABLE OLE_AP_INV_ACCT_CHG_T
(
      INV_ACCT_CHG_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_PO_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , ACLN_PCT DECIMAL(35,20)
        , INV_ACCT_CHG_TS DATETIME NOT NULL
        , FDOC_POST_YR DECIMAL(4)
        , FDOC_POST_PRD_CD VARCHAR(2)
        , OLE_DISENC_AMT DECIMAL(19,2) NOT NULL
    
    , CONSTRAINT OLE_AP_INV_ACCT_CHG_TP1 PRIMARY KEY(INV_ACCT_CHG_ID)

    , CONSTRAINT OLE_AP_INV_ACCT_CHG_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX OLE_AP_INV_ACCT_CHG_TI1 (INV_ACCT_CHG_TS )
    
                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX OLE_AP_INV_ACCT_CHG_TI2 (INV_PO_ITM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_AP_INV_PO_ITM_USE_TAX_T
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_PO_ITM_USE_TAX_T
/

CREATE TABLE OLE_AP_INV_PO_ITM_USE_TAX_T
(
      INV_PO_ITM_USE_TAX_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_PO_ITM_ID DECIMAL(10)
        , RATE_CD VARCHAR(10) NOT NULL
        , TAX_AMT DECIMAL(19,4)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , ACCOUNT_NBR VARCHAR(7) NOT NULL
        , FIN_OBJECT_CD VARCHAR(4) NOT NULL
    
    , CONSTRAINT OLE_AP_INV_PO_ITM_USE_TAX_TP1 PRIMARY KEY(INV_PO_ITM_USE_TAX_ID)

    , CONSTRAINT OLE_AP_INV_PO_ITM_USE_TAX_TC0 UNIQUE (OBJ_ID)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_AP_INV_ITM_NTE_T
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_ITM_NTE_T
/

CREATE TABLE OLE_AP_INV_ITM_NTE_T
(
      OLE_INV_ITM_NTE_ID DECIMAL(10)
        , INV_PO_ITM_ID DECIMAL(10)
        , OLE_NTE VARCHAR(2000) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_AP_INV_ITM_NTE_TP1 PRIMARY KEY(OLE_INV_ITM_NTE_ID,INV_PO_ITM_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_COPY_T
# -----------------------------------------------------------------------
drop table if exists OLE_COPY_T
/

CREATE TABLE OLE_COPY_T
(
      OLE_COPY_ID VARCHAR(40)
        , REQS_ID DECIMAL(8)
        , REQS_ITM_ID DECIMAL(10)
        , FDOC_NBR VARCHAR(14)
        , PO_ITM_ID DECIMAL(10)
        , RCVNG_LN_ITM_ID DECIMAL(10)
        , RCVNG_COR_ITM_ID DECIMAL(10)
        , ITEM_UUID VARCHAR(100)
        , E_RES_REC_ID VARCHAR(40)
        , SER_RCV_ID VARCHAR(40)
        , INSTANCE_UUID VARCHAR(100)
        , BIB_UUID VARCHAR(100)
        , LOC VARCHAR(40)
        , COPY_NUM VARCHAR(40)
        , PART_NUM VARCHAR(40)
        , ENUM VARCHAR(40)
        , RCPT_STAT VARCHAR(40)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_COPY_TP1 PRIMARY KEY(OLE_COPY_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_LINK_PURAP_DONOR_T
# -----------------------------------------------------------------------
drop table if exists OLE_LINK_PURAP_DONOR_T
/

CREATE TABLE OLE_LINK_PURAP_DONOR_T
(
      LINK_PURAP_DONOR_ID DECIMAL(38)
        , REQ_ITEM_ID DECIMAL(8)
        , FDOC_NBR VARCHAR(14)
        , PO_ITM_ID DECIMAL(8)
        , RCVNG_LN_ITM_ID DECIMAL(8)
        , RCVNG_COR_ITM_ID DECIMAL(8)
        , DONOR_ID VARCHAR(10)
        , DONOR_CODE VARCHAR(10)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_LINK_PURAP_DONOR_TP1 PRIMARY KEY(LINK_PURAP_DONOR_ID)





    
                                                                                                                                                                                                                                                            
                                    
, INDEX OLE_LINK_PURAP_DONOR_TI1 (REQ_ITEM_ID )
    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX OLE_LINK_PURAP_DONOR_TI2 (FDOC_NBR )
    
                                                                                                                                                                                                                                                            
                                    
, INDEX OLE_LINK_PURAP_DONOR_TI3 (PO_ITM_ID )
    
                                                                                                                                                                                                                                                            
                                    
, INDEX OLE_LINK_PURAP_DONOR_TI4 (RCVNG_LN_ITM_ID )
    
                                                                                                                                                                                                                                                            
                                    
, INDEX OLE_LINK_PURAP_DONOR_TI5 (RCVNG_COR_ITM_ID )
    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX OLE_LINK_PURAP_DONOR_TI6 (DONOR_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PAID_COPY_T
# -----------------------------------------------------------------------
drop table if exists OLE_PAID_COPY_T
/

CREATE TABLE OLE_PAID_COPY_T
(
      OLE_PAID_COPY_ID VARCHAR(40)
        , OLE_COPY_ID VARCHAR(40)
        , INV_PO_ITM_ID DECIMAL(10)
        , INV_RQST_ID DECIMAL(9)
        , PMT_RQST_ITM_ID DECIMAL(10)
        , PMT_RQST_ID DECIMAL(9)
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_PAID_COPY_TP1 PRIMARY KEY(OLE_PAID_COPY_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_INV_ING_DET_T
# -----------------------------------------------------------------------
drop table if exists OLE_INV_ING_DET_T
/

CREATE TABLE OLE_INV_ING_DET_T
(
      LOAD_ID DECIMAL(10)
        , VENDOR VARCHAR(36)
        , FILE_NAME VARCHAR(36)
        , UPLOADED_DATE DATETIME
        , VER_NBR DECIMAL(8) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
    
    , CONSTRAINT OLE_INV_ING_DET_TP1 PRIMARY KEY(LOAD_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_AP_INV_OFFSET_ACCT_T
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_OFFSET_ACCT_T
/

CREATE TABLE OLE_AP_INV_OFFSET_ACCT_T
(
      INV_OFF_ACCT_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , INV_PO_ITM_ID DECIMAL(10)
        , FIN_COA_CD VARCHAR(2) NOT NULL
        , OFF_ACCOUNT_NBR VARCHAR(7) NOT NULL
        , OFF_SUB_ACCT_NBR VARCHAR(5)
        , OFF_FIN_SUB_OBJ_CD VARCHAR(3)
        , OFF_FIN_OBJECT_CD VARCHAR(4) NOT NULL
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ITM_ACCT_TOT_AMT DECIMAL(19,2) NOT NULL
        , ACLN_PCT DECIMAL(35,20) NOT NULL
        , DISENC_AMT DECIMAL(19,2) NOT NULL
        , FDOC_LINE_NBR DECIMAL(7)
    
    , CONSTRAINT OLE_AP_INV_OFFSET_ACCT_TP1 PRIMARY KEY(INV_OFF_ACCT_ID)

    , CONSTRAINT OLE_AP_INV_OFF_ACCT_TC0 UNIQUE (OBJ_ID)




    
                                                                                                                                                                                                                                                                                                                                                                
                                    
, INDEX OLE_AP_INV_OFF_ACCT_TI1 (INV_PO_ITM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PO_CLM_HIS_T
# -----------------------------------------------------------------------
drop table if exists OLE_PO_CLM_HIS_T
/

CREATE TABLE OLE_PO_CLM_HIS_T
(
      OLE_PO_CLM_HIS_ID VARCHAR(40)
        , CLM_DT DATETIME
        , OPTR_ID VARCHAR(40)
        , CLM_CNT DECIMAL(8)
        , CLM_RESP_INFO VARCHAR(500)
        , REQS_ITM_ID DECIMAL(10)
        , FDOC_NBR VARCHAR(14)
        , PO_ITM_ID DECIMAL(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_PO_CLM_HIS_TP1 PRIMARY KEY(OLE_PO_CLM_HIS_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PLTFRM_T
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_T
/

CREATE TABLE OLE_PLTFRM_T
(
      OLE_PLTFRM_ID VARCHAR(10)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8)
        , NAME VARCHAR(100)
        , GOKB_ID INTEGER
        , STATUS_ID VARCHAR(10)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , SOFTWARE VARCHAR(40)
        , ACTIVE VARCHAR(1)
        , BRANDED VARCHAR(1)
        , BRANDING_NOTE VARCHAR(800)
        , LINK_RESOLVER VARCHAR(1)
        , LINK_RESOLVER_NOTE VARCHAR(800)
        , DOC_NUM VARCHAR(40)
        , GOKB_LAST_UPDATED_DATE DATETIME
    
    , CONSTRAINT OLE_PLTFRM_TP1 PRIMARY KEY(OLE_PLTFRM_ID)





    
                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX OLE_PLTFRM_T_I1 (STATUS_ID )
    
                                                                                                                                                                                                                                                                                                                                                                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                                    
                                    
, INDEX OLE_PLTFRM_T_I2 (VNDR_HDR_GNRTD_ID , VNDR_DTL_ASND_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PLTFRM_GNRL_NOTE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_GNRL_NOTE_T
/

CREATE TABLE OLE_PLTFRM_GNRL_NOTE_T
(
      PLTFRM_GNRL_NOTE_ID VARCHAR(10)
        , OLE_PLTFRM_ID VARCHAR(10)
        , NOTE VARCHAR(500)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_PLTFRM_GNRL_NOTE_TP1 PRIMARY KEY(PLTFRM_GNRL_NOTE_ID)





    
                                                                                                                                                                                            
                                    
, INDEX OLE_PLTFRM_GEN_NTE_I (OLE_PLTFRM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PLTFRM_VAR_TITLE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_VAR_TITLE_T
/

CREATE TABLE OLE_PLTFRM_VAR_TITLE_T
(
      PLTFRM_VAR_TITLE_ID VARCHAR(10)
        , OLE_PLTFRM_ID VARCHAR(10)
        , VAR_TITLE VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_PLTFRM_VAR_TITLE_TP1 PRIMARY KEY(PLTFRM_VAR_TITLE_ID)





    
                                                                                                                                                                                            
                                    
, INDEX OLE_PLTFRM_VRNT_TTL_I (OLE_PLTFRM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PLTFRM_ADMIN_URL_T
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_ADMIN_URL_T
/

CREATE TABLE OLE_PLTFRM_ADMIN_URL_T
(
      PLTFRM_ADMIN_URL_ID VARCHAR(10)
        , OLE_PLTFRM_ID VARCHAR(10)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8)
        , URL VARCHAR(200)
        , TYPE_ID VARCHAR(10)
        , USR_NM VARCHAR(50)
        , PWD VARCHAR(50)
        , NOTE VARCHAR(256)
        , SAVE_FLAG VARCHAR(1)
    
    , CONSTRAINT OLE_PLTFRM_ADMIN_URL_TP1 PRIMARY KEY(PLTFRM_ADMIN_URL_ID)





    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX OLE_PLTFRM_ADMIN_URL_T_I1 (TYPE_ID )
    
                                                                                                                                                                                                                                                                                                
                                    
, INDEX OLE_PLTFRM_ADMIN_URL_T_I2 (OLE_PLTFRM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PLTFRM_EVNT_LOG_T
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_EVNT_LOG_T
/

CREATE TABLE OLE_PLTFRM_EVNT_LOG_T
(
      PLTFRM_EVNT_LOG_ID VARCHAR(10)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8)
        , LOG_TYPE_ID VARCHAR(10)
        , EVNT_TYPE_ID VARCHAR(10)
        , PROBLM_TYPE_ID VARCHAR(10)
        , NOTE VARCHAR(4000)
        , USR_ID VARCHAR(40)
        , REPORT_DT DATETIME
        , STATUS VARCHAR(40)
        , RESOLUTION_DT DATETIME
        , RESOLUTION VARCHAR(40)
        , SAVE_FLAG VARCHAR(1)
        , OLE_PLTFRM_ID VARCHAR(10)
        , ATT_FILE_NAME1 VARCHAR(40)
        , ATT_CONTENT1 LONGBLOB
        , ATT_MIME_TYPE1 VARCHAR(100)
        , ATT_FILE_NAME2 VARCHAR(40)
        , ATT_CONTENT2 LONGBLOB
        , ATT_MIME_TYPE2 VARCHAR(100)
    
    , CONSTRAINT OLE_PLTFRM_EVNT_LOG_TP1 PRIMARY KEY(PLTFRM_EVNT_LOG_ID)





    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                    
, INDEX OLE_PLTFRM_EVNT_LOG_I (OLE_PLTFRM_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# GOKB_DATA_ELMNT_T
# -----------------------------------------------------------------------
drop table if exists GOKB_DATA_ELMNT_T
/

CREATE TABLE GOKB_DATA_ELMNT_T
(
      DATA_ELMNT_ID VARCHAR(10)
        , DATA_ELMNT_NM VARCHAR(40)
        , REC_TYP VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT GOKB_DATA_ELMNT_TP1 PRIMARY KEY(DATA_ELMNT_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_GOKB_MAP_VAL_T
# -----------------------------------------------------------------------
drop table if exists OLE_GOKB_MAP_VAL_T
/

CREATE TABLE OLE_GOKB_MAP_VAL_T
(
      GOKB_MAP_ID VARCHAR(10)
        , REC_ID VARCHAR(40)
        , DATA_ELMNT_ID VARCHAR(40)
        , GOKB_VAL VARCHAR(4000)
        , LOCAL_VAL VARCHAR(4000)
        , REC_TYP VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_GOKB_MAP_VAL_TP1 PRIMARY KEY(GOKB_MAP_ID)





    
                                                                                                                                                                                                                                                        
                                    
, INDEX OLE_GOKB_MAP_VAL_T_I (DATA_ELMNT_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# VNDR_EVNT_LOG_T
# -----------------------------------------------------------------------
drop table if exists VNDR_EVNT_LOG_T
/

CREATE TABLE VNDR_EVNT_LOG_T
(
      VNDR_EVNT_LOG_ID VARCHAR(10)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8)
        , LOG_TYPE_ID VARCHAR(10)
        , EVNT_TYPE_ID VARCHAR(10)
        , NOTE VARCHAR(4000)
        , USER_ID VARCHAR(40)
        , LOG_DATE DATETIME
        , VNDR_HDR_GNRTD_ID VARCHAR(36)
        , VNDR_DTL_ASND_ID VARCHAR(36)
    
    , CONSTRAINT VNDR_EVNT_LOG_TP1 PRIMARY KEY(VNDR_EVNT_LOG_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_E_RES_CREATE_PO_T
# -----------------------------------------------------------------------
drop table if exists OLE_E_RES_CREATE_PO_T
/

CREATE TABLE OLE_E_RES_CREATE_PO_T
(
      E_RES_CREATE_PO_ID VARCHAR(10)
        , E_RES_REC_ID VARCHAR(10)
        , INST_ID VARCHAR(50)
        , INST_FLAG VARCHAR(10)
        , VNDR_ID VARCHAR(40)
        , PURP_ID VARCHAR(10)
        , ORDER_TYPE_ID VARCHAR(10)
        , PRICE VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_E_RES_CREATE_PO_TP1 PRIMARY KEY(E_RES_CREATE_PO_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_E_RES_CREATE_PO_ACCTG_LN_T
# -----------------------------------------------------------------------
drop table if exists OLE_E_RES_CREATE_PO_ACCTG_LN_T
/

CREATE TABLE OLE_E_RES_CREATE_PO_ACCTG_LN_T
(
      CREATE_PO_ACCTG_LN_ID VARCHAR(10)
        , CREATE_PO_ID VARCHAR(10)
        , FIN_COA_CD VARCHAR(2)
        , ACCOUNT_NBR VARCHAR(7)
        , SUB_ACCT_NBR VARCHAR(5)
        , FIN_OBJECT_CD VARCHAR(4)
        , FIN_SUB_OBJ_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REFERENCE_ID VARCHAR(8)
        , ACLN_PCT DECIMAL(35,20)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_E_RES_CREATE_PO_ACCTG_LP1 PRIMARY KEY(CREATE_PO_ACCTG_LN_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_FUND_CD_ACCTG_LN_T
# -----------------------------------------------------------------------
drop table if exists OLE_FUND_CD_ACCTG_LN_T
/

CREATE TABLE OLE_FUND_CD_ACCTG_LN_T
(
      FUND_CD_ACCTG_LN_ID VARCHAR(10)
        , FUND_CD_ID VARCHAR(10)
        , CHART_CD VARCHAR(2) NOT NULL
        , ACCT_NUM VARCHAR(7) NOT NULL
        , SUB_ACCT_NUM VARCHAR(5)
        , OBJECT_CD VARCHAR(4) NOT NULL
        , SUB_OBJECT_CD VARCHAR(3)
        , PROJECT_CD VARCHAR(10)
        , ORG_REF_ID VARCHAR(8)
        , PERCENTAGE DECIMAL(35,20) NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_FUND_CD_ACCTG_LN_TP1 PRIMARY KEY(FUND_CD_ACCTG_LN_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_FUND_CD_T
# -----------------------------------------------------------------------
drop table if exists OLE_FUND_CD_T
/

CREATE TABLE OLE_FUND_CD_T
(
      FUND_CD_ID VARCHAR(10)
        , CD VARCHAR(15)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_FUND_CD_TP1 PRIMARY KEY(FUND_CD_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_MOB_ACC_T
# -----------------------------------------------------------------------
drop table if exists OLE_MOB_ACC_T
/

CREATE TABLE OLE_MOB_ACC_T
(
      MOB_ACC_ID VARCHAR(10)
        , NAME VARCHAR(40)
        , DESCRIPTION VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_MOB_ACC_TP1 PRIMARY KEY(MOB_ACC_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_MARC_REC_SRC_TYPE_T
# -----------------------------------------------------------------------
drop table if exists OLE_MARC_REC_SRC_TYPE_T
/

CREATE TABLE OLE_MARC_REC_SRC_TYPE_T
(
      MARC_REC_SRC_TYPE_ID VARCHAR(10)
        , NAME VARCHAR(40)
        , DESCRIPTION VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_MARC_REC_SRC_TYPE_TP1 PRIMARY KEY(MARC_REC_SRC_TYPE_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_MARC_UPDT_FREQ_T
# -----------------------------------------------------------------------
drop table if exists OLE_MARC_UPDT_FREQ_T
/

CREATE TABLE OLE_MARC_UPDT_FREQ_T
(
      MARC_UPDT_FREQ_ID VARCHAR(10)
        , MARC_UPDT_FREQ_CD VARCHAR(40)
        , MARC_UPDT_FREQ_NM VARCHAR(100)
        , MARC_UPDT_FREQ_DESC VARCHAR(800)
        , MARC_UPDT_FREQ INTEGER
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_MARC_UPDT_FREQ_TP1 PRIMARY KEY(MARC_UPDT_FREQ_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_E_RES_PLTFRM_EVNT_TYPE_T
# -----------------------------------------------------------------------
drop table if exists OLE_E_RES_PLTFRM_EVNT_TYPE_T
/

CREATE TABLE OLE_E_RES_PLTFRM_EVNT_TYPE_T
(
      E_RES_PLTFRM_EVNT_TYPE_ID VARCHAR(10)
        , NAME VARCHAR(40)
        , DESCRIPTION VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_E_RES_PLTFRM_EVNT_TYPE_P1 PRIMARY KEY(E_RES_PLTFRM_EVNT_TYPE_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PRBLM_TYPE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PRBLM_TYPE_T
/

CREATE TABLE OLE_PRBLM_TYPE_T
(
      PRBLM_TYPE_ID VARCHAR(10)
        , NAME VARCHAR(40)
        , DESCRIPTION VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_PRBLM_TYPE_TP1 PRIMARY KEY(PRBLM_TYPE_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_LOG_TYPE_T
# -----------------------------------------------------------------------
drop table if exists OLE_LOG_TYPE_T
/

CREATE TABLE OLE_LOG_TYPE_T
(
      LOG_TYP_ID VARCHAR(10)
        , NAME VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_LOG_TYPE_TP1 PRIMARY KEY(LOG_TYP_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PLTFRM_ADMIN_URL_TYPE_T
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_ADMIN_URL_TYPE_T
/

CREATE TABLE OLE_PLTFRM_ADMIN_URL_TYPE_T
(
      PLTFRM_ADMIN_URL_TYPE_ID VARCHAR(10)
        , NAME VARCHAR(50)
        , DESCRIPTION VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_PLTFRM_ADMIN_URL_TYPE_TP1 PRIMARY KEY(PLTFRM_ADMIN_URL_TYPE_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PLTFRM_STATUS_T
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_STATUS_T
/

CREATE TABLE OLE_PLTFRM_STATUS_T
(
      PLTFRM_STATUS_ID VARCHAR(10)
        , NAME VARCHAR(40)
        , DESCRIPTION VARCHAR(100)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1)
    
    , CONSTRAINT OLE_PLTFRM_STATUS_TP1 PRIMARY KEY(PLTFRM_STATUS_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PO_PURP_T
# -----------------------------------------------------------------------
drop table if exists OLE_PO_PURP_T
/

CREATE TABLE OLE_PO_PURP_T
(
      OLE_PO_PURP_ID VARCHAR(10)
        , OLE_PO_PURP_NM VARCHAR(40)
        , OLE_PO_PURP_CD VARCHAR(40)
        , OLE_PO_PURP_DESC VARCHAR(40)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
        , ROW_ACT_IND VARCHAR(1) default 'Y'
    
    , CONSTRAINT OLE_PO_PURP_TP1 PRIMARY KEY(OLE_PO_PURP_ID)

    , CONSTRAINT OLE_PO_PURP_CD UNIQUE (OLE_PO_PURP_CD)





) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_VNDR_ROLE_T
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_ROLE_T
/

CREATE TABLE OLE_VNDR_ROLE_T
(
      VNDR_ROLE_ID VARCHAR(10)
        , NAME VARCHAR(50)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_VNDR_ROLE_TP1 PRIMARY KEY(VNDR_ROLE_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_VNDR_ASSOCIATION_T
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_ASSOCIATION_T
/

CREATE TABLE OLE_VNDR_ASSOCIATION_T
(
      VNDR_ASSOCIATION_ID VARCHAR(10)
        , VNDR_HDR_GNRTD_ID DECIMAL(10)
        , VNDR_DTL_ASND_ID DECIMAL(10)
        , ASSOCIATED_ENTITY_ID VARCHAR(50)
        , VNDR_ROLE_ID VARCHAR(10)
        , OBJ_ID VARCHAR(36)
        , VER_NBR DECIMAL(8)
    
    , CONSTRAINT OLE_VNDR_ASSOCIATION_TP1 PRIMARY KEY(VNDR_ASSOCIATION_ID)





    
                                                                                                                                                                                                                                    
                                    
, INDEX OLE_VNDR_ASSOCIATION_I (VNDR_ROLE_ID )

) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_ERES_SYNC_GOKB_LOG_T
# -----------------------------------------------------------------------
drop table if exists OLE_ERES_SYNC_GOKB_LOG_T
/

CREATE TABLE OLE_ERES_SYNC_GOKB_LOG_T
(
      ERES_SYNC_GOKB_LOG_ID VARCHAR(10)
        , E_RES_REC_ID VARCHAR(40)
        , E_RES_UPDATED_CNT INTEGER
        , E_HOLDINGS_ADDED_CNT INTEGER
        , E_HOLDINGS_UPDATED_CNT INTEGER
        , E_HOLDINGS_RETIRED_CNT INTEGER
        , E_HOLDINGS_DELETED_CNT INTEGER
        , BIB_ADDED_CNT INTEGER
        , VENDORS_ADDED_CNT INTEGER
        , VENDORS_UPDATED_CNT INTEGER
        , PLTFRMS_ADDED_CNT INTEGER
        , PLTFRMS_UPDATED_CNT INTEGER
        , USER_NM VARCHAR(100)
        , STATUS VARCHAR(20)
        , START_TIME DATETIME
        , END_TIME DATETIME
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_ERES_SYNC_GOKB_LOG_TP1 PRIMARY KEY(ERES_SYNC_GOKB_LOG_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_GOKB_CONFIG_T
# -----------------------------------------------------------------------
drop table if exists OLE_GOKB_CONFIG_T
/

CREATE TABLE OLE_GOKB_CONFIG_T
(
      GOKB_CONFIG_ID VARCHAR(10)
        , GOKB_CONFIG VARCHAR(20)
        , UPDATED_DT DATETIME
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) NOT NULL
    
    , CONSTRAINT OLE_GOKB_CONFIG_TP1 PRIMARY KEY(GOKB_CONFIG_ID)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# OLE_PUR_POBA_T
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_POBA_T
/

CREATE TABLE OLE_PUR_POBA_T
(
      FDOC_NBR VARCHAR(10)
        , OBJ_ID VARCHAR(36) NOT NULL
        , VER_NBR DECIMAL(8) default 1 NOT NULL
        , OLE_POBA_ID DECIMAL(10)
        , UPLD_FILE_NM VARCHAR(120)
        , UPLD_TYPE VARCHAR(40)
        , POBA_START_DT DATETIME
        , POBA_START_TM VARCHAR(40)
        , POBA_PRNCPL_NM VARCHAR(50)
    
    , CONSTRAINT OLE_PUR_POBA_TP1 PRIMARY KEY(FDOC_NBR)






) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


# -----------------------------------------------------------------------
# CA_OBJECT_CODE_V
# -----------------------------------------------------------------------
drop view if exists CA_OBJECT_CODE_V
/
CREATE VIEW CA_OBJECT_CODE_V AS 
( SELECT         C.UNIV_FISCAL_YR,         FIN_COA_CD,         FIN_OBJECT_CD,         FIN_OBJ_CD_NM,         FIN_OBJ_CD_SHRT_NM,         FIN_OBJ_LEVEL_CD,         RPTS_TO_FIN_COA_CD,         RPTS_TO_FIN_OBJ_CD ,         FIN_OBJ_TYP_CD,         FIN_OBJ_SUB_TYP_CD,         HIST_FIN_OBJECT_CD,         FIN_OBJ_ACTIVE_CD,         FOBJ_BDGT_AGGR_CD,         FOBJ_MNXFR_ELIM_CD,         FIN_FED_FUNDED_CD,         NXT_YR_FIN_OBJ_CD,         RSCH_BDGT_CTGRY_CD,         RSCH_OBJ_CD_DESC,         RSCH_ON_CMP_IND          FROM CA_OBJECT_CODE_T C, SH_UNIV_DATE_T S WHERE C.UNIV_FISCAL_YR = S.UNIV_FISCAL_YR AND UNIV_DT = DATE(NOW()) )




/


# -----------------------------------------------------------------------
# CA_SUB_OBJECT_CD_V
# -----------------------------------------------------------------------
drop view if exists CA_SUB_OBJECT_CD_V
/
CREATE VIEW CA_SUB_OBJECT_CD_V AS 
( SELECT         C.UNIV_FISCAL_YR,         FIN_COA_CD,         ACCOUNT_NBR,         FIN_OBJECT_CD,         FIN_SUB_OBJ_CD,         FIN_SUB_OBJ_CD_NM,         FIN_SUBOBJ_SHRT_NM,         FIN_SUBOBJ_ACTV_CD FROM CA_SUB_OBJECT_CD_T C, SH_UNIV_DATE_T S WHERE C.UNIV_FISCAL_YR = S.UNIV_FISCAL_YR AND UNIV_DT = DATE(NOW()) )




/


# -----------------------------------------------------------------------
# PUR_PO_ITM_TOT_AMT_V
# -----------------------------------------------------------------------
drop view if exists PUR_PO_ITM_TOT_AMT_V
/
CREATE VIEW PUR_PO_ITM_TOT_AMT_V AS 
(select fdoc_nbr, sum(
                     CASE
                     WHEN ITM_ACTV_IND = 'Y' AND ITM_ORD_QTY IS NULL THEN ITM_UNIT_PRC
                     WHEN ITM_ACTV_IND = 'Y' AND ITM_ORD_QTY IS NOT NULL THEN ITM_ORD_QTY * ITM_UNIT_PRC
                     WHEN ITM_ACTV_IND IS NULL AND ITM_ORD_QTY IS NULL THEN ITM_UNIT_PRC
                     WHEN ITM_ACTV_IND IS NULL AND ITM_ORD_QTY IS NOT NULL THEN ITM_ORD_QTY * ITM_UNIT_PRC
                     WHEN ITM_ACTV_IND ='N' THEN 0
                     ELSE 0
                       END) as TOTAL_AMOUNT
       from PUR_PO_ITM_T group by fdoc_nbr)

/


# -----------------------------------------------------------------------
# PUR_PO_ITM_TOT_ENC_V
# -----------------------------------------------------------------------
drop view if exists PUR_PO_ITM_TOT_ENC_V
/
CREATE VIEW PUR_PO_ITM_TOT_ENC_V AS 
(SELECT A.FDOC_NBR AS FDOC_NBR,         SUM(A.ITM_OSTND_ENC_AMT) AS TOTAL_ENCUMBRANCE, SUM(A.ITM_INV_TOT_QTY) AS INVOICED_QUANTITY FROM PUR_PO_ITM_T A GROUP BY A.FDOC_NBR)




/


# -----------------------------------------------------------------------
# PUR_PO_V
# -----------------------------------------------------------------------
drop view if exists PUR_PO_V
/
CREATE VIEW PUR_PO_V AS 
SELECT P.AP_PUR_DOC_LNK_ID,             P.PO_ID,             P.PO_CUR_IND,             P.FDOC_NBR,             P.OBJ_ID,             D.APP_DOC_STAT,             P.RECUR_PMT_TYP_CD,             P.PO_VNDR_CHC_CD,             P.PO_END_DT,             E.TOTAL_ENCUMBRANCE,             SUMMATION.TOTAL_AMOUNT,   P.PO_CRTE_DT AS PO_CRTE_DT, E.INVOICED_QUANTITY AS INVOICED_QUANTITY,  POTYPE.OLE_PO_TYPE   FROM PUR_PO_T P,      KREW_DOC_HDR_T D,      PUR_PO_ITM_TOT_ENC_V E,    OLE_PUR_PO_TYP_T POTYPE,        PUR_PO_ITM_TOT_AMT_V SUMMATION WHERE P.FDOC_NBR = E.FDOC_NBR    AND P.FDOC_NBR=D.DOC_HDR_ID  AND P.FDOC_NBR = SUMMATION.FDOC_NBR AND P.OLE_PO_TYPE_ID = POTYPE.OLE_PO_TYPE_ID




/


# -----------------------------------------------------------------------
# AP_CRDT_MEMO_ACCT_CHG_SEQ
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEMO_ACCT_CHG_SEQ
/

CREATE TABLE AP_CRDT_MEMO_ACCT_CHG_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_CRDT_MEMO_ACCT_CHG_SEQ auto_increment = 2000
/

# -----------------------------------------------------------------------
# AP_CRDT_MEMO_ACCT_HIST_SEQ
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEMO_ACCT_HIST_SEQ
/

CREATE TABLE AP_CRDT_MEMO_ACCT_HIST_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_CRDT_MEMO_ACCT_HIST_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# AP_CRDT_MEM_ITM_USE_TAX_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists AP_CRDT_MEM_ITM_USE_TAX_ID_SEQ
/

CREATE TABLE AP_CRDT_MEM_ITM_USE_TAX_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_CRDT_MEM_ITM_USE_TAX_ID_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# AP_ELCTRNC_INV_MAP_ID
# -----------------------------------------------------------------------
drop table if exists AP_ELCTRNC_INV_MAP_ID
/

CREATE TABLE AP_ELCTRNC_INV_MAP_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_ELCTRNC_INV_MAP_ID auto_increment = 1
/

# -----------------------------------------------------------------------
# AP_INV_RJT_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists AP_INV_RJT_ID_SEQ
/

CREATE TABLE AP_INV_RJT_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_INV_RJT_ID_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# AP_NEG_PMT_RQST_APRVL_LMT_ID
# -----------------------------------------------------------------------
drop table if exists AP_NEG_PMT_RQST_APRVL_LMT_ID
/

CREATE TABLE AP_NEG_PMT_RQST_APRVL_LMT_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_NEG_PMT_RQST_APRVL_LMT_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# AP_PMT_RQST_ACCT_CHG_SEQ
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_ACCT_CHG_SEQ
/

CREATE TABLE AP_PMT_RQST_ACCT_CHG_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_PMT_RQST_ACCT_CHG_SEQ auto_increment = 2000
/

# -----------------------------------------------------------------------
# AP_PMT_RQST_ACCT_HIST_SEQ
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_ACCT_HIST_SEQ
/

CREATE TABLE AP_PMT_RQST_ACCT_HIST_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_PMT_RQST_ACCT_HIST_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# AP_PMT_RQST_ITM_USE_TAX_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists AP_PMT_RQST_ITM_USE_TAX_ID_SEQ
/

CREATE TABLE AP_PMT_RQST_ITM_USE_TAX_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_PMT_RQST_ITM_USE_TAX_ID_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# AP_PUR_DOC_LNK_ID
# -----------------------------------------------------------------------
drop table if exists AP_PUR_DOC_LNK_ID
/

CREATE TABLE AP_PUR_DOC_LNK_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_PUR_DOC_LNK_ID auto_increment = 21
/

# -----------------------------------------------------------------------
# AP_SUM_ACCT_T_SEQ
# -----------------------------------------------------------------------
drop table if exists AP_SUM_ACCT_T_SEQ
/

CREATE TABLE AP_SUM_ACCT_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE AP_SUM_ACCT_T_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# CA_A21_ICR_ACCT_SEQ
# -----------------------------------------------------------------------
drop table if exists CA_A21_ICR_ACCT_SEQ
/

CREATE TABLE CA_A21_ICR_ACCT_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CA_A21_ICR_ACCT_SEQ auto_increment = 10004
/

# -----------------------------------------------------------------------
# CA_ACCT_AUTODEF_ICR_SEQ
# -----------------------------------------------------------------------
drop table if exists CA_ACCT_AUTODEF_ICR_SEQ
/

CREATE TABLE CA_ACCT_AUTODEF_ICR_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CA_ACCT_AUTODEF_ICR_SEQ auto_increment = 10000
/

# -----------------------------------------------------------------------
# CA_ICR_ACCT_SEQ
# -----------------------------------------------------------------------
drop table if exists CA_ICR_ACCT_SEQ
/

CREATE TABLE CA_ICR_ACCT_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CA_ICR_ACCT_SEQ auto_increment = 12269
/

# -----------------------------------------------------------------------
# CGPRPSL_NBR_SEQ
# -----------------------------------------------------------------------
drop table if exists CGPRPSL_NBR_SEQ
/

CREATE TABLE CGPRPSL_NBR_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CGPRPSL_NBR_SEQ auto_increment = 80059
/

# -----------------------------------------------------------------------
# CG_AGENCY_NBR_SEQ
# -----------------------------------------------------------------------
drop table if exists CG_AGENCY_NBR_SEQ
/

CREATE TABLE CG_AGENCY_NBR_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CG_AGENCY_NBR_SEQ auto_increment = 55061
/

# -----------------------------------------------------------------------
# CG_PRPSL_CLOSE_NBR_SEQ
# -----------------------------------------------------------------------
drop table if exists CG_PRPSL_CLOSE_NBR_SEQ
/

CREATE TABLE CG_PRPSL_CLOSE_NBR_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CG_PRPSL_CLOSE_NBR_SEQ auto_increment = 2040
/

# -----------------------------------------------------------------------
# CG_SUBCNR_NBR_SEQ
# -----------------------------------------------------------------------
drop table if exists CG_SUBCNR_NBR_SEQ
/

CREATE TABLE CG_SUBCNR_NBR_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CG_SUBCNR_NBR_SEQ auto_increment = 2080
/

# -----------------------------------------------------------------------
# CPTLAST_NBR_SEQ
# -----------------------------------------------------------------------
drop table if exists CPTLAST_NBR_SEQ
/

CREATE TABLE CPTLAST_NBR_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CPTLAST_NBR_SEQ auto_increment = 500000
/

# -----------------------------------------------------------------------
# CRDT_MEMO_ACCT_ID
# -----------------------------------------------------------------------
drop table if exists CRDT_MEMO_ACCT_ID
/

CREATE TABLE CRDT_MEMO_ACCT_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CRDT_MEMO_ACCT_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# CRDT_MEMO_ID
# -----------------------------------------------------------------------
drop table if exists CRDT_MEMO_ID
/

CREATE TABLE CRDT_MEMO_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CRDT_MEMO_ID auto_increment = 1003
/

# -----------------------------------------------------------------------
# CRDT_MEMO_ITM_ID
# -----------------------------------------------------------------------
drop table if exists CRDT_MEMO_ITM_ID
/

CREATE TABLE CRDT_MEMO_ITM_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CRDT_MEMO_ITM_ID auto_increment = 1004
/

# -----------------------------------------------------------------------
# CRDT_MEMO_STAT_HIST_ID
# -----------------------------------------------------------------------
drop table if exists CRDT_MEMO_STAT_HIST_ID
/

CREATE TABLE CRDT_MEMO_STAT_HIST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CRDT_MEMO_STAT_HIST_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# CUST_ADDR_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists CUST_ADDR_ID_SEQ
/

CREATE TABLE CUST_ADDR_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CUST_ADDR_ID_SEQ auto_increment = 2000
/

# -----------------------------------------------------------------------
# CUST_NBR_SEQ
# -----------------------------------------------------------------------
drop table if exists CUST_NBR_SEQ
/

CREATE TABLE CUST_NBR_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE CUST_NBR_SEQ auto_increment = 2000
/

# -----------------------------------------------------------------------
# DIRTY_CACHE_SEQ
# -----------------------------------------------------------------------
drop table if exists DIRTY_CACHE_SEQ
/

CREATE TABLE DIRTY_CACHE_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE DIRTY_CACHE_SEQ auto_increment = 2000
/

# -----------------------------------------------------------------------
# DV_PAYEE_ID_NBR_SEQ
# -----------------------------------------------------------------------
drop table if exists DV_PAYEE_ID_NBR_SEQ
/

CREATE TABLE DV_PAYEE_ID_NBR_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE DV_PAYEE_ID_NBR_SEQ auto_increment = 178184
/

# -----------------------------------------------------------------------
# EN_SERVICE_DEF_INTERFACE_SEQ
# -----------------------------------------------------------------------
drop table if exists EN_SERVICE_DEF_INTERFACE_SEQ
/

CREATE TABLE EN_SERVICE_DEF_INTERFACE_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE EN_SERVICE_DEF_INTERFACE_SEQ auto_increment = 2000
/

# -----------------------------------------------------------------------
# FP_CASHIER_ITM_IN_PROC_T_SEQ
# -----------------------------------------------------------------------
drop table if exists FP_CASHIER_ITM_IN_PROC_T_SEQ
/

CREATE TABLE FP_CASHIER_ITM_IN_PROC_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE FP_CASHIER_ITM_IN_PROC_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# FP_PRCRMNT_CARD_TRN_MT_SEQ
# -----------------------------------------------------------------------
drop table if exists FP_PRCRMNT_CARD_TRN_MT_SEQ
/

CREATE TABLE FP_PRCRMNT_CARD_TRN_MT_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE FP_PRCRMNT_CARD_TRN_MT_SEQ auto_increment = 1000000
/

# -----------------------------------------------------------------------
# GL_ORIGIN_ENTRY_GRP_T_SEQ
# -----------------------------------------------------------------------
drop table if exists GL_ORIGIN_ENTRY_GRP_T_SEQ
/

CREATE TABLE GL_ORIGIN_ENTRY_GRP_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE GL_ORIGIN_ENTRY_GRP_T_SEQ auto_increment = 12069
/

# -----------------------------------------------------------------------
# GL_ORIGIN_ENTRY_T_SEQ
# -----------------------------------------------------------------------
drop table if exists GL_ORIGIN_ENTRY_T_SEQ
/

CREATE TABLE GL_ORIGIN_ENTRY_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE GL_ORIGIN_ENTRY_T_SEQ auto_increment = 31905
/

# -----------------------------------------------------------------------
# INV_LOAD_SUM_ID
# -----------------------------------------------------------------------
drop table if exists INV_LOAD_SUM_ID
/

CREATE TABLE INV_LOAD_SUM_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE INV_LOAD_SUM_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# INV_RJT_ITM_ID
# -----------------------------------------------------------------------
drop table if exists INV_RJT_ITM_ID
/

CREATE TABLE INV_RJT_ITM_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE INV_RJT_ITM_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# INV_RJT_REAS_ID
# -----------------------------------------------------------------------
drop table if exists INV_RJT_REAS_ID
/

CREATE TABLE INV_RJT_REAS_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE INV_RJT_REAS_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# OLE_ALIAS_TYP_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_ALIAS_TYP_ID_S
/

CREATE TABLE OLE_ALIAS_TYP_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_ALIAS_TYP_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_CAT_ACCS_MTHD_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_ACCS_MTHD_S
/

CREATE TABLE OLE_CAT_ACCS_MTHD_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_ACCS_MTHD_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_ACQ_MTHD_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_ACQ_MTHD_S
/

CREATE TABLE OLE_CAT_ACQ_MTHD_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_ACQ_MTHD_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_ACTION_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_ACTION_S
/

CREATE TABLE OLE_CAT_ACTION_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_ACTION_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_CMPLT_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_CMPLT_S
/

CREATE TABLE OLE_CAT_CMPLT_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_CMPLT_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_ELA_RLSHP_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_ELA_RLSHP_S
/

CREATE TABLE OLE_CAT_ELA_RLSHP_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_ELA_RLSHP_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_ENCD_LVL_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_ENCD_LVL_S
/

CREATE TABLE OLE_CAT_ENCD_LVL_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_ENCD_LVL_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_FLD_ENCD_LVL_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_FLD_ENCD_LVL_S
/

CREATE TABLE OLE_CAT_FLD_ENCD_LVL_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_FLD_ENCD_LVL_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_GEN_RTN_POL_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_GEN_RTN_POL_S
/

CREATE TABLE OLE_CAT_GEN_RTN_POL_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_GEN_RTN_POL_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_ITM_TYP_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_ITM_TYP_S
/

CREATE TABLE OLE_CAT_ITM_TYP_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_ITM_TYP_S auto_increment = 61
/

# -----------------------------------------------------------------------
# OLE_CAT_LND_POL_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_LND_POL_S
/

CREATE TABLE OLE_CAT_LND_POL_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_LND_POL_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_LOC_COUNTRY_CD_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_LOC_COUNTRY_CD_S
/

CREATE TABLE OLE_CAT_LOC_COUNTRY_CD_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_LOC_COUNTRY_CD_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_LOC_STATUS_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_LOC_STATUS_S
/

CREATE TABLE OLE_CAT_LOC_STATUS_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_LOC_STATUS_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_NTN_TYP_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_NTN_TYP_S
/

CREATE TABLE OLE_CAT_NTN_TYP_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_NTN_TYP_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_PRVCY_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_PRVCY_S
/

CREATE TABLE OLE_CAT_PRVCY_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_PRVCY_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_RCPT_STAT_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_RCPT_STAT_S
/

CREATE TABLE OLE_CAT_RCPT_STAT_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_RCPT_STAT_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_REC_TYP_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_REC_TYP_S
/

CREATE TABLE OLE_CAT_REC_TYP_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_REC_TYP_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_REPRO_POL_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_REPRO_POL_S
/

CREATE TABLE OLE_CAT_REPRO_POL_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_REPRO_POL_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_SHVLG_ORD_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_SHVLG_ORD_S
/

CREATE TABLE OLE_CAT_SHVLG_ORD_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_SHVLG_ORD_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_SHVLG_SCHM_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_SHVLG_SCHM_S
/

CREATE TABLE OLE_CAT_SHVLG_SCHM_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_SHVLG_SCHM_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_SPCP_RPT_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_SPCP_RPT_S
/

CREATE TABLE OLE_CAT_SPCP_RPT_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_SPCP_RPT_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_SPFC_RTN_POL_TYP_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_SPFC_RTN_POL_TYP_S
/

CREATE TABLE OLE_CAT_SPFC_RTN_POL_TYP_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_SPFC_RTN_POL_TYP_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_SPFC_RTN_POL_UNT_TYP_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_SPFC_RTN_POL_UNT_TYP_S
/

CREATE TABLE OLE_CAT_SPFC_RTN_POL_UNT_TYP_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_SPFC_RTN_POL_UNT_TYP_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_SRC_TRM_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_SRC_TRM_S
/

CREATE TABLE OLE_CAT_SRC_TRM_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_SRC_TRM_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CAT_TYPE_OWNERSHIP_S
# -----------------------------------------------------------------------
drop table if exists OLE_CAT_TYPE_OWNERSHIP_S
/

CREATE TABLE OLE_CAT_TYPE_OWNERSHIP_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CAT_TYPE_OWNERSHIP_S auto_increment = 21
/

# -----------------------------------------------------------------------
# OLE_CA_ACCT_ENCUM_CNSTRT_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_ENCUM_CNSTRT_T_SEQ
/

CREATE TABLE OLE_CA_ACCT_ENCUM_CNSTRT_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CA_ACCT_ENCUM_CNSTRT_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_CA_ACCT_EXP_CNSTRT_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_EXP_CNSTRT_T_SEQ
/

CREATE TABLE OLE_CA_ACCT_EXP_CNSTRT_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CA_ACCT_EXP_CNSTRT_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_CA_ACCT_LGCY_LMS_FND_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_LGCY_LMS_FND_T_SEQ
/

CREATE TABLE OLE_CA_ACCT_LGCY_LMS_FND_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CA_ACCT_LGCY_LMS_FND_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_CA_ACCT_SFC_TYPE_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_SFC_TYPE_T_SEQ
/

CREATE TABLE OLE_CA_ACCT_SFC_TYPE_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CA_ACCT_SFC_TYPE_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_CA_ACCT_STWD_TYP_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_STWD_TYP_T_SEQ
/

CREATE TABLE OLE_CA_ACCT_STWD_TYP_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CA_ACCT_STWD_TYP_T_SEQ auto_increment = 1010
/

# -----------------------------------------------------------------------
# OLE_CA_ACCT_STWD_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_CA_ACCT_STWD_T_SEQ
/

CREATE TABLE OLE_CA_ACCT_STWD_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CA_ACCT_STWD_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_CNSTRT_TYP_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_CNSTRT_TYP_T_SEQ
/

CREATE TABLE OLE_CNSTRT_TYP_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CNSTRT_TYP_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_CURR_TYP_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_CURR_TYP_ID_S
/

CREATE TABLE OLE_CURR_TYP_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_CURR_TYP_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_DEFAULTABLE_COLUMN_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_DEFAULTABLE_COLUMN_ID_S
/

CREATE TABLE OLE_DEFAULTABLE_COLUMN_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_DEFAULTABLE_COLUMN_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_DEFAULT_VALUE_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_DEFAULT_VALUE_ID_S
/

CREATE TABLE OLE_DEFAULT_VALUE_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_DEFAULT_VALUE_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_EDI_TYP_CON_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_EDI_TYP_CON_ID_S
/

CREATE TABLE OLE_EDI_TYP_CON_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_EDI_TYP_CON_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_FRMT_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_FRMT_ID_S
/

CREATE TABLE OLE_FRMT_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_FRMT_ID_S auto_increment = 8
/

# -----------------------------------------------------------------------
# OLE_INV_SUB_TYP_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_INV_SUB_TYP_T_SEQ
/

CREATE TABLE OLE_INV_SUB_TYP_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_INV_SUB_TYP_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_INV_TYP_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_INV_TYP_T_SEQ
/

CREATE TABLE OLE_INV_TYP_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_INV_TYP_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_ITM_PRC_SRC_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_ITM_PRC_SRC_ID_S
/

CREATE TABLE OLE_ITM_PRC_SRC_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_ITM_PRC_SRC_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_NTE_TYP_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_NTE_TYP_SEQ
/

CREATE TABLE OLE_NTE_TYP_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_NTE_TYP_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PMT_MTHD_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PMT_MTHD_T_SEQ
/

CREATE TABLE OLE_PMT_MTHD_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PMT_MTHD_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PMT_RQST_ITM_NTE_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PMT_RQST_ITM_NTE_T_SEQ
/

CREATE TABLE OLE_PMT_RQST_ITM_NTE_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PMT_RQST_ITM_NTE_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_CAT_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_CAT_ID_S
/

CREATE TABLE OLE_PUR_CAT_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_CAT_ID_S auto_increment = 16
/

# -----------------------------------------------------------------------
# OLE_PUR_PO_ERR_CDS_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_ERR_CDS_T_SEQ
/

CREATE TABLE OLE_PUR_PO_ERR_CDS_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_PO_ERR_CDS_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_PO_FAIL_DOC_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_FAIL_DOC_T_SEQ
/

CREATE TABLE OLE_PUR_PO_FAIL_DOC_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_PO_FAIL_DOC_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_PO_ITM_NTE_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_ITM_NTE_SEQ
/

CREATE TABLE OLE_PUR_PO_ITM_NTE_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_PO_ITM_NTE_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_PO_LOAD_SUM_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_LOAD_SUM_T_SEQ
/

CREATE TABLE OLE_PUR_PO_LOAD_SUM_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_PO_LOAD_SUM_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_PO_PRFL_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_PO_PRFL_T_SEQ
/

CREATE TABLE OLE_PUR_PO_PRFL_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_PO_PRFL_T_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_RCVCOR_LN_ITM_DOC_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVCOR_LN_ITM_DOC_ID_S
/

CREATE TABLE OLE_PUR_RCVCOR_LN_ITM_DOC_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_RCVCOR_LN_ITM_DOC_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_LN_ITM_EXC_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_LN_ITM_EXC_SEQ
/

CREATE TABLE OLE_PUR_RCVNG_LN_ITM_EXC_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_RCVNG_LN_ITM_EXC_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_RCVNG_LN_ITM_NTE_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCVNG_LN_ITM_NTE_SEQ
/

CREATE TABLE OLE_PUR_RCVNG_LN_ITM_NTE_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_RCVNG_LN_ITM_NTE_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_RCV_LN_ITM_DOC_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCV_LN_ITM_DOC_ID_S
/

CREATE TABLE OLE_PUR_RCV_LN_ITM_DOC_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_RCV_LN_ITM_DOC_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PUR_RCV_LN_ITM_EXC_MDC_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_RCV_LN_ITM_EXC_MDC_SEQ
/

CREATE TABLE OLE_PUR_RCV_LN_ITM_EXC_MDC_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_RCV_LN_ITM_EXC_MDC_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_REQS_ITM_T_NTE_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_REQS_ITM_T_NTE_SEQ
/

CREATE TABLE OLE_PUR_REQS_ITM_T_NTE_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_REQS_ITM_T_NTE_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PUR_REQ_RCPT_STATUS_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_REQ_RCPT_STATUS_SEQ
/

CREATE TABLE OLE_PUR_REQ_RCPT_STATUS_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_REQ_RCPT_STATUS_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PUR_VNDR_ALIAS_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_PUR_VNDR_ALIAS_ID_SEQ
/

CREATE TABLE OLE_PUR_VNDR_ALIAS_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PUR_VNDR_ALIAS_ID_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_RCVNG_COR_LN_ITM_EXC_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_RCVNG_COR_LN_ITM_EXC_SEQ
/

CREATE TABLE OLE_RCVNG_COR_LN_ITM_EXC_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_RCVNG_COR_LN_ITM_EXC_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_RCVNG_COR_LN_ITM_NTE_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_RCVNG_COR_LN_ITM_NTE_SEQ
/

CREATE TABLE OLE_RCVNG_COR_LN_ITM_NTE_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_RCVNG_COR_LN_ITM_NTE_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_REQSTR_TYP_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_REQSTR_TYP_ID_S
/

CREATE TABLE OLE_REQSTR_TYP_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_REQSTR_TYP_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_REQ_SRC_TYP_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_REQ_SRC_TYP_ID_S
/

CREATE TABLE OLE_REQ_SRC_TYP_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_REQ_SRC_TYP_ID_S auto_increment = 7
/

# -----------------------------------------------------------------------
# OLE_RQSTR_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_RQSTR_ID_S
/

CREATE TABLE OLE_RQSTR_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_RQSTR_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_VNDR_TRANS_FRMT_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_TRANS_FRMT_ID_S
/

CREATE TABLE OLE_VNDR_TRANS_FRMT_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_VNDR_TRANS_FRMT_ID_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_LIC_REQ_DET_S
# -----------------------------------------------------------------------
drop table if exists OLE_LIC_REQ_DET_S
/

CREATE TABLE OLE_LIC_REQ_DET_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_LIC_REQ_DET_S auto_increment = 1
/

# -----------------------------------------------------------------------
# ORIGIN_ENTRY_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists ORIGIN_ENTRY_ID_SEQ
/

CREATE TABLE ORIGIN_ENTRY_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE ORIGIN_ENTRY_ID_SEQ auto_increment = 2060
/

# -----------------------------------------------------------------------
# PDP_ACH_ACCT_GNRTD_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_ACH_ACCT_GNRTD_ID_SEQ
/

CREATE TABLE PDP_ACH_ACCT_GNRTD_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_ACH_ACCT_GNRTD_ID_SEQ auto_increment = 10000000
/

# -----------------------------------------------------------------------
# PDP_BNK_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_BNK_ID_SEQ
/

CREATE TABLE PDP_BNK_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_BNK_ID_SEQ auto_increment = 11000001
/

# -----------------------------------------------------------------------
# PDP_CUST_BNK_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_CUST_BNK_ID_SEQ
/

CREATE TABLE PDP_CUST_BNK_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_CUST_BNK_ID_SEQ auto_increment = 10000034
/

# -----------------------------------------------------------------------
# PDP_CUST_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_CUST_ID_SEQ
/

CREATE TABLE PDP_CUST_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_CUST_ID_SEQ auto_increment = 10000200
/

# -----------------------------------------------------------------------
# PDP_DOC_TYP_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_DOC_TYP_ID_SEQ
/

CREATE TABLE PDP_DOC_TYP_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_DOC_TYP_ID_SEQ auto_increment = 10000002
/

# -----------------------------------------------------------------------
# PDP_GL_PENDING_ENTRY_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_GL_PENDING_ENTRY_ID_SEQ
/

CREATE TABLE PDP_GL_PENDING_ENTRY_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_GL_PENDING_ENTRY_ID_SEQ auto_increment = 10011479
/

# -----------------------------------------------------------------------
# PDP_PMT_ACCT_DTL_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_ACCT_DTL_ID_SEQ
/

CREATE TABLE PDP_PMT_ACCT_DTL_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PMT_ACCT_DTL_ID_SEQ auto_increment = 10005615
/

# -----------------------------------------------------------------------
# PDP_PMT_ACCT_HIST_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_ACCT_HIST_ID_SEQ
/

CREATE TABLE PDP_PMT_ACCT_HIST_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PMT_ACCT_HIST_ID_SEQ auto_increment = 10020334
/

# -----------------------------------------------------------------------
# PDP_PMT_DTL_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_DTL_ID_SEQ
/

CREATE TABLE PDP_PMT_DTL_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PMT_DTL_ID_SEQ auto_increment = 10001767
/

# -----------------------------------------------------------------------
# PDP_PMT_FIL_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_FIL_ID_SEQ
/

CREATE TABLE PDP_PMT_FIL_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PMT_FIL_ID_SEQ auto_increment = 10000108
/

# -----------------------------------------------------------------------
# PDP_PMT_GRP_HIST_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_GRP_HIST_ID_SEQ
/

CREATE TABLE PDP_PMT_GRP_HIST_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PMT_GRP_HIST_ID_SEQ auto_increment = 10000103
/

# -----------------------------------------------------------------------
# PDP_PMT_GRP_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_GRP_ID_SEQ
/

CREATE TABLE PDP_PMT_GRP_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PMT_GRP_ID_SEQ auto_increment = 10001070
/

# -----------------------------------------------------------------------
# PDP_PMT_NTE_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PMT_NTE_ID_SEQ
/

CREATE TABLE PDP_PMT_NTE_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PMT_NTE_ID_SEQ auto_increment = 10012647
/

# -----------------------------------------------------------------------
# PDP_PROC_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PROC_ID_SEQ
/

CREATE TABLE PDP_PROC_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PROC_ID_SEQ auto_increment = 10000098
/

# -----------------------------------------------------------------------
# PDP_PROC_SUM_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PDP_PROC_SUM_ID_SEQ
/

CREATE TABLE PDP_PROC_SUM_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PDP_PROC_SUM_ID_SEQ auto_increment = 10000099
/

# -----------------------------------------------------------------------
# PMT_CHG_ID
# -----------------------------------------------------------------------
drop table if exists PMT_CHG_ID
/

CREATE TABLE PMT_CHG_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PMT_CHG_ID auto_increment = 1000
/

# -----------------------------------------------------------------------
# PMT_RQST_ACCT_ID
# -----------------------------------------------------------------------
drop table if exists PMT_RQST_ACCT_ID
/

CREATE TABLE PMT_RQST_ACCT_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PMT_RQST_ACCT_ID auto_increment = 1006
/

# -----------------------------------------------------------------------
# PMT_RQST_ID
# -----------------------------------------------------------------------
drop table if exists PMT_RQST_ID
/

CREATE TABLE PMT_RQST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PMT_RQST_ID auto_increment = 1060
/

# -----------------------------------------------------------------------
# PMT_RQST_ITM_ID
# -----------------------------------------------------------------------
drop table if exists PMT_RQST_ITM_ID
/

CREATE TABLE PMT_RQST_ITM_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PMT_RQST_ITM_ID auto_increment = 1020
/

# -----------------------------------------------------------------------
# PMT_RQST_STAT_HIST_ID
# -----------------------------------------------------------------------
drop table if exists PMT_RQST_STAT_HIST_ID
/

CREATE TABLE PMT_RQST_STAT_HIST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PMT_RQST_STAT_HIST_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PO_ACCT_ID
# -----------------------------------------------------------------------
drop table if exists PO_ACCT_ID
/

CREATE TABLE PO_ACCT_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_ACCT_ID auto_increment = 1007
/

# -----------------------------------------------------------------------
# PO_CONTR_LANG_ID
# -----------------------------------------------------------------------
drop table if exists PO_CONTR_LANG_ID
/

CREATE TABLE PO_CONTR_LANG_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_CONTR_LANG_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PO_ID
# -----------------------------------------------------------------------
drop table if exists PO_ID
/

CREATE TABLE PO_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_ID auto_increment = 1007
/

# -----------------------------------------------------------------------
# PO_ITM_CPTL_AST_ID
# -----------------------------------------------------------------------
drop table if exists PO_ITM_CPTL_AST_ID
/

CREATE TABLE PO_ITM_CPTL_AST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_ITM_CPTL_AST_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PO_ITM_ID
# -----------------------------------------------------------------------
drop table if exists PO_ITM_ID
/

CREATE TABLE PO_ITM_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_ITM_ID auto_increment = 1009
/

# -----------------------------------------------------------------------
# PO_QT_LANG_ID
# -----------------------------------------------------------------------
drop table if exists PO_QT_LANG_ID
/

CREATE TABLE PO_QT_LANG_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_QT_LANG_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PO_QT_LST_ID
# -----------------------------------------------------------------------
drop table if exists PO_QT_LST_ID
/

CREATE TABLE PO_QT_LST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_QT_LST_ID auto_increment = 1004
/

# -----------------------------------------------------------------------
# PO_RSTRC_MTRL_STATHST_ID
# -----------------------------------------------------------------------
drop table if exists PO_RSTRC_MTRL_STATHST_ID
/

CREATE TABLE PO_RSTRC_MTRL_STATHST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_RSTRC_MTRL_STATHST_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PO_STAT_HIST_ID
# -----------------------------------------------------------------------
drop table if exists PO_STAT_HIST_ID
/

CREATE TABLE PO_STAT_HIST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_STAT_HIST_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PO_VNDR_QT_ID
# -----------------------------------------------------------------------
drop table if exists PO_VNDR_QT_ID
/

CREATE TABLE PO_VNDR_QT_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_VNDR_QT_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PO_VNDR_STPLTN_ID
# -----------------------------------------------------------------------
drop table if exists PO_VNDR_STPLTN_ID
/

CREATE TABLE PO_VNDR_STPLTN_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PO_VNDR_STPLTN_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PUR_PO_CPTL_AST_ITM_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CPTL_AST_ITM_ID_SEQ
/

CREATE TABLE PUR_PO_CPTL_AST_ITM_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_PO_CPTL_AST_ITM_ID_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# PUR_PO_CPTL_AST_LOC_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CPTL_AST_LOC_ID_SEQ
/

CREATE TABLE PUR_PO_CPTL_AST_LOC_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_PO_CPTL_AST_LOC_ID_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# PUR_PO_CPTL_AST_SYS_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_PO_CPTL_AST_SYS_ID_SEQ
/

CREATE TABLE PUR_PO_CPTL_AST_SYS_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_PO_CPTL_AST_SYS_ID_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# PUR_PO_ITM_USE_TAX_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_PO_ITM_USE_TAX_ID_SEQ
/

CREATE TABLE PUR_PO_ITM_USE_TAX_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_PO_ITM_USE_TAX_ID_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# PUR_RCVNG_ADDR_ID
# -----------------------------------------------------------------------
drop table if exists PUR_RCVNG_ADDR_ID
/

CREATE TABLE PUR_RCVNG_ADDR_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_RCVNG_ADDR_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# PUR_REQS_CPTL_AST_ITM_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_CPTL_AST_ITM_ID_SEQ
/

CREATE TABLE PUR_REQS_CPTL_AST_ITM_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_REQS_CPTL_AST_ITM_ID_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# PUR_REQS_CPTL_AST_LOC_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_CPTL_AST_LOC_ID_SEQ
/

CREATE TABLE PUR_REQS_CPTL_AST_LOC_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_REQS_CPTL_AST_LOC_ID_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# PUR_REQS_CPTL_AST_SYS_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_CPTL_AST_SYS_ID_SEQ
/

CREATE TABLE PUR_REQS_CPTL_AST_SYS_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_REQS_CPTL_AST_SYS_ID_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# PUR_REQS_ITM_USE_TAX_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_REQS_ITM_USE_TAX_ID_SEQ
/

CREATE TABLE PUR_REQS_ITM_USE_TAX_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_REQS_ITM_USE_TAX_ID_SEQ auto_increment = 1000
/

# -----------------------------------------------------------------------
# PUR_SNSTV_DTA_ASGN_ID_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_SNSTV_DTA_ASGN_ID_SEQ
/

CREATE TABLE PUR_SNSTV_DTA_ASGN_ID_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_SNSTV_DTA_ASGN_ID_SEQ auto_increment = 2000
/

# -----------------------------------------------------------------------
# PUR_THRSHLD_ID
# -----------------------------------------------------------------------
drop table if exists PUR_THRSHLD_ID
/

CREATE TABLE PUR_THRSHLD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_THRSHLD_ID auto_increment = 1007
/

# -----------------------------------------------------------------------
# PUR_VNDR_EXCL_MTCH_T_SEQ
# -----------------------------------------------------------------------
drop table if exists PUR_VNDR_EXCL_MTCH_T_SEQ
/

CREATE TABLE PUR_VNDR_EXCL_MTCH_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE PUR_VNDR_EXCL_MTCH_T_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# RCVNG_COR_ITM_ID
# -----------------------------------------------------------------------
drop table if exists RCVNG_COR_ITM_ID
/

CREATE TABLE RCVNG_COR_ITM_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE RCVNG_COR_ITM_ID auto_increment = 1000
/

# -----------------------------------------------------------------------
# RCVNG_LN_ITM_ID
# -----------------------------------------------------------------------
drop table if exists RCVNG_LN_ITM_ID
/

CREATE TABLE RCVNG_LN_ITM_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE RCVNG_LN_ITM_ID auto_increment = 1000
/

# -----------------------------------------------------------------------
# REQS_ACCT_ID
# -----------------------------------------------------------------------
drop table if exists REQS_ACCT_ID
/

CREATE TABLE REQS_ACCT_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE REQS_ACCT_ID auto_increment = 1003
/

# -----------------------------------------------------------------------
# REQS_ID
# -----------------------------------------------------------------------
drop table if exists REQS_ID
/

CREATE TABLE REQS_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE REQS_ID auto_increment = 1003
/

# -----------------------------------------------------------------------
# REQS_ITM_CPTL_AST_ID
# -----------------------------------------------------------------------
drop table if exists REQS_ITM_CPTL_AST_ID
/

CREATE TABLE REQS_ITM_CPTL_AST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE REQS_ITM_CPTL_AST_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# REQS_ITM_ID
# -----------------------------------------------------------------------
drop table if exists REQS_ITM_ID
/

CREATE TABLE REQS_ITM_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE REQS_ITM_ID auto_increment = 1005
/

# -----------------------------------------------------------------------
# REQS_STAT_HIST_ID
# -----------------------------------------------------------------------
drop table if exists REQS_STAT_HIST_ID
/

CREATE TABLE REQS_STAT_HIST_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE REQS_STAT_HIST_ID auto_increment = 1006
/

# -----------------------------------------------------------------------
# SHPMNT_RCVNG_ID
# -----------------------------------------------------------------------
drop table if exists SHPMNT_RCVNG_ID
/

CREATE TABLE SHPMNT_RCVNG_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE SHPMNT_RCVNG_ID auto_increment = 1002
/

# -----------------------------------------------------------------------
# VNDR_ADDR_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_ADDR_GNRTD_ID
/

CREATE TABLE VNDR_ADDR_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_ADDR_GNRTD_ID auto_increment = 12111
/

# -----------------------------------------------------------------------
# VNDR_CNTCT_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_CNTCT_GNRTD_ID
/

CREATE TABLE VNDR_CNTCT_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_CNTCT_GNRTD_ID auto_increment = 13000
/

# -----------------------------------------------------------------------
# VNDR_CNTCT_PHN_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_CNTCT_PHN_GNRTD_ID
/

CREATE TABLE VNDR_CNTCT_PHN_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_CNTCT_PHN_GNRTD_ID auto_increment = 12005
/

# -----------------------------------------------------------------------
# VNDR_CONTR_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_CONTR_GNRTD_ID
/

CREATE TABLE VNDR_CONTR_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_CONTR_GNRTD_ID auto_increment = 12105
/

# -----------------------------------------------------------------------
# VNDR_CUST_NBR_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_CUST_NBR_GNRTD_ID
/

CREATE TABLE VNDR_CUST_NBR_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_CUST_NBR_GNRTD_ID auto_increment = 12005
/

# -----------------------------------------------------------------------
# VNDR_DFLT_ADDR_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_DFLT_ADDR_GNRTD_ID
/

CREATE TABLE VNDR_DFLT_ADDR_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_DFLT_ADDR_GNRTD_ID auto_increment = 12005
/

# -----------------------------------------------------------------------
# VNDR_HDR_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_HDR_GNRTD_ID
/

CREATE TABLE VNDR_HDR_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_HDR_GNRTD_ID auto_increment = 12112
/

# -----------------------------------------------------------------------
# VNDR_PHN_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_PHN_GNRTD_ID
/

CREATE TABLE VNDR_PHN_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_PHN_GNRTD_ID auto_increment = 12005
/

# -----------------------------------------------------------------------
# VNDR_STPLTN_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_STPLTN_ID
/

CREATE TABLE VNDR_STPLTN_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_STPLTN_ID auto_increment = 10003
/

# -----------------------------------------------------------------------
# VNDR_TAX_CHG_GNRTD_ID
# -----------------------------------------------------------------------
drop table if exists VNDR_TAX_CHG_GNRTD_ID
/

CREATE TABLE VNDR_TAX_CHG_GNRTD_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_TAX_CHG_GNRTD_ID auto_increment = 12032
/

# -----------------------------------------------------------------------
# OLE_AP_INV_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_SEQ
/

CREATE TABLE OLE_AP_INV_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_AP_INV_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_AP_INV_PO_ITM_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_PO_ITM_SEQ
/

CREATE TABLE OLE_AP_INV_PO_ITM_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_AP_INV_PO_ITM_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_AP_INV_ACCT_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_ACCT_SEQ
/

CREATE TABLE OLE_AP_INV_ACCT_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_AP_INV_ACCT_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_AP_INV_SUM_ACCT_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_SUM_ACCT_SEQ
/

CREATE TABLE OLE_AP_INV_SUM_ACCT_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_AP_INV_SUM_ACCT_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_AP_INV_PO_ITM_USE_TAX_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_PO_ITM_USE_TAX_SEQ
/

CREATE TABLE OLE_AP_INV_PO_ITM_USE_TAX_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_AP_INV_PO_ITM_USE_TAX_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_AP_INV_ACCT_CHG_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_ACCT_CHG_SEQ
/

CREATE TABLE OLE_AP_INV_ACCT_CHG_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_AP_INV_ACCT_CHG_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_AP_INV_ITM_NTE_T_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_ITM_NTE_T_SEQ
/

CREATE TABLE OLE_AP_INV_ITM_NTE_T_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_AP_INV_ITM_NTE_T_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_COPY_S
# -----------------------------------------------------------------------
drop table if exists OLE_COPY_S
/

CREATE TABLE OLE_COPY_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_COPY_S auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PAID_COPY_S
# -----------------------------------------------------------------------
drop table if exists OLE_PAID_COPY_S
/

CREATE TABLE OLE_PAID_COPY_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PAID_COPY_S auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_AP_INV_OFFSET_ACCT_SEQ
# -----------------------------------------------------------------------
drop table if exists OLE_AP_INV_OFFSET_ACCT_SEQ
/

CREATE TABLE OLE_AP_INV_OFFSET_ACCT_SEQ
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_AP_INV_OFFSET_ACCT_SEQ auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_LINK_PURAP_DONOR_S
# -----------------------------------------------------------------------
drop table if exists OLE_LINK_PURAP_DONOR_S
/

CREATE TABLE OLE_LINK_PURAP_DONOR_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_LINK_PURAP_DONOR_S auto_increment = 1000
/

# -----------------------------------------------------------------------
# OLE_PO_CLM_HIS_S
# -----------------------------------------------------------------------
drop table if exists OLE_PO_CLM_HIS_S
/

CREATE TABLE OLE_PO_CLM_HIS_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PO_CLM_HIS_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_INV_ING_DET_S
# -----------------------------------------------------------------------
drop table if exists OLE_INV_ING_DET_S
/

CREATE TABLE OLE_INV_ING_DET_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_INV_ING_DET_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_EXCHANGE_RT_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_EXCHANGE_RT_ID_S
/

CREATE TABLE OLE_EXCHANGE_RT_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_EXCHANGE_RT_ID_S auto_increment = 20
/

# -----------------------------------------------------------------------
# OLE_TRANS_TYP_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_TRANS_TYP_ID_S
/

CREATE TABLE OLE_TRANS_TYP_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_TRANS_TYP_ID_S auto_increment = 6
/

# -----------------------------------------------------------------------
# OLE_PO_TYP_ID_S
# -----------------------------------------------------------------------
drop table if exists OLE_PO_TYP_ID_S
/

CREATE TABLE OLE_PO_TYP_ID_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PO_TYP_ID_S auto_increment = 10
/

# -----------------------------------------------------------------------
# OLE_PLTFRM_S
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_S
/

CREATE TABLE OLE_PLTFRM_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PLTFRM_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PLTFRM_GNRL_NOTE_S
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_GNRL_NOTE_S
/

CREATE TABLE OLE_PLTFRM_GNRL_NOTE_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PLTFRM_GNRL_NOTE_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PLTFRM_VAR_TITLE_S
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_VAR_TITLE_S
/

CREATE TABLE OLE_PLTFRM_VAR_TITLE_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PLTFRM_VAR_TITLE_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PLTFRM_ALERT_S
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_ALERT_S
/

CREATE TABLE OLE_PLTFRM_ALERT_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PLTFRM_ALERT_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PLTFRM_ADMIN_URL_S
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_ADMIN_URL_S
/

CREATE TABLE OLE_PLTFRM_ADMIN_URL_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PLTFRM_ADMIN_URL_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PLTFRM_EVNT_LOG_S
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_EVNT_LOG_S
/

CREATE TABLE OLE_PLTFRM_EVNT_LOG_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PLTFRM_EVNT_LOG_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_PLTFRM_ADMIN_URL_TYPE_S
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_ADMIN_URL_TYPE_S
/

CREATE TABLE OLE_PLTFRM_ADMIN_URL_TYPE_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PLTFRM_ADMIN_URL_TYPE_S auto_increment = 4
/

# -----------------------------------------------------------------------
# OLE_PLTFRM_STATUS_S
# -----------------------------------------------------------------------
drop table if exists OLE_PLTFRM_STATUS_S
/

CREATE TABLE OLE_PLTFRM_STATUS_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PLTFRM_STATUS_S auto_increment = 5
/

# -----------------------------------------------------------------------
# GOKB_DATA_ELMNT_S
# -----------------------------------------------------------------------
drop table if exists GOKB_DATA_ELMNT_S
/

CREATE TABLE GOKB_DATA_ELMNT_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE GOKB_DATA_ELMNT_S auto_increment = 17
/

# -----------------------------------------------------------------------
# OLE_GOKB_MAP_VAL_S
# -----------------------------------------------------------------------
drop table if exists OLE_GOKB_MAP_VAL_S
/

CREATE TABLE OLE_GOKB_MAP_VAL_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_GOKB_MAP_VAL_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_MOB_ACC_S
# -----------------------------------------------------------------------
drop table if exists OLE_MOB_ACC_S
/

CREATE TABLE OLE_MOB_ACC_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_MOB_ACC_S auto_increment = 4
/

# -----------------------------------------------------------------------
# OLE_MARC_REC_SRC_TYPE_S
# -----------------------------------------------------------------------
drop table if exists OLE_MARC_REC_SRC_TYPE_S
/

CREATE TABLE OLE_MARC_REC_SRC_TYPE_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_MARC_REC_SRC_TYPE_S auto_increment = 7
/

# -----------------------------------------------------------------------
# OLE_E_RES_PLTFRM_EVNT_TYPE_S
# -----------------------------------------------------------------------
drop table if exists OLE_E_RES_PLTFRM_EVNT_TYPE_S
/

CREATE TABLE OLE_E_RES_PLTFRM_EVNT_TYPE_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_E_RES_PLTFRM_EVNT_TYPE_S auto_increment = 4
/

# -----------------------------------------------------------------------
# OLE_PRBLM_TYPE_S
# -----------------------------------------------------------------------
drop table if exists OLE_PRBLM_TYPE_S
/

CREATE TABLE OLE_PRBLM_TYPE_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PRBLM_TYPE_S auto_increment = 4
/

# -----------------------------------------------------------------------
# OLE_LOG_TYPE_S
# -----------------------------------------------------------------------
drop table if exists OLE_LOG_TYPE_S
/

CREATE TABLE OLE_LOG_TYPE_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_LOG_TYPE_S auto_increment = 4
/

# -----------------------------------------------------------------------
# OLE_PO_PURP_S
# -----------------------------------------------------------------------
drop table if exists OLE_PO_PURP_S
/

CREATE TABLE OLE_PO_PURP_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_PO_PURP_S auto_increment = 5
/

# -----------------------------------------------------------------------
# VNDR_EVNT_LOG_S
# -----------------------------------------------------------------------
drop table if exists VNDR_EVNT_LOG_S
/

CREATE TABLE VNDR_EVNT_LOG_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE VNDR_EVNT_LOG_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_E_RES_CREATE_PO_S
# -----------------------------------------------------------------------
drop table if exists OLE_E_RES_CREATE_PO_S
/

CREATE TABLE OLE_E_RES_CREATE_PO_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_E_RES_CREATE_PO_S auto_increment = 1
/

# -----------------------------------------------------------------------
# FUND_CD_ACCTG_LN_S
# -----------------------------------------------------------------------
drop table if exists FUND_CD_ACCTG_LN_S
/

CREATE TABLE FUND_CD_ACCTG_LN_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE FUND_CD_ACCTG_LN_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_FUND_CD_S
# -----------------------------------------------------------------------
drop table if exists OLE_FUND_CD_S
/

CREATE TABLE OLE_FUND_CD_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_FUND_CD_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_E_RES_CREATE_PO_ACCTG_LN_S
# -----------------------------------------------------------------------
drop table if exists OLE_E_RES_CREATE_PO_ACCTG_LN_S
/

CREATE TABLE OLE_E_RES_CREATE_PO_ACCTG_LN_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_E_RES_CREATE_PO_ACCTG_LN_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_VNDR_ROLE_S
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_ROLE_S
/

CREATE TABLE OLE_VNDR_ROLE_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_VNDR_ROLE_S auto_increment = 6
/

# -----------------------------------------------------------------------
# OLE_VNDR_ASSOCIATION_S
# -----------------------------------------------------------------------
drop table if exists OLE_VNDR_ASSOCIATION_S
/

CREATE TABLE OLE_VNDR_ASSOCIATION_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_VNDR_ASSOCIATION_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_ERES_SYNC_GOKB_LOG_S
# -----------------------------------------------------------------------
drop table if exists OLE_ERES_SYNC_GOKB_LOG_S
/

CREATE TABLE OLE_ERES_SYNC_GOKB_LOG_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_ERES_SYNC_GOKB_LOG_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_GOKB_CONFIG_S
# -----------------------------------------------------------------------
drop table if exists OLE_GOKB_CONFIG_S
/

CREATE TABLE OLE_GOKB_CONFIG_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_GOKB_CONFIG_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_MARC_UPDT_FREQ_S
# -----------------------------------------------------------------------
drop table if exists OLE_MARC_UPDT_FREQ_S
/

CREATE TABLE OLE_MARC_UPDT_FREQ_S
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_MARC_UPDT_FREQ_S auto_increment = 1
/

# -----------------------------------------------------------------------
# OLE_POBA_ID
# -----------------------------------------------------------------------
drop table if exists OLE_POBA_ID
/

CREATE TABLE OLE_POBA_ID
(
	id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM
/
ALTER TABLE OLE_POBA_ID auto_increment = 1000
/
