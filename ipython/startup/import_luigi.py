from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import luigi  # noqa: F401
    from luigi import (  # noqa: F401
        BoolParameter,
        DictParameter,
        EnumParameter,
        ExternalTask,
        FloatParameter,
        IntParameter,
        LocalTarget,
        Task,
        TaskParameter,
        TupleParameter,
        WrapperTask,
        build,
    )
