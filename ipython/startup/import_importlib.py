from __future__ import annotations

import importlib  # noqa: F401
from contextlib import suppress
from importlib import (  # noqa: F401
    find_loader,
    import_module,
    invalidate_caches,
    reload,
)
from importlib.abc import (  # noqa: F401
    ExecutionLoader,
    FileLoader,
    InspectLoader,
    Loader,
    MetaPathFinder,
    PathEntryFinder,
    ResourceLoader,
)
from importlib.machinery import (  # noqa: F401
    BYTECODE_SUFFIXES,
    DEBUG_BYTECODE_SUFFIXES,
    EXTENSION_SUFFIXES,
    OPTIMIZED_BYTECODE_SUFFIXES,
    SOURCE_SUFFIXES,
    BuiltinImporter,
    ExtensionFileLoader,
    FileFinder,
    FrozenImporter,
    ModuleSpec,
    PathFinder,
    SourceFileLoader,
    SourcelessFileLoader,
    all_suffixes,
)
from importlib.util import (  # noqa: F401
    MAGIC_NUMBER,
    LazyLoader,
    cache_from_source,
    decode_source,
    find_spec,
    module_for_loader,
    module_from_spec,
    resolve_name,
    set_loader,
    set_package,
    source_from_cache,
    source_hash,
    spec_from_file_location,
    spec_from_loader,
)

with suppress(ImportError):
    from importlib.machinery import (  # noqa: F401
        NamespaceLoader,
    )
