from contextlib import suppress


with suppress(ModuleNotFoundError):
    import ray  # noqa: F401
    from ray import get  # noqa: F401
    from ray import put  # noqa: F401
    from ray import remote  # noqa: F401
    from ray import shutdown  # noqa: F401
    from ray import wait  # noqa: F401
    from ray import init as _init
    from ray.remote_function import RemoteFunction  # noqa: F401

    _init(ignore_reinit_error=True)
