WITH CTE AS (
select 
    ACCOUNTNUM,
	ARRIVALWAREHOUSEALLOWEMPTYLOCATION,
	BANKACCOUNT,
	BANKCENTRALBANKPURPOSECODE,
	BANKCENTRALBANKPURPOSETEXT,
	BANKCENTRALBANKTRANSTYPECUR_RU,
	BANKORDEROFPAYMENT_RU,
	BIDONLY,
	BIRTHCOUNTYCODE_IT,
	BIRTHDATE,
	BIRTHPLACE,
	BLOCKED,
	BLOCKEDRELEASEDATE,
	BLOCKEDRELEASEDATETZID,
	CALENDARDAYS,
	CASHACCOUNTINGREGIME_ES,
	CASHDISC,
	CCMNUM_BR,
	CHANGEREQUESTALLOWOVERRIDE,
	CHANGEREQUESTENABLED,
	CHANGEREQUESTOVERRIDE,
	CISCOMPANYREGNUM,
	CISNATIONALINSURANCENUM,
	CISSTATUS,
	CISUNIQUETAXPAYERREF,
	CISVERIFICATIONDATE,
	CISVERIFICATIONNUM,
	CLEARINGPERIOD,
	CNAE_BR,
	CNPJCPFNUM_BR,
	COMMERCIALREGISTER,
	COMMERCIALREGISTERINSETNUMBER,
	COMMERCIALREGISTERSECTION,
	COMPANYCHAINID,
	COMPANYIDSIRET,
	COMPANYNAFCODE,
	COMPANYTYPE_MX,
	COMPLETE,
	CONSDAY_JP,
	CONTACTPERSONID,
	CREATEDBY,
	CREATEDDATETIME,
	CREDITMAX,
	CREDITRATING,
	CURP_MX,
	CURRENCY,
	DATAAREAID,
	DBA,
	DEFAULTDIMENSION,
	DEFAULTINVENTSTATUSID,
	DELIVERYTIME,
	DEL_CREATEDTIME,
	DEL_MODIFIEDTIME,
	DESTINATIONCODEID,
	DIOTCOUNTRYCODE_MX,
	DISABLEDOWNED,
	DLVMODE,
	DLVTERM,
	ENDDISC,
	ENTERPRISECODE,
	ENTERPRISENUMBER,
	EPADIRECTINVOICING,
	EPAVENDPACKAGINGGROUPRECID,
	ETHNICORIGINID,
	FACTORINGACCOUNT,
	FATCAFILINGREQUIREMENT,
	FEMALEOWNED,
	FINECODE_BR,
	FISCALCODE,
	FOREIGNENTITYINDICATOR,
	FOREIGNERID_BR,
	FOREIGNRESIDENT_RU,
	FOREIGNTAXREGISTRATION_MX,
	FREIGHTZONE,
	HEIR_IT,
	HUBZONE,
	ICMSCONTRIBUTOR_BR,
	IENUM_BR,
	INCLTAX,
	INSSCEI_BR,
	INTBANK_LV,
	INTERESTCODE_BR,
	INVENTLOCATION,
	INVENTPROFILEID_RU,
	INVENTPROFILETYPE_RU,
	INVENTSITEID,
	INVOICEACCOUNT,
	ISPAYMFEECOVERED_JP,
	ISRESIDENT_LV,
	ITEMBUYERGROUPID,
	LINEDISC,
	LINEOFBUSINESSID,
	LOCALLYOWNED,
	LVPAYMTRANSCODES,
	MAINCONTACTWORKER,
	MANDATORYVATDATE_PL,
	MARKUPGROUP,
	MATCHINGPOLICY,
	MINORITYOWNED,
	MODIFIEDBY,
	MODIFIEDDATETIME,
	MULTILINEDISC,
	MW_IWACCOUNTSELECTION,
	MW_IWAPPROVER,
	MW_IWAUTOPOSTCOST,
	MW_IWINVOICETYPE,
	MW_IWPBSVENDACCOUNT,
	MW_IWPOSTINGRULEID,
	MW_IWTASKGROUPID,
	NAMECONTROL,
	NATIONALITY_MX,
	NIT_BR,
	NONTAXABLE_BR,
	NUMBERSEQUENCEGROUP,
	OFFSETACCOUNTTYPE,
	OFFSETLEDGERDIMENSION,
	ONETIMEVENDOR,
	OOMBACKORDER,
	OPERATIONTYPE_MX,
	ORGANIZATIONNUMBER,
	ORGID,
	PACKAGINGMATERIAL,
	PARTITION,
	PARTY,
	PAYMDAYID,
	PAYMID,
	PAYMMODE,
	PAYMSCHED,
	PAYMSPEC,
	PAYMTERMID,
	PRESENCETYPE_BR,
	PRICEGROUP,
	PURCHAMOUNTPURCHASEORDER,
	PURCHCALENDARID,
	PURCHCONFIRMPRINTUNIT,
	PURCHPOOLID,
	PURCHPRICEDATETYPE,
	RECADVMESSAGETYPE,
	RECID,
	RECVERSION,
	REGNUM_W,
	RESIDENCEFOREIGNCOUNTRYREGIONID,
	RFC_MX,
	SECONDTIN,
	SEGMENTID,
	SEPARATEDIVISIONID_RU,
	SERVICECODEONDLVADDRESS_BR,
	SMALLBUSINESS,
	STATEINSCRIPTION_MX,
	STRUCTDEPARTMENT_RU,
	SUBSEGMENTID,
	SUPPITEMGROUPID,
	TAMREBATEGROUPID,
	TAX1099FIELDS,
	TAX1099NAMECHOICE,
	TAX1099REGNUM,
	TAX1099REPORTS,
	TAXGROUP,
	TAXIDTYPE,
	TAXPERIODPAYMENTCODE_PL,
	TAXWITHHOLDCALCULATE,
	TAXWITHHOLDGROUP,
	TAXWITHHOLDVENDORTYPE_TH,
	TRACKPACKAGINGEXCHANGE,
	UNITEDVATINVOICE_LT,
	USECASHDISC,
	VALGROUP,
	VATEXCEPTIONCODE,
	VATEXEMPTION,
	VATNUM,
	VATOPERATIONCODE_RU,
	VATPARTNERKIND_RU,
	VATTAXAGENT_RU,
	VENDCONSUMPTION_BR,
	VENDDAYSPURCHCONFIRM,
	VENDEXCEPTIONGROUP,
	VENDGROUP,
	VENDINCOMECODE_BR,
	VENDINVOICEDECLARATION_IS,
	VENDITEMGROUPID,
	VENDORPORTALADMINISTRATORRECID,
	VENDORTYPE_MX,
	VENDPAYMFEEGROUP_JP,
	VENDPRICETOLERANCEGROUPID,
	VENDPURCHCONFIRM,
	VETERANOWNED,
	W9,
	W9INCLUDED,
	YOURACCOUNTNUM,
	__PK1,
	__PK2,
	__PK3,
	__SYS_CHANGE_OPERATION,
	__SYS_CHANGE_VERSION,
	__EVENT_DOMAIN,
	__EVENT_ID,
	__EVENT_SOURCE,
	__EVENT_TS,
	__EVENT_TYPE,
	__LOAD_TS,
    ROW_NUMBER() OVER (PARTITION BY RECID ORDER BY MODIFIEDDATETIME desc) as RN
    
FROM  {{ ref('src_plax_vendtable') }})
 

