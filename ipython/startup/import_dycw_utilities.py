from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from utilities.class_name import (
        get_class_name,  # noqa: F401
    )
    from utilities.datetime import (
        EPOCH_UTC,  # noqa: F401
        TODAY,  # noqa: F401
        UTC,  # noqa: F401
        CallYieldWeekdaysError,  # noqa: F401
        IsWeekendError,  # noqa: F401
        LocalTimeZoneError,  # noqa: F401
        ParseDateError,  # noqa: F401
        ParseDateTimeError,  # noqa: F401
        ParseTimeError,  # noqa: F401
        add_weekdays,  # noqa: F401
        date_to_datetime,  # noqa: F401
        duration_to_float,  # noqa: F401
        duration_to_timedelta,  # noqa: F401
        ensure_date,  # noqa: F401
        ensure_datetime,  # noqa: F401
        ensure_time,  # noqa: F401
        ensure_timedelta,  # noqa: F401
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
