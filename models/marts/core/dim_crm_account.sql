WITH dim_crm_account AS (
    SELECT
        Id                           AS account_id,
        BillingCountry               AS account_country,
        NumberOfLocations__c,
        AnnualRevenue,
        Industry,
        NumberOfEmployees

    FROM {{ref('salesforce_account')}}
)
SELECT * FROM dim_crm_account