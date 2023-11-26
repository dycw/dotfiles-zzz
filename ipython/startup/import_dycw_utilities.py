from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from utilities.atomicwrites import (
        WriterError,  # noqa: F401
    )
    from utilities.class_name import (
        get_class_name,  # noqa: F401
    )
    from utilities.datetime import (
        EPOCH_UTC,  # noqa: F401
        NOW_HKG,  # noqa: F401
        NOW_TKY,  # noqa: F401
        NOW_UTC,  # noqa: F401
        TODAY_HKG,  # noqa: F401
        TODAY_TKY,  # noqa: F401
        TODAY_UTC,  # noqa: F401
        UTC,  # noqa: F401
        AddWeekdaysError,  # noqa: F401
        LocalTimeZoneError,  # noqa: F401
        ParseDateError,  # noqa: F401
        ParseDateTimeError,  # noqa: F401
        ParseTimedeltaError,  # noqa: F401
        ParseTimeError,  # noqa: F401
        YieldWeekdaysError,  # noqa: F401
        add_weekdays,  # noqa: F401
        date_to_datetime,  # noqa: F401
        duration_to_float,  # noqa: F401
        duration_to_timedelta,  # noqa: F401
        ensure_date,  # noqa: F401
        ensure_datetime,  # noqa: F401
        ensure_time,  # noqa: F401
        ensure_timedelta,  # noqa: F401
        get_now,  # noqa: F401
        get_today,  # noqa: F401
        is_weekday,  # noqa: F401
        local_timezone,  # noqa: F401
        maybe_sub_pct_y,  # noqa: F401
        parse_date,  # noqa: F401
        parse_datetime,  # noqa: F401
        parse_time,  # noqa: F401
        parse_timedelta,  # noqa: F401
        round_to_next_weekday,  # noqa: F401
        round_to_prev_weekday,  # noqa: F401
        serialize_date,  # noqa: F401
        serialize_datetime,  # noqa: F401
        serialize_time,  # noqa: F401
        serialize_timedelta,  # noqa: F401
        yield_weekdays,  # noqa: F401
    )
    from utilities.enum import (
        ParseEnumError,  # noqa: F401
        StrEnum,  # noqa: F401
        ensure_enum,  # noqa: F401
        parse_enum,  # noqa: F401
    )
    from utilities.errors import (
        DirectoryExistsError,  # noqa: F401
        RedirectErrorError,  # noqa: F401
        redirect_error,  # noqa: F401
        retry,  # noqa: F401
    )
    from utilities.functools import (
        partial,  # noqa: F401
    )
    from utilities.getpass import (
        USER,  # noqa: F401
    )
    from utilities.git import (
        GetRepoRootError,  # noqa: F401
        get_branch_name,  # noqa: F401
        get_repo_name,  # noqa: F401
        get_repo_root,  # noqa: F401
        get_repo_root_or_cwd_sub_path,  # noqa: F401
    )
    from utilities.hashlib import (
        md5_hash,  # noqa: F401
    )
    from utilities.iterables import (
        CheckDuplicatesError,  # noqa: F401
        check_duplicates,  # noqa: F401
        ensure_hashables,  # noqa: F401
        is_iterable_not_str,  # noqa: F401
    )
    from utilities.json import (
        deserialize,  # noqa: F401
        serialize,  # noqa: F401
    )
    from utilities.logging import (
        LogLevel,  # noqa: F401
        basic_config,  # noqa: F401
    )
    from utilities.more_itertools import (
        OneEmptyError,  # noqa: F401
        OneError,  # noqa: F401
        OneNonUniqueError,  # noqa: F401
        one,  # noqa: F401
    )
    from utilities.os import (
        CPU_COUNT,  # noqa: F401
        GetCPUCountError,  # noqa: F401
        get_cpu_count,  # noqa: F401
        temp_environ,  # noqa: F401
    )
    from utilities.pathlib import (
        PathLike,  # noqa: F401
        ensure_suffix,  # noqa: F401
        temp_cwd,  # noqa: F401
        walk,  # noqa: F401
    )
    from utilities.pickle import (
        read_pickle,  # noqa: F401
        write_pickle,  # noqa: F401
    )
    from utilities.re import (
        ExtractGroupError,  # noqa: F401
        ExtractGroupsError,  # noqa: F401
        extract_group,  # noqa: F401
        extract_groups,  # noqa: F401
    )
    from utilities.sentinel import (
        Sentinel,  # noqa: F401
        sentinel,  # noqa: F401
    )
    from utilities.tempfile import (
        TEMP_DIR,  # noqa: F401
        TemporaryDirectory,  # noqa: F401
        gettempdir,  # noqa: F401
    )
    from utilities.text import (
        EnsureStrError,  # noqa: F401
        SnakeCaseMappingsError,  # noqa: F401
        ensure_str,  # noqa: F401
        snake_case,  # noqa: F401
        snake_case_mappings,  # noqa: F401
        strip_and_dedent,  # noqa: F401
    )
    from utilities.timer import (
        Timer,  # noqa: F401
    )
    from utilities.typed_settings import (
        click_field,  # noqa: F401
        click_options,  # noqa: F401
        load_settings,  # noqa: F401
    )
    from utilities.types import (
        Duration,  # noqa: F401
        EnsureHashableError,  # noqa: F401
        IterableStrs,  # noqa: F401
        Number,  # noqa: F401
        SequenceStrs,  # noqa: F401
        ensure_class,  # noqa: F401
        ensure_hashable,  # noqa: F401
        is_hashable,  # noqa: F401
        is_sized_not_str,  # noqa: F401
        issubclass_except_bool_int,  # noqa: F401
    )
    from utilities.zoneinfo import (
        HONG_KONG,  # noqa: F401
        TOKYO,  # noqa: F401
    )

    with suppress(ModuleNotFoundError):
        from utilities.airium import (
            yield_airium,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.cryptography import (
            GetFernetError,  # noqa: F401
            decrypt,  # noqa: F401
            encrypt,  # noqa: F401
            get_fernet,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.luigi import (
            AwaitTask,  # noqa: F401
            AwaitTime,  # noqa: F401
            DateHourParameter,  # noqa: F401
            DateMinuteParameter,  # noqa: F401
            DateParameter,  # noqa: F401
            DateSecondParameter,  # noqa: F401
            EnumParameter,  # noqa: F401
            ExternalFile,  # noqa: F401
            ExternalTask,  # noqa: F401
            FrozenSetStrsParameter,  # noqa: F401
            PathTarget,  # noqa: F401
            TimeParameter,  # noqa: F401
            WeekdayParameter,  # noqa: F401
            build,  # noqa: F401
            clone,  # noqa: F401
            get_dependencies_downstream,  # noqa: F401
            get_dependencies_upstream,  # noqa: F401
            get_task_classes,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.luigi import (  # sqlalchemy
            DatabaseTarget,  # noqa: F401
            EngineParameter,  # noqa: F401
            TableParameter,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.luigi import (
            AnnotationAndKeywordsToDictError,  # noqa: F401
            AnnotationIterableToClassError,  # noqa: F401
            AnnotationToClassError,  # noqa: F401
            annotation_and_keywords_to_dict,  # noqa: F401
            annotation_date_to_class,  # noqa: F401
            annotation_datetime_to_class,  # noqa: F401
            annotation_iterable_to_class,  # noqa: F401
            annotation_to_class,  # noqa: F401
            annotation_union_to_class,  # noqa: F401
            build_params_mixin,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.pandas import (
            TIMESTAMP_MAX_AS_DATE,  # noqa: F401
            TIMESTAMP_MAX_AS_DATETIME,  # noqa: F401
            TIMESTAMP_MIN_AS_DATE,  # noqa: F401
            TIMESTAMP_MIN_AS_DATETIME,  # noqa: F401
            CheckPandasDataFrameError,  # noqa: F401
            CheckPandasDataFrameLengthError,  # noqa: F401
            CheckRangeIndexError,  # noqa: F401
            EmptyPandasConcatError,  # noqa: F401
            Int64,  # noqa: F401
            SeriesMinMaxError,  # noqa: F401
            TimestampToDateTimeError,  # noqa: F401
            astype,  # noqa: F401
            boolean,  # noqa: F401
            category,  # noqa: F401
            check_pandas_dataframe,  # noqa: F401
            check_pandas_dataframe_length,  # noqa: F401
            check_range_index,  # noqa: F401
            datetime64nshk,  # noqa: F401
            datetime64nsutc,  # noqa: F401
            redirect_to_empty_pandas_concat_error,  # noqa: F401
            rename_index,  # noqa: F401
            series_max,  # noqa: F401
            series_min,  # noqa: F401
            series_minmax,  # noqa: F401
            sort_index,  # noqa: F401
            string,  # noqa: F401
            timestamp_to_date,  # noqa: F401
            timestamp_to_datetime,  # noqa: F401
            to_numpy,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.polars import (
            CheckPolarsDataFrameError,  # noqa: F401
            CheckPolarsDataFrameHeightError,  # noqa: F401
            SetFirstRowAsColumnsError,  # noqa: F401
            check_polars_dataframe,  # noqa: F401
            check_polars_dataframe_height,  # noqa: F401
            join,  # noqa: F401
            set_first_row_as_columns,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.polars import (  # bs4
            TableTagToDataFrameError,  # noqa: F401
            table_tag_to_dataframe,  # noqa: F401
            yield_tables,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy import (
            INSERT_ITEMS_CHUNK_SIZE_FRAC,  # noqa: F401
            CheckEngineError,  # noqa: F401
            Dialect,  # noqa: F401
            GetDialectError,  # noqa: F401
            GetTableError,  # noqa: F401
            ParseEngineError,  # noqa: F401
            TableAlreadyExistsError,  # noqa: F401
            TablenameMixin,  # noqa: F401
            check_dataframe_schema_against_table,  # noqa: F401
            check_engine,  # noqa: F401
            check_selectable_for_duplicate_columns,  # noqa: F401
            check_table_against_reflection,  # noqa: F401
            columnwise_max,  # noqa: F401
            columnwise_min,  # noqa: F401
            create_engine,  # noqa: F401
            ensure_engine,  # noqa: F401
            ensure_tables_created,  # noqa: F401
            ensure_tables_dropped,  # noqa: F401
            get_column_names,  # noqa: F401
            get_columns,  # noqa: F401
            get_dialect,  # noqa: F401
            get_table,  # noqa: F401
            get_table_name,  # noqa: F401
            insert_items,  # noqa: F401
            is_mapped_class,  # noqa: F401
            is_table_or_mapped_class,  # noqa: F401
            mapped_class_to_dict,  # noqa: F401
            parse_engine,  # noqa: F401
            redirect_to_no_such_table_error,  # noqa: F401
            redirect_to_table_already_exists_error,  # noqa: F401
            serialize_engine,  # noqa: F401
            yield_connection,  # noqa: F401
        )

    with suppress(ModuleNotFoundError):  # fastparquet
        from utilities.sqlalchemy import select_to_parquet  # noqa: F401
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy import (  # pandas
            InsertPandasDataFrameError,  # noqa: F401
            StreamDataFramesError,  # noqa: F401
            TableColumnToDTypeError,  # noqa: F401
            insert_pandas_dataframe,  # noqa: F401
            select_to_pandas_dataframe,  # noqa: F401
            stream_dataframes,  # noqa: F401
            table_column_to_dtype,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy import (  # polars
            InsertPolarsDataFrameError,  # noqa: F401
            TableColumnToExprError,  # noqa: F401
            insert_polars_dataframe,  # noqa: F401
            select_to_polars_dataframe,  # noqa: F401
            table_column_to_expr,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):  # timeout_decorator
        from utilities.sqlalchemy import (
            NextFromSequenceError,  # noqa: F401
            next_from_sequence,  # noqa: F401
            redirect_to_next_from_sequence_error,  # noqa: F401
        )
