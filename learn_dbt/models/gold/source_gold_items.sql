with dedup_query as (
select
   *,
   row_number() over (partition by id order by update desc) as dedup
from
  {{ source('source', 'dim_items') }}
)
select
   id,
   name,
   category,
   update,
   dedup
from
  dedup_query
where
  dedup = 1