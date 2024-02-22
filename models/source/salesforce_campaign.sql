SELECT
    Id as id,
	Name,
	Type,
	Status,
	StartDate,
	EndDate,
	ExpectedRevenue,
	BudgetedCost,
	ActualCost,
	ExpectedResponse,
	NumberSent,
	OwnerId,
	CreatedDate,
	CreatedById,
	LastModifiedDate,
	LastModifiedById,
	SystemModstamp
FROM {{source('Salesforce','campaign')}}