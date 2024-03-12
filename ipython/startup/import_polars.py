from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import polars  # noqa: F401, ICN001
    import polars as pl  # noqa: F401
    from polars import (  # noqa: F401
        Array,
        Binary,
        Boolean,
        Categorical,
        Config,
        DataFrame,
        DataType,
        Date,
        Datetime,
        Decimal,
        Duration,
        Float32,
        Float64,
        Int8,
        Int16,
        Int32,
        Int64,
        List,
        Null,
        Object,
        PolarsDataType,
        Series,
        Struct,
        Time,
        UInt8,
        UInt16,
        UInt32,
        UInt64,
        Unknown,
        Utf8,
        col,
        concat,
        lit,
        read_avro,
        read_csv,
        read_csv_batched,
        read_database,
        read_database_uri,
        read_delta,
        read_excel,
        read_ipc,
        read_ipc_schema,
        read_ipc_stream,
        read_json,
        read_ndjson,
        read_ods,
        read_parquet,
        when,
    )
    from polars.datatypes import (  # noqa: F401
        DataTypeClass,
    )
    from polars.testing import (  # noqa: F401
        assert_frame_equal,
        assert_frame_not_equal,
        assert_series_equal,
        assert_series_not_equal,
    )
    from polars.type_aliases import (  # noqa: F401
        SchemaDict,
    )

    Config(tbl_rows=7, tbl_cols=100)
