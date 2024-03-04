WITH dim_crm_case AS (
    SELECT
        Case_id,
        Contact_id,
        Account_id,
        type,
        status,
        priority,
        owner_id,
        created_date,
        reason,
        origin
    FROM {{ref('salesforce_case')}}
)

SELECT * FROM dim_crm_case