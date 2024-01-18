from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from utilities.atomicwrites import (
        DirectoryExistsError,  # noqa: F401
        WriterError,  # noqa: F401
        writer,  # noqa: F401
    )
    from utilities.beartype import (
        beartype_if_dev,  # noqa: F401
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
        valid_path_repo,  # noqa: F401
    )
    from utilities.hashlib import (
        md5_hash,  # noqa: F401
    )
    from utilities.humps import (
        SnakeCaseMappingsError,  # noqa: F401
        snake_case,  # noqa: F401
        snake_case_mappings,  # noqa: F401
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
    from utilities.jupyter import (
        show,  # noqa: F401
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
        ensure_suffix,  # noqa: F401
        temp_cwd,  # noqa: F401
        walk,  # noqa: F401
    )
    from utilities.pathvalidate import (
        valid_path,  # noqa: F401
        valid_path_cwd,  # noqa: F401
        valid_path_home,  # noqa: F401
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
    from utilities.sys import (
        VERSION_MAJOR_MINOR,  # noqa: F401
        is_pytest,  # noqa: F401
    )
    from utilities.tempfile import (
        TEMP_DIR,  # noqa: F401
        TemporaryDirectory,  # noqa: F401
        gettempdir,  # noqa: F401
    )
    from utilities.text import (
        EnsureStrError,  # noqa: F401
        ensure_str,  # noqa: F401
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
        EnsureClassError,  # noqa: F401
        EnsureHashableError,  # noqa: F401
        IterableStrs,  # noqa: F401
        Number,  # noqa: F401
        PathLike,  # noqa: F401
        SequenceStrs,  # noqa: F401
        ensure_class,  # noqa: F401
        ensure_hashable,  # noqa: F401
        get_class,  # noqa: F401
        get_class_name,  # noqa: F401
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
        )
    with suppress(ModuleNotFoundError):
        from utilities._luigi.sqlalchemy import (
            DatabaseTarget,  # noqa: F401
            EngineParameter,  # noqa: F401
            TableParameter,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities._luigi.typed_settings import (
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
            CheckIndexError,  # noqa: F401
            CheckPandasDataFrameError,  # noqa: F401
            CheckRangeIndexError,  # noqa: F401
            EmptyPandasConcatError,  # noqa: F401
            Int64,  # noqa: F401
            SeriesMinMaxError,  # noqa: F401
            TimestampToDateTimeError,  # noqa: F401
            astype,  # noqa: F401
            boolean,  # noqa: F401
            category,  # noqa: F401
            check_index,  # noqa: F401
            check_pandas_dataframe,  # noqa: F401
            check_range_index,  # noqa: F401
            datetime64nshk,  # noqa: F401
            datetime64nsutc,  # noqa: F401
            redirect_empty_pandas_concat,  # noqa: F401
            rename_index,  # noqa: F401
            series_max,  # noqa: F401
            series_min,  # noqa: F401
            sort_index,  # noqa: F401
            string,  # noqa: F401
            timestamp_to_date,  # noqa: F401
            timestamp_to_datetime,  # noqa: F401
            to_numpy,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.polars import (
            CheckPolarsDataFrameError,  # noqa: F401
            SetFirstRowAsColumnsError,  # noqa: F401
            check_polars_dataframe,  # noqa: F401
            join,  # noqa: F401
            set_first_row_as_columns,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities._polars.bs4 import (
            TableTagToDataFrameError,  # noqa: F401
            table_tag_to_dataframe,  # noqa: F401
            yield_tables,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.pytest import (
            add_pytest_addoption,  # noqa: F401
            add_pytest_collection_modifyitems,  # noqa: F401
            add_pytest_configure,  # noqa: F401
            skipif_linux,  # noqa: F401
            skipif_mac,  # noqa: F401
            skipif_not_linux,  # noqa: F401
            skipif_not_mac,  # noqa: F401
            skipif_not_windows,  # noqa: F401
            skipif_windows,  # noqa: F401
            throttle,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy import (
            CHUNK_SIZE_FRAC,  # noqa: F401
            CheckEngineError,  # noqa: F401
            Dialect,  # noqa: F401
            GetDialectError,  # noqa: F401
            GetTableError,  # noqa: F401
            ParseEngineError,  # noqa: F401
            TablenameMixin,  # noqa: F401
            check_engine,  # noqa: F401
            check_table_against_reflection,  # noqa: F401
            columnwise_max,  # noqa: F401
            columnwise_min,  # noqa: F401
            create_engine,  # noqa: F401
            ensure_engine,  # noqa: F401
            ensure_tables_created,  # noqa: F401
            ensure_tables_dropped,  # noqa: F401
            get_chunk_size,  # noqa: F401
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
            redirect_table_does_not_exist,  # noqa: F401
            serialize_engine,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities._sqlalchemy.pandas import (
            InsertPandasDataFrameError,  # noqa: F401
            StreamDataFramesError,  # noqa: F401
            TableColumnToDTypeError,  # noqa: F401
            insert_pandas_dataframe,  # noqa: F401
            select_to_pandas_dataframe,  # noqa: F401
            stream_dataframes,  # noqa: F401
            table_column_to_dtype,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities._sqlalchemy.polars import (
            InsertDataFrameError,  # noqa: F401
            SelectToDataFrameError,  # noqa: F401
            insert_dataframe,  # noqa: F401
            select_to_dataframe,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities._sqlalchemy.timeout_decorator import (
            NextFromSequenceError,  # noqa: F401
            next_from_sequence,  # noqa: F401
            redirect_next_from_sequence_error,  # noqa: F401
        )
