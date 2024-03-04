WITH inter_total_contact_per_account AS (
    SELECT
        Account_Id,
        count(Contact_Id) AS total_contact_per_account
        
    FROM {{ref('dim_crm_contact')}}
    GROUP BY Account_Id
)
SELECT * FROM inter_total_contact_per_account