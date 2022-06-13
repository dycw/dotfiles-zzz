from contextlib import suppress

with suppress(ModuleNotFoundError):
    from beartype import beartype  # noqa: F401
    from beartype.vale import Is  # noqa: F401
    from beartype.vale import IsAttr  # noqa: F401
    from beartype.vale import IsEqual  # noqa: F401
    from beartype.vale import IsSubclass  # noqa: F401
