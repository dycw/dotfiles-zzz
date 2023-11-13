from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import hypothesis
    import hypothesis.strategies  # noqa: F401
    from hypothesis import (
        HealthCheck,  # noqa: F401
        Phase,  # noqa: F401
        Verbosity,  # noqa: F401
        assume,  # noqa: F401
        currently_in_test_context,  # noqa: F401
        event,  # noqa: F401
        example,  # noqa: F401
        find,  # noqa: F401
        given,  # noqa: F401
        infer,  # noqa: F401
        note,  # noqa: F401
        register_random,  # noqa: F401
        reject,  # noqa: F401
        reproduce_failure,  # noqa: F401
        seed,  # noqa: F401
        settings,  # noqa: F401
        target,  # noqa: F401
    )
    from hypothesis.strategies import (
        DataObject,  # noqa: F401
        DrawFn,  # noqa: F401
        binary,  # noqa: F401
        booleans,  # noqa: F401
        builds,  # noqa: F401
        characters,  # noqa: F401
        complex_numbers,  # noqa: F401
        composite,  # noqa: F401
        dates,  # noqa: F401
        datetimes,  # noqa: F401
        decimals,  # noqa: F401
        deferred,  # noqa: F401
        dictionaries,  # noqa: F401
        emails,  # noqa: F401
        fixed_dictionaries,  # noqa: F401
        floats,  # noqa: F401
        fractions,  # noqa: F401
        from_regex,  # noqa: F401
        from_type,  # noqa: F401
        frozensets,  # noqa: F401
        functions,  # noqa: F401
        integers,  # noqa: F401
        ip_addresses,  # noqa: F401
        iterables,  # noqa: F401
        just,  # noqa: F401
        lists,  # noqa: F401
        none,  # noqa: F401
        nothing,  # noqa: F401
        one_of,  # noqa: F401
        permutations,  # noqa: F401
        random_module,  # noqa: F401
        randoms,  # noqa: F401
        recursive,  # noqa: F401
        register_type_strategy,  # noqa: F401
        runner,  # noqa: F401
        sampled_from,  # noqa: F401
        sets,  # noqa: F401
        shared,  # noqa: F401
        slices,  # noqa: F401
        text,  # noqa: F401
        timedeltas,  # noqa: F401
        times,  # noqa: F401
        timezone_keys,  # noqa: F401
        timezones,  # noqa: F401
        tuples,  # noqa: F401
        uuids,  # noqa: F401
    )

    with suppress(ModuleNotFoundError):
        from hypothesis.extra.numpy import (
            BroadcastableShapes,  # noqa: F401
            array_dtypes,  # noqa: F401
            array_shapes,  # noqa: F401
            arrays,  # noqa: F401
            basic_indices,  # noqa: F401
            boolean_dtypes,  # noqa: F401
            broadcastable_shapes,  # noqa: F401
            byte_string_dtypes,  # noqa: F401
            complex_number_dtypes,  # noqa: F401
            datetime64_dtypes,  # noqa: F401
            floating_dtypes,  # noqa: F401
            from_dtype,  # noqa: F401
            integer_array_indices,  # noqa: F401
            integer_dtypes,  # noqa: F401
            mutually_broadcastable_shapes,  # noqa: F401
            nested_dtypes,  # noqa: F401
            scalar_dtypes,  # noqa: F401
            timedelta64_dtypes,  # noqa: F401
            unicode_string_dtypes,  # noqa: F401
            unsigned_integer_dtypes,  # noqa: F401
            valid_tuple_axes,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from hypothesis.extra.pandas import (
            column,  # noqa: F401
            columns,  # noqa: F401
            data_frames,  # noqa: F401
            indexes,  # noqa: F401
            range_indexes,  # noqa: F401
            series,  # noqa: F401
        )
