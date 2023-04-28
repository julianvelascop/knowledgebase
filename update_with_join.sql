
-- in this case, the columns of principal table (table_1) do not need reference the table
-- eg. table_1.column_a = column_a

update 
  table_1
set 
  column_a = table_2.column_a
from 
  table_2
where 
  table_2.id_pk = id_pk
;
