from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from utilities.atomicwrites import (  # noqa: F401
        DirectoryExistsError,
        WriterError,
        writer,
    )
with suppress(ModuleNotFoundError):
    from utilities.beartype import (  # noqa: F401
        beartype_if_dev,
    )
with suppress(ModuleNotFoundError):
    from utilities.bs4 import (  # noqa: F401
        TableTagToDataFrameError,
        table_tag_to_dataframe,
        yield_tables,
    )
with suppress(ModuleNotFoundError):
    from utilities.cryptography import (  # noqa: F401
        GetFernetError,
        decrypt,
        encrypt,
        get_fernet,
    )
with suppress(ModuleNotFoundError):
    from utilities.datetime import (  # noqa: F401
        EPOCH_UTC,
        NOW_HK,
        NOW_TOKYO,
        NOW_UTC,
        TODAY_HK,
        TODAY_TOKYO,
        TODAY_UTC,
        UTC,
        AddWeekdaysError,
        ParseDateError,
        ParseDateTimeError,
        ParseTimedeltaError,
        ParseTimeError,
        YieldWeekdaysError,
        add_weekdays,
        date_to_datetime,
        duration_to_float,
        duration_to_timedelta,
        ensure_date,
        ensure_datetime,
        ensure_time,
        ensure_timedelta,
        get_now,
        get_now_hk,
        get_now_tokyo,
        get_today,
        get_today_hk,
        get_today_tokyo,
        is_weekday,
        local_timezone,
        maybe_sub_pct_y,
        parse_date,
        parse_datetime,
        parse_time,
        parse_timedelta,
        round_to_next_weekday,
        round_to_prev_weekday,
        serialize_date,
        serialize_datetime,
        serialize_time,
        serialize_timedelta,
        yield_weekdays,
    )
with suppress(ModuleNotFoundError):
    from utilities.enum import (  # noqa: F401
        ParseEnumError,
        StrEnum,
        ensure_enum,
        parse_enum,
    )
with suppress(ModuleNotFoundError):
    from utilities.errors import (  # noqa: F401
        ImpossibleCaseError,
        RedirectErrorError,
        redirect_error,
        retry,
    )
with suppress(ModuleNotFoundError):
    from utilities.functools import (  # noqa: F401
        EmptyReduceError,
        partial,
        redirect_empty_reduce,
    )
with suppress(ModuleNotFoundError):
    from utilities.getpass import (  # noqa: F401
        USER,
    )
with suppress(ModuleNotFoundError):
    from utilities.git import (  # noqa: F401
        GetRepoRootError,
        get_branch_name,
        get_repo_name,
        get_repo_root,
        get_repo_root_or_cwd_sub_path,
    )
with suppress(ModuleNotFoundError):
    from utilities.hashlib import (  # noqa: F401
        md5_hash,
    )
with suppress(ModuleNotFoundError):
    from utilities.humps import (  # noqa: F401
        SnakeCaseMappingsError,
        snake_case,
        snake_case_mappings,
    )
with suppress(ModuleNotFoundError):
    from utilities.iterables import (  # noqa: F401
        CheckDuplicatesError,
        CheckIterablesEqualError,
        CheckLengthsEqualError,
        CheckMappingsEqualError,
        CheckSetsEqualError,
        CheckSubMappingError,
        CheckSubSetError,
        CheckSuperMappingError,
        CheckSuperSetError,
        EnsureIterableError,
        EnsureIterableNotStrError,
        OneEmptyError,
        OneError,
        OneNonUniqueError,
        check_duplicates,
        check_iterables_equal,
        check_lengths_equal,
        check_mappings_equal,
        check_sets_equal,
        check_submapping,
        check_subset,
        check_supermapping,
        check_superset,
        ensure_hashables,
        ensure_iterable,
        ensure_iterable_not_str,
        is_iterable,
        is_iterable_not_str,
        one,
        take,
        transpose,
    )
with suppress(ModuleNotFoundError):
    from utilities.json import (  # noqa: F401
        deserialize,
        serialize,
    )
with suppress(ModuleNotFoundError):
    from utilities.jupyter import (  # noqa: F401
        show,
    )
with suppress(ModuleNotFoundError):
    from utilities.logging import (  # noqa: F401
        LogLevel,
        basic_config,
    )
with suppress(ModuleNotFoundError):
    from utilities.luigi import (  # noqa: F401
        AwaitTask,
        AwaitTime,
        DatabaseTarget,
        DateHourParameter,
        DateMinuteParameter,
        DateParameter,
        DateSecondParameter,
        EngineParameter,
        EnumParameter,
        ExternalFile,
        ExternalTask,
        FrozenSetStrsParameter,
        PathTarget,
        TableParameter,
        TimeParameter,
        WeekdayParameter,
        build,
        clone,
    )
with suppress(ModuleNotFoundError):
    from utilities.more_itertools import (  # noqa: F401
        always_iterable,
        peekable,
        windowed_complete,
    )
with suppress(ModuleNotFoundError):
    from utilities.os import (  # noqa: F401
        CPU_COUNT,
        GetCPUCountError,
        get_cpu_count,
        temp_environ,
    )
