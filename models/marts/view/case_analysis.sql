WITH case_analysis_view AS (
    SELECT
        dim_crm_case.Case_id                                AS salesforce_case_id,
        dim_crm_case.Contact_id                             AS salesforce_case_contact_id,
        dim_crm_case.Account_id                             AS salesforce_case_account_id,
        dim_crm_case.type                                   AS salesforce_case_type,
        dim_crm_case.status                                 AS salesforce_case_status,
        dim_crm_case.priority                               AS salesforce_case_priority,
        dim_crm_case.owner_id                               AS salesforce_case_owner_id,
        dim_crm_case.created_date                           AS salesforce_case_created_date,
        dim_crm_case.reason                                 AS salesforce_case_reason,
        dim_crm_case.origin                                 AS salesforce_case_origin,
        dim_crm_account.account_country                      AS salesforce_case_country,
        dim_crm_account.NumberOfLocations__c                 AS salesforce_case_account_number_of_locations,
        dim_crm_account.AnnualRevenue                        As salesforce_case_account_annual_revenue
    FROM {{ref('dim_crm_case')}}
    LEFT JOIN {{ref('dim_crm_account')}}
        ON dim_crm_case.Account_id = dim_crm_account.account_id
)
SELECT * FROM case_analysis_view