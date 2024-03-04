WITH dim_crm_contact AS (
    SELECT
        Contact_Id,
        Account_Id,
        Owner_Id,
        Name,
        Title,
        Department,
        LeadSource,
        CreatedDate
        
    FROM {{ref('salesforce_contact')}}
)
SELECT * FROM dim_crm_contact 