SELECT 
    ACCOUNTNUM,
	ARRIVALWAREHOUSEALLOWEMPTYLOCATION,
	BANKACCOUNT,
	BANKCENTRALBANKPURPOSECODE,
	BANKCENTRALBANKPURPOSETEXT,
	BANKCENTRALBANKTRANSTYPECUR_RU,
	BANKORDEROFPAYMENT_RU,
	BIDONLY,
	BIRTHCOUNTYCODE_IT,
	BIRTHDATE,
	BIRTHPLACE,
	BLOCKED,
	BLOCKEDRELEASEDATE,
	BLOCKEDRELEASEDATETZID,
	CALENDARDAYS,
	CASHACCOUNTINGREGIME_ES,
	CASHDISC,
	CCMNUM_BR,
	CHANGEREQUESTALLOWOVERRIDE,
	CHANGEREQUESTENABLED,
	CHANGEREQUESTOVERRIDE,
	CISCOMPANYREGNUM,
	CISNATIONALINSURANCENUM,
	CISSTATUS,
	CISUNIQUETAXPAYERREF,
	CISVERIFICATIONDATE,
	CISVERIFICATIONNUM,
	CLEARINGPERIOD,
	CNAE_BR,
	CNPJCPFNUM_BR,
	COMMERCIALREGISTER,
	COMMERCIALREGISTERINSETNUMBER,
	COMMERCIALREGISTERSECTION,
	COMPANYCHAINID,
	COMPANYIDSIRET,
	COMPANYNAFCODE,
	COMPANYTYPE_MX,
	COMPLETE,
	CONSDAY_JP,
	CONTACTPERSONID,
	CREATEDBY,
	CREATEDDATETIME,
	CREDITMAX,
	CREDITRATING,
	CURP_MX,
	CURRENCY,
	DATAAREAID,
	DBA,
	DEFAULTDIMENSION,
	DEFAULTINVENTSTATUSID,
	DELIVERYTIME,
	DEL_CREATEDTIME,
	DEL_MODIFIEDTIME,
	DESTINATIONCODEID,
	DIOTCOUNTRYCODE_MX,
	DISABLEDOWNED,
	DLVMODE,
	DLVTERM,
	ENDDISC,
	ENTERPRISECODE,
	ENTERPRISENUMBER,
	EPADIRECTINVOICING,
	EPAVENDPACKAGINGGROUPRECID,
	ETHNICORIGINID,
	FACTORINGACCOUNT,
	FATCAFILINGREQUIREMENT,
	FEMALEOWNED,
	FINECODE_BR,
	FISCALCODE,
	FOREIGNENTITYINDICATOR,
	FOREIGNERID_BR,
	FOREIGNRESIDENT_RU,
	FOREIGNTAXREGISTRATION_MX,
	FREIGHTZONE,
	HEIR_IT,
	HUBZONE,
	ICMSCONTRIBUTOR_BR,
	IENUM_BR,
	INCLTAX,
	INSSCEI_BR,
	INTBANK_LV,
	INTERESTCODE_BR,
	INVENTLOCATION,
	INVENTPROFILEID_RU,
	INVENTPROFILETYPE_RU,
	INVENTSITEID,
	INVOICEACCOUNT,
	ISPAYMFEECOVERED_JP,
	ISRESIDENT_LV,
	ITEMBUYERGROUPID,
	LINEDISC,
	LINEOFBUSINESSID,
	LOCALLYOWNED,
	LVPAYMTRANSCODES,
	MAINCONTACTWORKER,
	MANDATORYVATDATE_PL,
	MARKUPGROUP,
	MATCHINGPOLICY,
	MINORITYOWNED,
	MODIFIEDBY,
	MODIFIEDDATETIME,
	MULTILINEDISC,
	MW_IWACCOUNTSELECTION,
	MW_IWAPPROVER,
	MW_IWAUTOPOSTCOST,
	MW_IWINVOICETYPE,
	MW_IWPBSVENDACCOUNT,
	MW_IWPOSTINGRULEID,
	MW_IWTASKGROUPID,
	NAMECONTROL,
	NATIONALITY_MX,
	NIT_BR,
	NONTAXABLE_BR,
	NUMBERSEQUENCEGROUP,
	OFFSETACCOUNTTYPE,
	OFFSETLEDGERDIMENSION,
	ONETIMEVENDOR,
	OOMBACKORDER,
	OPERATIONTYPE_MX,
	ORGANIZATIONNUMBER,
	ORGID,
	PACKAGINGMATERIAL,
	PARTITION,
	PARTY,
	PAYMDAYID,
	PAYMID,
	PAYMMODE,
	PAYMSCHED,
	PAYMSPEC,
	PAYMTERMID,
	PRESENCETYPE_BR,
	PRICEGROUP,
	PURCHAMOUNTPURCHASEORDER,
	PURCHCALENDARID,
	PURCHCONFIRMPRINTUNIT,
	PURCHPOOLID,
	PURCHPRICEDATETYPE,
	RECADVMESSAGETYPE,
	RECID,
	RECVERSION,
	REGNUM_W,
	RESIDENCEFOREIGNCOUNTRYREGIONID,
	RFC_MX,
	SECONDTIN,
	SEGMENTID,
	SEPARATEDIVISIONID_RU,
	SERVICECODEONDLVADDRESS_BR,
	SMALLBUSINESS,
	STATEINSCRIPTION_MX,
	STRUCTDEPARTMENT_RU,
	SUBSEGMENTID,
	SUPPITEMGROUPID,
	TAMREBATEGROUPID,
	TAX1099FIELDS,
	TAX1099NAMECHOICE,
	TAX1099REGNUM,
	TAX1099REPORTS,
	TAXGROUP,
	TAXIDTYPE,
	TAXPERIODPAYMENTCODE_PL,
	TAXWITHHOLDCALCULATE,
	TAXWITHHOLDGROUP,
	TAXWITHHOLDVENDORTYPE_TH,
	TRACKPACKAGINGEXCHANGE,
	UNITEDVATINVOICE_LT,
	USECASHDISC,
	VALGROUP,
	VATEXCEPTIONCODE,
	VATEXEMPTION,
	VATNUM,
	VATOPERATIONCODE_RU,
	VATPARTNERKIND_RU,
	VATTAXAGENT_RU,
	VENDCONSUMPTION_BR,
	VENDDAYSPURCHCONFIRM,
	VENDEXCEPTIONGROUP,
	VENDGROUP,
	VENDINCOMECODE_BR,
	VENDINVOICEDECLARATION_IS,
	VENDITEMGROUPID,
	VENDORPORTALADMINISTRATORRECID,
	VENDORTYPE_MX,
	VENDPAYMFEEGROUP_JP,
	VENDPRICETOLERANCEGROUPID,
	VENDPURCHCONFIRM,
	VETERANOWNED,
	W9,
	W9INCLUDED,
	YOURACCOUNTNUM
from CTE 
WHERE RN=1 and __SYS_CHANGE_OPERATION<>'D'