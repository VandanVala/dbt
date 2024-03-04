WITh opportunity_analysis_view AS (
    SELECT
        dim_crm_opportunity.opportunity_id                                     AS salesforce_opportunity_id,
        dim_crm_opportunity.account_id                                         AS salesforce_opportunity_account_id,
        dim_crm_opportunity.StageName                                          AS salesforce_opportunity_stage_name,
        dim_crm_opportunity.Amount                                             AS salesforce_opportunity_amount,
        dim_crm_opportunity.DeliveryInstallationStatus__c                      AS salesforce_opportunity_delivery_status,
        dim_crm_opportunity.opportunity_date                                   AS salesforce_opportunity_date,
        dim_crm_opportunity.LeadSource                                         AS salesforce_opportunity_lead_source,

        dim_crm_account.account_country                                        AS salesforce_opportunity_country,
        dim_crm_account.Industry                                               AS salesforce_opportunity_account_industry,
        dim_crm_account.NumberOfEmployees                                      AS salesforce_opportunity_account_number_of_employees

        ,COALESCE(inter_total_contact_per_account.total_contact_per_account,0)                 AS salesforce_opportunity_account_total_contact

    FROM {{ref("dim_crm_opportunity")}}
    LEFT JOIN {{ref('dim_crm_account')}}
        ON dim_crm_opportunity.account_id = dim_crm_account.account_id
    LEFT JOIN {{ref('inter_total_contact_per_account')}}
        ON dim_crm_account.account_id = inter_total_contact_per_account.Account_Id
)

SELECT * FROM opportunity_analysis_view