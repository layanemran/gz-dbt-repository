with 

source as (

    select * from {{ source('raw', 'sship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        ship_cost,

    from source

)

select * from renamed
