WITH dim_crm_user AS (
    SELECT
        salesforce_user.Id                          AS salesforce_user_id,
        salesforce_user."Name"                        AS salesforce_user_name,
        salesforce_user."UserType"                    AS salesforce_user_type,
        salesforce_user."IsActive"                    AS is_salesforce_user_active

    FROM {{ref('salesforce_user')}}
)
SELECT * FROM dim_crm_user