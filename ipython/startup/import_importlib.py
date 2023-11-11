from __future__ import annotations

import importlib  # noqa: F401
from contextlib import suppress
from importlib import (
    find_loader,  # noqa: F401
    import_module,  # noqa: F401
    invalidate_caches,  # noqa: F401
    reload,  # noqa: F401
)
from importlib.abc import (
    ExecutionLoader,  # noqa: F401
    FileLoader,  # noqa: F401
    InspectLoader,  # noqa: F401
    Loader,  # noqa: F401
    MetaPathFinder,  # noqa: F401
    PathEntryFinder,  # noqa: F401
    ResourceLoader,  # noqa: F401
)
from importlib.machinery import (
    BYTECODE_SUFFIXES,  # noqa: F401
    DEBUG_BYTECODE_SUFFIXES,  # noqa: F401
    EXTENSION_SUFFIXES,  # noqa: F401
    OPTIMIZED_BYTECODE_SUFFIXES,  # noqa: F401
    SOURCE_SUFFIXES,  # noqa: F401
    BuiltinImporter,  # noqa: F401
    ExtensionFileLoader,  # noqa: F401
    FileFinder,  # noqa: F401
    FrozenImporter,  # noqa: F401
    ModuleSpec,  # noqa: F401
    PathFinder,  # noqa: F401
    SourceFileLoader,  # noqa: F401
    SourcelessFileLoader,  # noqa: F401
    all_suffixes,  # noqa: F401
)
from importlib.util import (
    MAGIC_NUMBER,  # noqa: F401
    LazyLoader,  # noqa: F401
    cache_from_source,  # noqa: F401
    decode_source,  # noqa: F401
    find_spec,  # noqa: F401
    module_for_loader,  # noqa: F401
    module_from_spec,  # noqa: F401
    resolve_name,  # noqa: F401
    set_loader,  # noqa: F401
    set_package,  # noqa: F401
    source_from_cache,  # noqa: F401
    source_hash,  # noqa: F401
    spec_from_file_location,  # noqa: F401
    spec_from_loader,  # noqa: F401
)

with suppress(ImportError):
    from importlib.machinery import (
        NamespaceLoader,  # noqa: F401
    )
