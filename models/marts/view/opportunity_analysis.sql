SELECT
    salesforce_opportunity.Id                                    AS opportunity_id,
    salesforce_opportunity."CreatedDate"                         AS opportunity_created_date,                       
    salesforce_opportunity."SystemModstamp"                      as opportunity_systemmodstamp,
    salesforce_opportunity."Name"                                as opportunity_name,
    salesforce_opportunity."Type"                                as opportunity_type,
    salesforce_opportunity."StageName"                           as opportunity_stage_name,
    salesforce_opportunity."Amount"                              as opportunity_amount,
    salesforce_opportunity."LeadSource"                          as opportunity_source_name,
    salesforce_opportunity."OwnerId"                             as opportunity_ownerId,
    salesforce_opportunity."CreatedById"                         as opportunity_CreatedById,
    salesforce_opportunity."AccountId"                           as opportunity_account_id,
    salesforce_opportunity."ExpectedRevenue"                     as opportunity_Expected_Revenue,
    salesforce_opportunity."CloseDate"                           as opportunity_close_date,
    salesforce_opportunity."FiscalQuarter"                       as opportunity_fiscal_quarter,
    salesforce_opportunity."FiscalYear"                          as opportunity_fiscal_year,

    salesforce_account."Name"                                    as opportunity_account_name,
    salesforce_account."Ownership"                               as opportunity_account_ownership,
    salesforce_account."OwnerId"                                 as opportunity_account_ownerId,
    salesforce_user."Name"                                       as opportunity_account_owner_name,
    salesforce_account."CustomerPriority__c"                     as opportunity_account_priority,
    salesforce_account."Active__c"                               as opportunity_account_is_active,
    salesforce_account."NumberOfEmployees"                       as opportunity_account_number_of_employees,
    salesforce_account."NumberofLocations__c"                    as opportunity_account_number_of_locations,
    salesforce_account."UpsellOpportunity__c"                    as opportunity_account_upsell_opportunity,
    salesforce_account."SLASerialNumber__c"                     as opportunity_account_sla_sereial_number,
    salesforce_account."SLAExpirationDate__c"                    as opportunity_account_sla_expiration_date,
    salesforce_account."CreatedDate"                             as opportunity_account_created_date,
    salesforce_account."Type"                                    as opportunity_aacount_type,
    salesforce_account."AnnualRevenue"                           as opportunity_aacount_annual_revenue,
    salesforce_account."Rating"                                  as opportunity_account_rating,
    salesforce_account."CreatedById"                             as opportunity_account_createdby_id,

    -- salesforce_lead."Country"                                    as opportunity_country,

    salesforce_user."Name"                                       as opportunity_owner_name

FROM {{ref('salesforce_opportunity')}}
LEFT JOIN {{ref('salesforce_account')}}
    ON salesforce_opportunity."AccountId" = salesforce_account.id
LEFT JOIN {{ref('salesforce_user')}}
    ON salesforce_opportunity."OwnerId" = salesforce_user.id
-- LEFT JOIN {{ref('salesforce_lead')}}
--     ON salesforce_user.id = salesforce_lead."OwnerId"



