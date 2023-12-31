WITH CTE AS (
select 
    ENUMITEMLABEL,
	ENUMITEMNAME,
	ENUMITEMVALUE,
	ENUMNAME,
	LANGUAGEID,
	RECID,
	RECVERSION,
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
    ROW_NUMBER() OVER (PARTITION BY RECID ORDER BY __EVENT_TS desc) as RN
    
 FROM {{ ref('stg_plax_srsanalysisenums') }})
 

SELECT 
   ENUMITEMLABEL,
	ENUMITEMNAME,
	ENUMITEMVALUE,
	ENUMNAME,
	LANGUAGEID,
	RECID,
	RECVERSION,
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
	__LOAD_TS
from CTE 
WHERE RN=1 and __SYS_CHANGE_OPERATION<>'D'


