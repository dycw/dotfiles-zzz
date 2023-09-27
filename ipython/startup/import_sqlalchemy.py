from contextlib import suppress

with suppress(ModuleNotFoundError):
    import sqlalchemy
    import sqlalchemy as sqla  # noqa: F401
    import sqlalchemy.orm  # noqa: F401
    from sqlalchemy import (
        BigInteger,  # noqa: F401
        Boolean,  # noqa: F401
        Column,  # noqa: F401
        DateTime,  # noqa: F401
        Float,  # noqa: F401
        ForeignKey,  # noqa: F401
        Integer,  # noqa: F401
        MetaData,  # noqa: F401
        SmallInteger,  # noqa: F401
        String,  # noqa: F401
        Table,  # noqa: F401
        Unicode,  # noqa: F401
        create_engine,  # noqa: F401
        select,  # noqa: F401
    )
    from sqlalchemy.engine import Engine  # noqa: F401
    from sqlalchemy.orm import (
        Session,  # noqa: F401
        declarative_base,  # noqa: F401
        relationship,  # noqa: F401
        sessionmaker,  # noqa: F401
    )
