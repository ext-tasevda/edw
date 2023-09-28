WITH CTE AS (
select 
    BOTTLENECKRESOURCE,
	CAPACITY,
	CAPACITYBATCH,
	CAPLIMITED,
	CAPUNIT,
	CGKWHSWORKTEMPLATECODE,
	CREATED,
	DATAAREAID,
	DEFAULTDIMENSION,
	EFFECTIVITYPCT,
	ERRORPCT,
	EXCLUSIVE,
	ISINDIVIDUALRESOURCE,
	NAME,
	OPERATIONALREPORTINGREFRECID,
	OPERATIONSCHEDPCT,
	PARTITION,
	PMFSEQUENCEGROUPID,
	PROCESSCATEGORYID,
	PROCESSPERQTY,
	PROCESSTIME,
	PROPERTYLIMITED,
	QTYCATEGORYID,
	QUEUETIMEAFTER,
	QUEUETIMEBEFORE,
	RECID,
	RECVERSION,
	RESOURCEISSUELEDGERDIMENSION,
	RESOURCEISSUEOFFSETLEDGERDIMENSION,
	ROUTEGROUPID,
	SETUPCATEGORYID,
	SETUPTIME,
	TOHOURS,
	TRANSFERBATCH,
	TRANSPTIME,
	VENDID,
	WIPISSUELEDGERDIMENSION,
	WIPVALUATIONLEDGERDIMENSION,
	WORKER,
	WRKCTRID,
	WRKCTRTYPE,
	__PK1,
	__PK2,
	__PK3,
	__SYS_CHANGE_OPERATION,
	__SYS_CHANGE_VERSION,
	__EVENT_DOMAIN,
	__EVENT_ID,
	__EVENT_SOURCE,
	__EVENT_TS,
	__LOAD_TS,
    ROW_NUMBER() OVER (PARTITION BY RECID ORDER BY __EVENT_TS desc) as RN
    
 FROM {{ ref('src_plax_wrkctrtable') }})
 

SELECT 
   BOTTLENECKRESOURCE,
	CAPACITY,
	CAPACITYBATCH,
	CAPLIMITED,
	CAPUNIT,
	CGKWHSWORKTEMPLATECODE,
	CREATED,
	DATAAREAID,
	DEFAULTDIMENSION,
	EFFECTIVITYPCT,
	ERRORPCT,
	EXCLUSIVE,
	ISINDIVIDUALRESOURCE,
	NAME,
	OPERATIONALREPORTINGREFRECID,
	OPERATIONSCHEDPCT,
	PARTITION,
	PMFSEQUENCEGROUPID,
	PROCESSCATEGORYID,
	PROCESSPERQTY,
	PROCESSTIME,
	PROPERTYLIMITED,
	QTYCATEGORYID,
	QUEUETIMEAFTER,
	QUEUETIMEBEFORE,
	RECID,
	RECVERSION,
	RESOURCEISSUELEDGERDIMENSION,
	RESOURCEISSUEOFFSETLEDGERDIMENSION,
	ROUTEGROUPID,
	SETUPCATEGORYID,
	SETUPTIME,
	TOHOURS,
	TRANSFERBATCH,
	TRANSPTIME,
	VENDID,
	WIPISSUELEDGERDIMENSION,
	WIPVALUATIONLEDGERDIMENSION,
	WORKER,
	WRKCTRID,
	WRKCTRTYPE,
	__PK1,
	__PK2,
	__PK3,
	__SYS_CHANGE_OPERATION,
	__SYS_CHANGE_VERSION,
	__EVENT_DOMAIN,
	__EVENT_ID,
	__EVENT_SOURCE,
	__EVENT_TS,

	__LOAD_TS
from CTE 
WHERE RN=1 and __SYS_CHANGE_OPERATION<>'D'
