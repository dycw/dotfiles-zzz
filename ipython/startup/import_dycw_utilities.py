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
    from utilities.typing import (
        IterableStrs,  # noqa: F401
        Number,  # noqa: F401
        SequenceStrs,  # noqa: F401
    )

    with suppress(ModuleNotFoundError):
        from utilities.airium import (
            yield_airium,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from utilities.atomicwrites import (
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
