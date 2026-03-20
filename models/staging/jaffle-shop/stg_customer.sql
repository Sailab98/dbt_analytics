Select
    id as "Customer_Id",
    first_name,
    last_name
FROM 
    {{ source('jaffle_shop', 'customers') }}