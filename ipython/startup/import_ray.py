from contextlib import suppress

with suppress(ModuleNotFoundError):
    import ray  # noqa: F401
    from ray import (
        get,  # noqa: F401
        put,  # noqa: F401
        remote,  # noqa: F401
        shutdown,  # noqa: F401
        wait,  # noqa: F401
    )
    from ray import init as _init
    from ray.remote_function import RemoteFunction  # noqa: F401

    _init(ignore_reinit_error=True)
