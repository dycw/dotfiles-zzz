config = get_config()  # type: ignore # noqa:F821

# ------------------------------------------------------------------------------
# Application(SingletonConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# JupyterApp(Application) configuration
# ------------------------------------------------------------------------------
config.JupyterApp.answer_yes = True

# ------------------------------------------------------------------------------
# ServerApp(JupyterApp) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# ConnectionFileMixin(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# KernelManager(ConnectionFileMixin) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Session(Configurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# MultiKernelManager(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# MappingKernelManager(MultiKernelManager) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# KernelSpecManager(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# AsyncMultiKernelManager(MultiKernelManager) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# AsyncMappingKernelManager(MappingKernelManager, AsyncMultiKernelManager) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# ContentsManager(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# FileManagerMixin(Configurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# FileContentsManager(FileManagerMixin, ContentsManager) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# AsyncContentsManager(ContentsManager) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# AsyncFileManagerMixin(FileManagerMixin) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# AsyncFileContentsManager(FileContentsManager, AsyncFileManagerMixin,
#                          AsyncContentsManager) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# NotebookNotary(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# GatewayKernelManager(AsyncMappingKernelManager) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# GatewayKernelSpecManager(KernelSpecManager) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# GatewayClient(SingletonConfigurable) configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# TerminalManager(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------