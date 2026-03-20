SELECT
    id as "Order_Id",
    user_id as "Customer_Id",
    order_date,
    status 
FROM 
    {{ source('jaffle_shop', 'orders') }}