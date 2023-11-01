from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import polars  # noqa: F401, ICN001
    import polars as pl  # noqa: F401
    from polars import (
        Array,  # noqa: F401
        Binary,  # noqa: F401
        Boolean,  # noqa: F401
        Categorical,  # noqa: F401
        DataFrame,  # noqa: F401
        Date,  # noqa: F401
        Datetime,  # noqa: F401
        Decimal,  # noqa: F401
        Duration,  # noqa: F401
        Float32,  # noqa: F401
        Float64,  # noqa: F401
        Int8,  # noqa: F401
        Int16,  # noqa: F401
        Int32,  # noqa: F401
        Int64,  # noqa: F401
        List,  # noqa: F401
        Null,  # noqa: F401
        Object,  # noqa: F401
        Series,  # noqa: F401
        Struct,  # noqa: F401
        Time,  # noqa: F401
        UInt8,  # noqa: F401
        UInt16,  # noqa: F401
        UInt32,  # noqa: F401
        UInt64,  # noqa: F401
        Unknown,  # noqa: F401
        Utf8,  # noqa: F401
        col,  # noqa: F401
        read_avro,  # noqa: F401
        read_csv,  # noqa: F401
        read_csv_batched,  # noqa: F401
        read_database,  # noqa: F401
        read_database_uri,  # noqa: F401
        read_delta,  # noqa: F401
        read_excel,  # noqa: F401
        read_ipc,  # noqa: F401
        read_ipc_schema,  # noqa: F401
        read_ipc_stream,  # noqa: F401
        read_json,  # noqa: F401
        read_ndjson,  # noqa: F401
        read_ods,  # noqa: F401
        read_parquet,  # noqa: F401
        when,  # noqa: F401
    )
    from polars.testing import (
        assert_frame_equal,  # noqa: F401
        assert_frame_not_equal,  # noqa: F401
        assert_series_equal,  # noqa: F401
        assert_series_not_equal,  # noqa: F401
    )
    from polars.type_aliases import (
        PolarsDataType,  # noqa: F401
        SchemaDict,  # noqa: F401
    )
