WITH lead_source_analysis_view AS (
    SELECT
        salesforce_old_opportunity_id,
        salesforce_opportunity_created_date,                       
        salesforce_opportunity_systemmodstamp,
        salesforce_opportunity_name,
        salesforce_opportunity_type,
        salesforce_opportunity_stage_name,
        salesforce_opportunity_amount,
        salesforce_opportunity_source_name,
        salesforce_opportunity_ownerId,
        salesforce_opportunity_CreatedById,
        salesforce_opportunity_account_id,
        salesforce_opportunity_Expected_Revenue,
        salesforce_opportunity_close_date,
        salesforce_opportunity_fiscal_quarter,
        salesforce_opportunity_fiscal_year,
        salesforce_opportunity_owner_name,

        salesforce_account_name                           AS opportunity_account_name,
        salesforce_account_ownership                      AS opportunity_account_ownership,
        salesforce_account_ownerId                        AS opportunity_account_ownerId,
        salesforce_account_owner_name                     AS opportunity_account_owner_name,
        salesforce_account_priority                       AS opportunity_account_priority,
        salesforce_account_is_active                      AS opportunity_account_is_active,
        salesforce_account_number_of_employees            AS opportunity_account_number_of_employees,
        salesforce_account_number_of_locations            AS opportunity_account_number_of_locations,
        salesforce_account_upsell_opportunity             AS opportunity_account_upsell_opportunity,
        salesforce_account_sla_sereial_number             AS opportunity_account_sla_sereial_number,
        salesforce_account_sla_expiration_date            AS opportunity_account_sla_expiration_date,
        salesforce_account_created_date                   AS opportunity_account_created_date,
        salesforce_aacount_type                           AS opportunity_aacount_type,
        salesforce_aacount_annual_revenue                 AS opportunity_aacount_annual_revenue,
        salesforce_account_rating                         AS opportunity_account_rating,
        salesforce_account_createdby_id                   AS opportunity_account_createdby_id

    FROM {{ref('dim_crm_old_opportunity')}}
    LEFT JOIN {{ref('dim_crm_old_account')}}
        ON dim_crm_old_opportunity.salesforce_opportunity_account_id = dim_crm_old_account.salesforce_account_id

)

SELECT * FROM lead_source_analysis_view


