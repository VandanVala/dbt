WITH dim_crm_old_account AS (
    SELECT
        salesforce_old_account.Id                                      AS salesforce_account_id,
        salesforce_old_account."Name"                                    as salesforce_account_name,
        salesforce_old_account."Ownership"                               as salesforce_account_ownership,
        salesforce_old_account."OwnerId"                                 as salesforce_account_ownerId,
        salesforce_user."Name"                                           as salesforce_account_owner_name,
        salesforce_old_account."CustomerPriority__c"                     as salesforce_account_priority,
        salesforce_old_account."Active__c"                               as salesforce_account_is_active,
        salesforce_old_account."NumberOfEmployees"                       as salesforce_account_number_of_employees,
        salesforce_old_account."NumberofLocations__c"                    as salesforce_account_number_of_locations,
        salesforce_old_account."UpsellOpportunity__c"                    as salesforce_account_upsell_opportunity,
        salesforce_old_account."SLASerialNumber__c"                     as salesforce_account_sla_sereial_number,
        salesforce_old_account."SLAExpirationDate__c"                    as salesforce_account_sla_expiration_date,
        salesforce_old_account."CreatedDate"                             as salesforce_account_created_date,
        salesforce_old_account."Type"                                    as salesforce_aacount_type,
        salesforce_old_account."AnnualRevenue"                           as salesforce_aacount_annual_revenue,
        salesforce_old_account."Rating"                                  as salesforce_account_rating,
        salesforce_old_account."CreatedById"                             as salesforce_account_createdby_id

    FROM {{ref('salesforce_old_account')}}
    LEFT JOIN {{ref('salesforce_user')}}
        ON salesforce_old_account."OwnerId" = salesforce_user.Id
)

SELECT * FROM dim_crm_old_account
