from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import more_itertools  # noqa: F401
    from more_itertools import (
        AbortThread,  # noqa: F401
        SequenceView,  # noqa: F401
        UnequalIterablesError,  # noqa: F401
        adjacent,  # noqa: F401
        all_equal,  # noqa: F401
        all_unique,  # noqa: F401
        always_iterable,
        always_reversible,  # noqa: F401
        batched,  # noqa: F401
        before_and_after,  # noqa: F401
        bucket,  # noqa: F401
        callback_iter,  # noqa: F401
        chunked,  # noqa: F401
        chunked_even,  # noqa: F401
        circular_shifts,  # noqa: F401
        classify_unique,  # noqa: F401
        collapse,  # noqa: F401
        combination_index,  # noqa: F401
        combination_with_replacement_index,  # noqa: F401
        consecutive_groups,  # noqa: F401
        constrained_batches,  # noqa: F401
        consume,  # noqa: F401
        consumer,  # noqa: F401
        convolve,  # noqa: F401
        count_cycle,  # noqa: F401
        countable,  # noqa: F401
        difference,  # noqa: F401
        distinct_combinations,  # noqa: F401
        distinct_permutations,  # noqa: F401
        distribute,  # noqa: F401
        divide,  # noqa: F401
        dotproduct,  # noqa: F401
        duplicates_everseen,  # noqa: F401
        duplicates_justseen,  # noqa: F401
        exactly_n,  # noqa: F401
        factor,  # noqa: F401
        filter_except,  # noqa: F401
        filter_map,  # noqa: F401
        first,  # noqa: F401
        first_true,  # noqa: F401
        flatten,  # noqa: F401
        gray_product,  # noqa: F401
        groupby_transform,  # noqa: F401
        grouper,  # noqa: F401
        ichunked,  # noqa: F401
        iequals,  # noqa: F401
        ilen,  # noqa: F401
        interleave,  # noqa: F401
        interleave_evenly,  # noqa: F401
        interleave_longest,  # noqa: F401
        intersperse,  # noqa: F401
        is_sorted,  # noqa: F401
        islice_extended,  # noqa: F401
        iter_except,  # noqa: F401
        iter_index,  # noqa: F401
        iter_suppress,  # noqa: F401
        iterate,  # noqa: F401
        last,  # noqa: F401
        locate,  # noqa: F401
        longest_common_prefix,  # noqa: F401
        lstrip,  # noqa: F401
        make_decorator,  # noqa: F401
        map_except,  # noqa: F401
        map_if,  # noqa: F401
        map_reduce,  # noqa: F401
        mark_ends,  # noqa: F401
        matmul,  # noqa: F401
        minmax,  # noqa: F401
        ncycles,  # noqa: F401
        nth,  # noqa: F401
        nth_combination,  # noqa: F401
        nth_combination_with_replacement,  # noqa: F401
        nth_or_last,  # noqa: F401
        nth_permutation,  # noqa: F401
        nth_product,  # noqa: F401
        numeric_range,  # noqa: F401
        only,  # noqa: F401
        outer_product,  # noqa: F401
        pad_none,  # noqa: F401
        padded,  # noqa: F401
        padnone,  # noqa: F401
        pairwise,  # noqa: F401
        partial_product,  # noqa: F401
        partition,  # noqa: F401
        partitions,  # noqa: F401
        permutation_index,  # noqa: F401
        polynomial_derivative,  # noqa: F401
        polynomial_eval,  # noqa: F401
        polynomial_from_roots,  # noqa: F401
        powerset,  # noqa: F401
        prepend,  # noqa: F401
        product_index,  # noqa: F401
        quantify,  # noqa: F401
        raise_,  # noqa: F401
        random_combination,  # noqa: F401
        random_combination_with_replacement,  # noqa: F401
        random_permutation,  # noqa: F401
        random_product,  # noqa: F401
        repeat_each,  # noqa: F401
        repeat_last,  # noqa: F401
        repeatfunc,  # noqa: F401
        reshape,  # noqa: F401
        rlocate,  # noqa: F401
        roundrobin,  # noqa: F401
        rstrip,  # noqa: F401
        run_length,  # noqa: F401
        sample,  # noqa: F401
        seekable,  # noqa: F401
        set_partitions,  # noqa: F401
        side_effect,  # noqa: F401
        sieve,  # noqa: F401
        sliced,  # noqa: F401
        sliding_window,  # noqa: F401
        sort_together,  # noqa: F401
        split_after,  # noqa: F401
        split_at,  # noqa: F401
        split_before,  # noqa: F401
        split_into,  # noqa: F401
        split_when,  # noqa: F401
        spy,  # noqa: F401
        stagger,  # noqa: F401
        strictly_n,  # noqa: F401
        strip,  # noqa: F401
        subslices,  # noqa: F401
        substrings,  # noqa: F401
        substrings_indexes,  # noqa: F401
        sum_of_squares,  # noqa: F401
        tabulate,
        tail,  # noqa: F401
        takewhile_inclusive,  # noqa: F401
        time_limited,  # noqa: F401
        totient,  # noqa: F401
        triplewise,  # noqa: F401
        unique_everseen,  # noqa: F401
        unique_in_window,  # noqa: F401
        unique_justseen,  # noqa: F401
        unique_to_each,  # noqa: F401
        unzip,  # noqa: F401
        value_chain,  # noqa: F401
        windowed,  # noqa: F401
        with_iter,  # noqa: F401
        zip_broadcast,  # noqa: F401
        zip_equal,  # noqa: F401
        zip_offset,  # noqa: F401
    )

    try:
        import tabulate as _tabulate  # noqa: F401
    except ModuleNotFoundError:
        from more_itertools import (
            tabulate,  # noqa: F401
        )

    try:
        import utilities as _utilities  # noqa: F401
    except ModuleNotFoundError:
        from more_itertools import (
            always_iterable,  # noqa: F401
            one,  # noqa: F401
            peekable,  # noqa: F401
            take,  # noqa: F401
            transpose,  # noqa: F401
            windowed_complete,  # noqa: F401
        )
