from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import streamlit as st  # noqa: F401
    from streamlit import (
        bar_chart,  # noqa: F401
        cache_data,  # noqa: F401
        checkbox,  # noqa: F401
        columns,  # noqa: F401
        container,  # noqa: F401
        dataframe,  # noqa: F401
        empty,  # noqa: F401
        error,  # noqa: F401
        form,  # noqa: F401
        form_submit_button,  # noqa: F401
        header,  # noqa: F401
        markdown,  # noqa: F401
        secrets,  # noqa: F401
        session_state,  # noqa: F401
        subheader,  # noqa: F401
        text,  # noqa: F401
        text_input,  # noqa: F401
        title,  # noqa: F401
        write,  # noqa: F401
    )
