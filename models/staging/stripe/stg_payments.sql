SELECT 
    id as Payment_id,
    orderid as order_id,
    paymentmethod as Payment_Method,
    status,
    {{cents_to_dollars("amount",3)}} as amount,
    created date
FROM
    {{ source('stripe', 'payment') }}