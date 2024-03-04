WITH dim_crm_opportunity AS (
    SELECT
        Id                                            AS opportunity_id,
        AccountId                                     AS account_id,
        StageName,
        Amount,
        DeliveryInstallationStatus__c,
        TO_DATE(CreatedDate, 'MM/DD/YYYY')            AS opportunity_date,
        LeadSource

    FROM {{ref('salesforce_opportunity')}}
)

SELECT * FROM dim_crm_opportunity