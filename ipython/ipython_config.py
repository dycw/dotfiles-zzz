from __future__ import annotations


c = get_config()  # type: ignore # noqa: F821

# ------------------------------------------------------------------------------
# InteractiveShellApp(Configurable) configuration
# ------------------------------------------------------------------------------
c.InteractiveShellApp.exec_lines = ["%autoreload 2"]
c.InteractiveShellApp.extensions = ["autoreload"]
try:
    import scalene  # noqa: F401
except ModuleNotFoundError:
    pass
else:
    c.InteractiveShellApp.extensions.append("scalene")

# ------------------------------------------------------------------------------
# Application(SingletonConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# BaseIPythonApplication(Application) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# TerminalIPythonApp(BaseIPythonApplication, InteractiveShellApp) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# InteractiveShell(SingletonConfigurable) configuration
# ------------------------------------------------------------------------------
c.InteractiveShell.ast_node_interactivity = "all"
c.InteractiveShell.autocall = 1
c.InteractiveShell.autoindent = True
c.InteractiveShell.automagic = True
c.InteractiveShell.show_rewritten_input = True

# ------------------------------------------------------------------------------
# TerminalInteractiveShell(InteractiveShell) configuration
# ------------------------------------------------------------------------------
c.TerminalInteractiveShell.confirm_exit = True
c.TerminalInteractiveShell.editing_mode = "vi"
c.TerminalInteractiveShell.highlight_matching_brackets = True
c.TerminalInteractiveShell.prompt_includes_vi_mode = True

# ------------------------------------------------------------------------------
# HistoryAccessor(HistoryAccessorBase) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# HistoryManager(HistoryAccessor) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# ProfileDir(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# BaseFormatter(Configurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# PlainTextFormatter(BaseFormatter) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Completer(Configurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# IPCompleter(Completer) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# ScriptMagics(Magics) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# LoggingMagics(Magics) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# StoreMagics(Magics) configuration
# ------------------------------------------------------------------------------
