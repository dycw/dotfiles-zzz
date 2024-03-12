from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import sqlalchemy
    import sqlalchemy as sqla  # noqa: F401
    import sqlalchemy.orm  # noqa: F401
    from sqlalchemy import (  # noqa: F401
        BigInteger,
        Boolean,
        Column,
        DateTime,
        Float,
        ForeignKey,
        Integer,
        MetaData,
        SmallInteger,
        String,
        Table,
        Unicode,
        create_engine,
        select,
    )
    from sqlalchemy.engine import (  # noqa: F401
        Engine,
    )
    from sqlalchemy.orm import (  # noqa: F401
        Session,
        declarative_base,
        relationship,
        sessionmaker,
    )
