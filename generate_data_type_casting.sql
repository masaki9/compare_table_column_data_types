select
--     src.column_name as src_column,
--     src.data_type as src_type,
--     dst.column_name as dst_column,
--     dst.data_type as dst_type,
    case
        when dst.data_type = 'int' and src.data_type <> 'int' then concat('cast(nullif(', src.column_name, ',\'\') as unsigned) as ', src.column_name, ',')
        when dst.data_type = 'decimal' and src.data_type <> 'decimal' then concat('cast(nullif(', src.column_name, ',\'\') as decimal) as ', src.column_name, ',')
        when dst.data_type = 'varchar' and src.data_type <> 'varchar' then concat('cast(', src.column_name, ' as char) as ', src.column_name, ',')
        when dst.data_type = 'date' and src.data_type <> 'date' then concat('str_to_date(nullif(', src.column_name, ',\'\'), \'%Y-%m-%d\') as ', src.column_name, ',')
        else concat(src.column_name, ',')
    end as `sql`
from
    (select column_name, ordinal_position, data_type
     from INFORMATION_SCHEMA.COLUMNS
     where table_schema = 'test' and
		table_name = 'source_tbl'
    ) src
join
    (select column_name, ordinal_position, data_type
     from INFORMATION_SCHEMA.COLUMNS
     where table_schema = 'test' and
		table_name = 'target_tbl'
    ) dst
on src.column_name = dst.column_name
order by dst.ordinal_position asc;
