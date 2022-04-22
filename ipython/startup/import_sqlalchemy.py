from contextlib import suppress


with suppress(ModuleNotFoundError):
    import sqlalchemy  # noqa: F401
    import sqlalchemy as sqla  # noqa: F401
    from sqlalchemy import BigInteger  # noqa: F401
    from sqlalchemy import Column  # noqa: F401
    from sqlalchemy import DateTime  # noqa: F401
    from sqlalchemy import Float  # noqa: F401
    from sqlalchemy import ForeignKey  # noqa: F401
    from sqlalchemy import Integer  # noqa: F401
    from sqlalchemy import MetaData  # noqa: F401
    from sqlalchemy import SmallInteger  # noqa: F401
    from sqlalchemy import String  # noqa: F401
    from sqlalchemy import Table  # noqa: F401
    from sqlalchemy import Unicode  # noqa: F401
    from sqlalchemy import create_engine  # noqa: F401
    from sqlalchemy import select  # noqa: F401
    from sqlalchemy.orm import Session  # noqa: F401
    from sqlalchemy.orm import declarative_base  # noqa: F401
    from sqlalchemy.orm import relationship  # noqa: F401
    from sqlalchemy.orm import sessionmaker  # noqa: F401