with suppress(ModuleNotFoundError):
    from utilities.pandas import (  # noqa: F401
        TIMESTAMP_MAX_AS_DATE,
        TIMESTAMP_MAX_AS_DATETIME,
        TIMESTAMP_MIN_AS_DATE,
        TIMESTAMP_MIN_AS_DATETIME,
        CheckIndexError,
        CheckPandasDataFrameError,
        CheckRangeIndexError,
        EmptyPandasConcatError,
        IndexA,
        IndexB,
        IndexBn,
        IndexC,
        IndexD,
        IndexDhk,
        IndexDutc,
        IndexF,
        IndexI,
        IndexI64,
        IndexS,
        IndexSt,
        Int64,
        ReindexToSetError,
        ReindexToSubSetError,
        ReindexToSuperSetError,
        SeriesA,
        SeriesB,
        SeriesBn,
        SeriesC,
        SeriesD,
        SeriesDhk,
        SeriesDutc,
        SeriesF,
        SeriesI,
        SeriesI64,
        SeriesMinMaxError,
        SeriesS,
        SeriesSt,
        TimestampToDateTimeError,
        UnionIndexesError,
        astype,
        boolean,
        category,
        check_index,
        check_pandas_dataframe,
        check_range_index,
        datetime64nshk,
        datetime64nsutc,
        redirect_empty_pandas_concat,
        reindex_to_set,
        reindex_to_subset,
        reindex_to_superset,
        rename_index,
        series_max,
        series_min,
        sort_index,
        string,
        timestamp_to_date,
        timestamp_to_datetime,
        to_numpy,
        union_indexes,
    )
with suppress(ModuleNotFoundError):
    from utilities.pathlib import (  # noqa: F401
        ensure_path,
        ensure_suffix,
        list_dir,
        temp_cwd,
        walk,
    )
with suppress(ModuleNotFoundError):
    from utilities.pathvalidate import (  # noqa: F401
        valid_path,
        valid_path_cwd,
        valid_path_home,
    )
with suppress(ModuleNotFoundError):
    from utilities.pickle import (  # noqa: F401
        read_pickle,
        write_pickle,
    )
with suppress(ModuleNotFoundError):
    from utilities.polars import (  # noqa: F401
        CheckPolarsDataFrameError,
        EmptyPolarsConcatError,
        SetFirstRowAsColumnsError,
        check_polars_dataframe,
        join,
        nan_sum_agg,
        nan_sum_cols,
        redirect_empty_polars_concat,
        set_first_row_as_columns,
    )
with suppress(ModuleNotFoundError):
    from utilities.pydantic import (  # noqa: F401
        HashableBaseModel,
        load_model,
        save_model,
    )
with suppress(ModuleNotFoundError):
    from utilities.pytest import (  # noqa: F401
        add_pytest_addoption,
        add_pytest_collection_modifyitems,
        add_pytest_configure,
        skipif_linux,
        skipif_mac,
        skipif_not_linux,
        skipif_not_mac,
        skipif_not_windows,
        skipif_windows,
        throttle,
    )
with suppress(ModuleNotFoundError):
    from utilities.re import (  # noqa: F401
        ExtractGroupError,
        ExtractGroupsError,
        extract_group,
        extract_groups,
    )
with suppress(ModuleNotFoundError):
    from utilities.sentinel import (  # noqa: F401
        Sentinel,
        sentinel,
    )
with suppress(ModuleNotFoundError):
    from utilities.sqlalchemy import (  # noqa: F401
        CHUNK_SIZE_FRAC,
        CheckEngineError,
        Dialect,
        GetDialectError,
        GetTableError,
        ParseEngineError,
        TablenameMixin,
        check_engine,
        check_table_against_reflection,
        columnwise_max,
        columnwise_min,
        create_engine,
        ensure_engine,
        ensure_tables_created,
        ensure_tables_dropped,
        get_chunk_size,
        get_column_names,
        get_columns,
        get_dialect,
        get_table,
        get_table_name,
        insert_items,
        is_mapped_class,
        is_table_or_mapped_class,
        mapped_class_to_dict,
        parse_engine,
        redirect_table_does_not_exist,
        serialize_engine,
    )
with suppress(ModuleNotFoundError):
    from utilities.sys import (  # noqa: F401
        VERSION_MAJOR_MINOR,
        is_pytest,
    )
with suppress(ModuleNotFoundError):
    from utilities.tempfile import (  # noqa: F401
        TEMP_DIR,
        TemporaryDirectory,
        gettempdir,
    )
with suppress(ModuleNotFoundError):
    from utilities.text import (  # noqa: F401
        EnsureStrError,
        ensure_str,
        strip_and_dedent,
    )
with suppress(ModuleNotFoundError):
    from utilities.timer import (  # noqa: F401
        Timer,
    )
with suppress(ModuleNotFoundError):
    from utilities.typed_settings import (  # noqa: F401
        click_field,
        click_options,
        load_settings,
    )
with suppress(ModuleNotFoundError):
    from utilities.types import (  # noqa: F401
        Duration,
        EnsureClassError,
        EnsureHashableError,
        EnsureNotNoneError,
        EnsureSizedError,
        EnsureSizedNotStrError,
        IterableStrs,
        Number,
        PathLike,
        SequenceStrs,
        ensure_class,
        ensure_hashable,
        ensure_not_none,
        ensure_sized,
        ensure_sized_not_str,
        get_class,
        get_class_name,
        if_not_none,
        is_hashable,
        is_sized,
        is_sized_not_str,
        issubclass_except_bool_int,
    )
with suppress(ModuleNotFoundError):
    from utilities.zoneinfo import (  # noqa: F401
        HONG_KONG,
        TOKYO,
    )
