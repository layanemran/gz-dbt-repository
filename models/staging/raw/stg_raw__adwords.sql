with 

source as (

    select * from {{ source('raw', 'adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name AS campaing_name,
        CAST(ads_cost AS FLOAT64) As ads_cost,
        impression,
        click

    from source

)

select * from renamed
