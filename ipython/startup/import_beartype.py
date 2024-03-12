from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from beartype import (  # noqa: F401
        beartype,
    )
    from beartype.door import (  # noqa: F401
        die_if_unbearable,
    )
    from beartype.vale import (  # noqa: F401
        Is,
        IsAttr,
        IsEqual,
        IsSubclass,
    )
