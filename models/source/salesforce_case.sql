SELECT
    Case_id,
	Case_number,
	Contact_id,
	Account_id,
	type,
	status,
	reason,
	origin,
	subject,
	priority,
	owner_id,
	created_date,
	last_modified_date,
	contact_phone,
	contact_mobile,
	contact_email,
	contact_fax,
	engineering_req_number,
	product,
	potentialiability

FROM {{source('Salesforce','case')}}