select
	src.column_name as source_column, src.data_type as source_type,
    dst.column_name as target_column, dst.data_type as target_type,
    case
		when dst.data_type = src.data_type then true
        else false
    end as is_data_type_same
from
    (select ordinal_position, column_name, data_type
    from information_schema.columns
    where
		table_schema = 'test' and 
        table_name = 'source_tbl'
    ) src
join
    (select ordinal_position, column_name, data_type
    from information_schema.columns
    where
        table_schema = 'test' and
        table_name = 'target_tbl'
    ) dst
on src.column_name = dst.column_name
order by src.ordinal_position asc;
