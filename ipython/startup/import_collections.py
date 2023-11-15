from __future__ import annotations

import collections
import collections.abc  # noqa: F401
from collections import (
    ChainMap,  # noqa: F401
    Counter,  # noqa: F401
    OrderedDict,  # noqa: F401
    UserDict,  # noqa: F401
    UserList,  # noqa: F401
    UserString,  # noqa: F401
    defaultdict,  # noqa: F401
    deque,  # noqa: F401
    namedtuple,  # noqa: F401
)
from collections.abc import (
    AsyncGenerator,  # noqa: F401
    AsyncIterable,  # noqa: F401
    AsyncIterator,  # noqa: F401
    Awaitable,  # noqa: F401
    Callable,  # noqa: F401
    Collection,  # noqa: F401
    Container,  # noqa: F401
    Coroutine,  # noqa: F401
    Generator,  # noqa: F401
    Hashable,  # noqa: F401
    ItemsView,  # noqa: F401
    Iterable,  # noqa: F401
    Iterator,  # noqa: F401
    KeysView,  # noqa: F401
    Mapping,  # noqa: F401
    MappingView,  # noqa: F401
    MutableMapping,  # noqa: F401
    MutableSequence,  # noqa: F401
    MutableSet,  # noqa: F401
    Reversible,  # noqa: F401
    Sequence,  # noqa: F401
    Sized,  # noqa: F401
    ValuesView,  # noqa: F401
)
from collections.abc import (
    Set as AbstractSet,  # noqa: F401
)
from contextlib import suppress

with suppress(ImportError):  # python 3.12+
    from collections.abc import (
        Buffer,  # noqa: F401
    )
