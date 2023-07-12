with add_data as 
(
select * from {{source('fivetran','My Google sheet 01')}}
),
final as 
(select *, getdate() as created_date,getdate() as updated_date from add data)
select * from final;
