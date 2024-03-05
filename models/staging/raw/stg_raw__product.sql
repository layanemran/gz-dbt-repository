with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        pdt_id as products_id
        purchse_price

    from source

)

select * from renamed
