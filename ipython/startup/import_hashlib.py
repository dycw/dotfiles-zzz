from __future__ import annotations

import hashlib  # noqa: F401
from contextlib import suppress
from hashlib import (
    algorithms_available,  # noqa: F401
    algorithms_guaranteed,  # noqa: F401
    blake2b,  # noqa: F401
    blake2s,  # noqa: F401
    md5,  # noqa: F401
    new,  # noqa: F401
    pbkdf2_hmac,  # noqa: F401
    scrypt,  # noqa: F401
    sha1,  # noqa: F401
    sha3_224,  # noqa: F401
    sha3_256,  # noqa: F401
    sha3_384,  # noqa: F401
    sha3_512,  # noqa: F401
    sha224,  # noqa: F401
    sha256,  # noqa: F401
    sha384,  # noqa: F401
    sha512,  # noqa: F401
    shake_128,  # noqa: F401
    shake_256,  # noqa: F401
)

with suppress(ImportError):
    from hashlib import (
        file_digest,  # noqa: F401
    )
