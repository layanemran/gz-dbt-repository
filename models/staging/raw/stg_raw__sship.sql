with 

source as (

    select * from {{ source('raw', 'sship') }}

),

renamed as (

    select
        orders_id AS orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost,
        ship_cost

    from source

)

select * from renamed
