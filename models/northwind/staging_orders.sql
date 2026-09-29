WITH source_data AS (
    SELECT *
    FROM {{ source('northwind', 'orders') }}
)
SELECT
    order_id
    ,customer_id
    ,employee_id
    ,order_date::DATE AS order_date
    ,required_date::DATE AS required_date
    ,shipped_date::DATE AS shipped_date
    ,ship_via AS ship_via
--	,freight
--	,shipname AS ship_name
--	,shipadress AS ship_address
    ,ship_city AS ship_city
--	,shipregion AS ship_region
--	,shippostalcode AS ship_postalcode
    ,ship_country
FROM source_data