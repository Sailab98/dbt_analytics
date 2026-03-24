with payments as(
    SELECT 
        *
    FROM {{ ref('stg_payments') }}
),
final as(
    Select
        order_id,
        {% set payment_methods=['bank_transfer','credit_card','coupon','gift_card'] %}
        {% for method in payment_methods %}
            sum(case when payment_method = '{{method}}' then amount else 0 end) as {{method}}_name
            {% if not loop.last %}
                ,
            {% endif %}
        {% endfor %}
    FROM
        payments
    GROUP BY 1
    ORDER BY 1
)   

SELECT * FROM final