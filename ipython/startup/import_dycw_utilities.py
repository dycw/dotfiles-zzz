from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
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
        IsWeekendError,  # noqa: F401
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
        MultipleMatchingMembersError,  # noqa: F401
        NoMatchingMemberError,  # noqa: F401
        StrEnum,  # noqa: F401
        ensure_enum,  # noqa: F401
        parse_enum,  # noqa: F401
    )
    from utilities.errors import (
        DirectoryExistsError,  # noqa: F401
        NoUniqueArgError,  # noqa: F401
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
        InvalidRepoError,  # noqa: F401
        get_branch_name,  # noqa: F401
        get_repo_name,  # noqa: F401
        get_repo_root,  # noqa: F401
    )
    from utilities.hashlib import (
        md5_hash,  # noqa: F401
    )
    from utilities.itertools import (
        EmptyIterableError,  # noqa: F401
        IterableContainsDuplicatesError,  # noqa: F401
        MultipleElementsError,  # noqa: F401
        always_iterable,  # noqa: F401
        check_duplicates,  # noqa: F401
        chunked,  # noqa: F401
        is_iterable_not_str,  # noqa: F401
        one,  # noqa: F401
        take,  # noqa: F401
    )
    from utilities.json import (
        deserialize,  # noqa: F401
        serialize,  # noqa: F401
    )
    from utilities.logging import (
        LogLevel,  # noqa: F401
        basic_config,  # noqa: F401
    )
    from utilities.os import (
        CPU_COUNT,  # noqa: F401
        UnableToDetermineCPUCountError,  # noqa: F401
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
        MultipleCaptureGroupsError,  # noqa: F401
        MultipleMatchesError,  # noqa: F401
        NoCaptureGroupsError,  # noqa: F401
        NoMatchesError,  # noqa: F401
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
        NotAStringError,  # noqa: F401
        SnakeCaseContainsDuplicatesError,  # noqa: F401
        ensure_str,  # noqa: F401
        snake_case,  # noqa: F401
        snake_case_mappings,  # noqa: F401
        strip_and_dedent,  # noqa: F401
    )
    from utilities.timer import (
        Timer,  # noqa: F401
    )
    from utilities.typing import (
        IterableStrs,  # noqa: F401
        Number,  # noqa: F401
        SequenceStrs,  # noqa: F401
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
        from utilities.atomicwrites import (
            WriterEmptyError,  # noqa: F401
            writer,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.cryptography import (
            FernetKeyMissingError,  # noqa: F401
            decrypt,  # noqa: F401
            encrypt,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.luigi.luigi import (
            AwaitTask,  # noqa: F401
            AwaitTime,  # noqa: F401
            DateHourParameter,  # noqa: F401
            DateMinuteParameter,  # noqa: F401
            DateParameter,  # noqa: F401
            DateSecondParameter,  # noqa: F401
            EnumParameter,  # noqa: F401
            ExternalFile,  # noqa: F401
            ExternalTask,  # noqa: F401
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
        from utilities.luigi.semver import (
            VersionParameter,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.luigi.sqlalchemy import (
            DatabaseTarget,  # noqa: F401
            EngineParameter,  # noqa: F401
            TableParameter,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.luigi.typed_settings import (
            AmbiguousDateError,  # noqa: F401
            AmbiguousDatetimeError,  # noqa: F401
            InvalidAnnotationAndKeywordsError,  # noqa: F401
            InvalidAnnotationError,  # noqa: F401
            build_params_mixin,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.polars.bs4 import (
            MultipleTHRowsError,  # noqa: F401
            yield_tables,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.polars.polars import (
            DataFrameColumnsError,  # noqa: F401
            DataFrameDTypesError,  # noqa: F401
            DataFrameHeightError,  # noqa: F401
            DataFrameMaxHeightError,  # noqa: F401
            DataFrameMinHeightError,  # noqa: F401
            DataFrameSchemaError,  # noqa: F401
            DataFrameShapeError,  # noqa: F401
            DataFrameSortedError,  # noqa: F401
            DataFrameUniqueError,  # noqa: F401
            DataFrameWidthError,  # noqa: F401
            EmptyDataFrameError,  # noqa: F401
            check_dataframe,  # noqa: F401
            join,  # noqa: F401
            set_first_row_as_columns,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy.fastparquet import select_to_parquet  # noqa: F401
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy.pandas import (
            ColumnToPandasDTypeError,  # noqa: F401
            NonPositiveStreamError,  # noqa: F401
            PandasDataFrameYieldsNoRowsError,  # noqa: F401
            insert_pandas_dataframe,  # noqa: F401
            select_to_pandas_dataframe,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy.polars import (
            ColumnToPolarsExprError,  # noqa: F401
            PolarsDataFrameYieldsNoRowsError,  # noqa: F401
            insert_polars_dataframe,  # noqa: F401
            select_to_polars_dataframe,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy.sqlalchemy import (
            CHUNK_SIZE_FRAC,  # noqa: F401
            Dialect,  # noqa: F401
            EngineError,  # noqa: F401
            FirstArgumentInvalidError,  # noqa: F401
            FirstArgumentListItemInvalidError,  # noqa: F401
            IncorrectNumberOfTablesError,  # noqa: F401
            InvalidItemError,  # noqa: F401
            InvalidItemInIterableError,  # noqa: F401
            NotATableOrAMappedClassError,  # noqa: F401
            ParseEngineError,  # noqa: F401
            SecondArgumentNotATableOrMappedClassError,  # noqa: F401
            SeriesAndTableColumnIncompatibleError,  # noqa: F401
            SeriesMatchesAgainstMultipleColumnsError,  # noqa: F401
            SeriesMatchesAgainstNoColumnError,  # noqa: F401
            TableAlreadyExistsError,  # noqa: F401
            TablenameMixin,  # noqa: F401
            TupleNotAPairError,  # noqa: F401
            UnequalBooleanColumnCreateConstraintError,  # noqa: F401
            UnequalBooleanColumnNameError,  # noqa: F401
            UnequalColumnTypesError,  # noqa: F401
            UnequalDateTimeColumnTimezoneError,  # noqa: F401
            UnequalEnumColumnCreateConstraintError,  # noqa: F401
            UnequalEnumColumnInheritSchemaError,  # noqa: F401
            UnequalEnumColumnLengthError,  # noqa: F401
            UnequalEnumColumnNativeEnumError,  # noqa: F401
            UnequalEnumColumnTypesError,  # noqa: F401
            UnequalFloatColumnAsDecimalError,  # noqa: F401
            UnequalFloatColumnDecimalReturnScaleError,  # noqa: F401
            UnequalFloatColumnPrecisionsError,  # noqa: F401
            UnequalIntervalColumnDayPrecisionError,  # noqa: F401
            UnequalIntervalColumnNativeError,  # noqa: F401
            UnequalIntervalColumnSecondPrecisionError,  # noqa: F401
            UnequalLargeBinaryColumnLengthError,  # noqa: F401
            UnequalNullableStatusError,  # noqa: F401
            UnequalNumberOfColumnsError,  # noqa: F401
            UnequalNumericScaleError,  # noqa: F401
            UnequalPrimaryKeyStatusError,  # noqa: F401
            UnequalSetOfColumnsError,  # noqa: F401
            UnequalStringCollationError,  # noqa: F401
            UnequalStringLengthError,  # noqa: F401
            UnequalTableOrColumnNamesError,  # noqa: F401
            UnequalTableOrColumnSnakeCaseNamesError,  # noqa: F401
            UnequalUUIDAsUUIDError,  # noqa: F401
            UnequalUUIDNativeUUIDError,  # noqa: F401
            UnsupportedDialectError,  # noqa: F401
            check_dataframe_schema_against_table,  # noqa: F401
            check_engine,  # noqa: F401
            check_selectable_for_duplicate_columns,  # noqa: F401
            check_table_against_reflection,  # noqa: F401
            check_tables_equal,  # noqa: F401
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
    with suppress(ModuleNotFoundError):
        from utilities.sqlalchemy.timeout_decorator import (
            NoSuchSequenceError,  # noqa: F401
            SQLiteDoesNotSupportSequencesError,  # noqa: F401
            next_from_sequence,  # noqa: F401
            redirect_to_no_such_sequence_error,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.typed_settings.click import (
            click_field,  # noqa: F401
            click_options,  # noqa: F401
        )
