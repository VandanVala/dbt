SELECT 
    "Id" as id,
    "CreatedDate",
    "SystemModstamp",
    "Username",
    "Name",
    "CompanyName",
    "Email",
    "ProfileId",
    "UserType",
    "LastLoginDate",
    "IsActive",
    "UserRoleId",
    "CreatedById",
    "LastModifiedDate",
    "LastModifiedById"
FROM {{source('Salesforce','user')}}