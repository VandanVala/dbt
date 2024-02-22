SELECT
    "Id" as id ,
    "CreatedDate",
    "SystemModstamp","Name","Title","Country","Company","Salutation","Street","City","State","Phone","Email","LeadSource","Status","Industry","Rating","AnnualRevenue","OwnerId","CreatedById","LastModifiedDate","LastModifiedById","PostalCode","MobilePhone","Fax","Website","Description","NumberOfEmployees","CleanStatus","SICCode__c","ProductInterest__c","CurrentGenerators__c","NumberofLocations__c"
FROM {{source('Salesforce','lead')}}