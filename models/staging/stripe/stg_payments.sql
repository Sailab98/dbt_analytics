SELECT 
    id as Payment_id,
    orderid as order_id,
    paymentmethod as Payment_Method,
    status,
    {{cents_to_dollars("amount",2)}} as amount,
    created date
FROM
    {{ source('stripe', 'payment') }}
WHERE status != 'fail'


