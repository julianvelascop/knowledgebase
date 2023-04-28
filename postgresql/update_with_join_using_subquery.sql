-- in this case, the columns of principal table (table_1) do not need reference the table
-- eg. table_1.column_a = column_a

update 
  table_1
set 
  column_a = table_2.column_a
from (
        select distinct 
          t3.column_a as id_pk,
          t4.column_m as column_a
        from 
          table_3 t3
          inner join table_4 t4 on t4.fk_id = t3.pk_id
        where 
          t3.column_a = 0 
          and t4.column_b <> t3.column_b
) table_2 
where 
  table_2.id_pk = id_pk
;
