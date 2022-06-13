from contextlib import suppress

with suppress(ModuleNotFoundError):
    import humanize  # noqa: F401
    from humanize import fractional  # noqa: F401
    from humanize import intcomma  # noqa: F401
    from humanize import intword  # noqa: F401
    from humanize import naturaldate  # noqa: F401
    from humanize import naturalday  # noqa: F401
    from humanize import naturaldelta  # noqa: F401
    from humanize import naturalsize  # noqa: F401
    from humanize import naturaltime  # noqa: F401
    from humanize import precisedelta  # noqa: F401
