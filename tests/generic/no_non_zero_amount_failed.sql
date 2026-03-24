{% test no_non_zero_amount_failed() %}

    SELECT 
        * 
    FROM {{ source('stripe', 'payment') }}
    WHERE amount > 0 and status = 'fail'

{% endtest %}