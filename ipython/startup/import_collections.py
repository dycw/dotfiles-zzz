from __future__ import annotations

import collections
import collections.abc  # noqa: F401
from collections import (  # noqa: F401
    ChainMap,
    Counter,
    OrderedDict,
    UserDict,
    UserList,
    UserString,
    defaultdict,
    deque,
    namedtuple,
)
from collections.abc import (  # noqa: F401
    AsyncGenerator,
    AsyncIterable,
    AsyncIterator,
    Awaitable,
    Callable,
    Collection,
    Container,
    Coroutine,
    Generator,
    Hashable,
    ItemsView,
    Iterable,
    Iterator,
    KeysView,
    Mapping,
    MappingView,
    MutableMapping,
    MutableSequence,
    MutableSet,
    Reversible,
    Sequence,
    Sized,
    ValuesView,
)
from collections.abc import (  # noqa: F401
    Set as AbstractSet,
)
from contextlib import suppress

with suppress(ImportError):  # python 3.12+
    from collections.abc import (  # noqa: F401
        Buffer,
    )
