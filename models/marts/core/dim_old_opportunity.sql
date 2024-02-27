WITH dim_opportunity AS (
    SELECT
        salesforce_old_opportunity.Id                                    AS salesforce_opportunity_id,
        salesforce_old_opportunity."CreatedDate"                         AS salesforce_opportunity_created_date,                       
        salesforce_old_opportunity."SystemModstamp"                      as salesforce_opportunity_systemmodstamp,
        salesforce_old_opportunity."Name"                                as salesforce_opportunity_name,
        salesforce_old_opportunity."Type"                                as salesforce_opportunity_type,
        salesforce_old_opportunity."StageName"                           as salesforce_opportunity_stage_name,
        salesforce_old_opportunity."Amount"                              as salesforce_opportunity_amount,
        salesforce_old_opportunity."LeadSource"                          as salesforce_opportunity_source_name,
        salesforce_old_opportunity."OwnerId"                             as salesforce_opportunity_ownerId,
        salesforce_old_opportunity."CreatedById"                         as salesforce_opportunity_CreatedById,
        salesforce_old_opportunity."AccountId"                           as salesforce_opportunity_account_id,
        salesforce_old_opportunity."ExpectedRevenue"                     as salesforce_opportunity_Expected_Revenue,
        salesforce_old_opportunity."CloseDate"                           as salesforce_opportunity_close_date,
        salesforce_old_opportunity."FiscalQuarter"                       as salesforce_opportunity_fiscal_quarter,
        salesforce_old_opportunity."FiscalYear"                          as salesforce_opportunity_fiscal_year,
        salesforce_user."Name"                                       as salesforce_opportunity_owner_name

    FROM {{ref('salesforce_old_opportunity')}}
    LEFT JOIN {{ref('salesforce_user')}}
        ON salesforce_old_opportunity."OwnerId" = salesforce_user.id
)

SELECT * FROM dim_opportunity



