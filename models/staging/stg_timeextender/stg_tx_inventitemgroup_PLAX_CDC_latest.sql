WITH CTE AS (
select 
ASSETGROUP_IN,
	DATAAREAID,
	DUEDATELIMITGROUPID_ES,
	DYNITEMGROUPTABLEREFRECID,
	__EVENT_DOMAIN,
	__EVENT_ID,
	__EVENT_SOURCE,
	__EVENT_TS,
	__EVENT_TYPE,
	EXPORTTOESKER,
	EXPORTTOORBID,
	ITEMGROUPID,
	ITEMGROUPTYPE,
	LOADTEMPLATEID,
	MODIFIEDDATETIME,
	NAME,
	OWNERID,
	PARTITION,
	RECID,
	RECVERSION,
	STANDARDITEMALLOCATEID,
	TAXITEMGROUPIDPURCH,
	TAXITEMGROUPIDSALES,
	TRACEDPRODUCT,
	UNFINISHEDITEM,
	__PK1,
	__PK2,
	__PK3,
	__SYS_CHANGE_OPERATION,
	__SYS_CHANGE_VERSION,
	__LOAD_TS,
    ROW_NUMBER() OVER (PARTITION BY RECID ORDER BY MODIFIEDDATETIME desc) as RN
    
 FROM  {{ ref('src_plax_inventitemgroup') }})
 

SELECT 
   ASSETGROUP_IN,
	DATAAREAID,
	DUEDATELIMITGROUPID_ES,
	DYNITEMGROUPTABLEREFRECID,
	__EVENT_DOMAIN,
	__EVENT_ID,
	__EVENT_SOURCE,
	__EVENT_TS,
	__EVENT_TYPE,
	EXPORTTOESKER,
	EXPORTTOORBID,
	ITEMGROUPID,
	ITEMGROUPTYPE,
	LOADTEMPLATEID,
	MODIFIEDDATETIME,
	NAME,
	OWNERID,
	PARTITION,
	RECID,
	RECVERSION,
	STANDARDITEMALLOCATEID,
	TAXITEMGROUPIDPURCH,
	TAXITEMGROUPIDSALES,
	TRACEDPRODUCT,
	UNFINISHEDITEM,
	__PK1,
	__PK2,
	__PK3,
	__SYS_CHANGE_OPERATION,
	__SYS_CHANGE_VERSION,
	__LOAD_TS
from CTE 
WHERE RN=1 and __SYS_CHANGE_OPERATION<>'D'
