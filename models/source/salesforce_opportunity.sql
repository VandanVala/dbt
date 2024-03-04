SELECT
    "Opportunity_Id"                           AS Id,
    "AccountId"                                AS AccountId,
    "OwnerId",
    "Name",
    "StageName"                                AS StageName,
    "Amount"                                   AS Amount,
    "Probability",
    "ExpectedRevenue",
    "Type",
    "LeadSource"                               AS LeadSource,
    "ForecastCategory",
    "ForecastCategoryName",
    "CreatedDate"                             AS CreatedDate,
    "FiscalQuarter",
    "FiscalYear",
    "DeliveryInstallationStatus__c"           AS DeliveryInstallationStatus__c,
    "TrackingNumber__c",
    "OrderNumber__c",
    "CurrentGenerators__c",
    "MainCompetitors__c"

FROM {{source('Salesforce','opportunity')}}