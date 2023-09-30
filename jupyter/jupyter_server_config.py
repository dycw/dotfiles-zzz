from os import environ
from pathlib import Path

# Configuration file for jupyter-server.

config = get_config()  # type: ignore # noqa:F821


# ------------------------------------------------------------------------------
# Application(SingletonConfigurable) configuration
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# JupyterApp(Application) configuration
# ------------------------------------------------------------------------------
config.JupyterApp.answer_yes = False


# ------------------------------------------------------------------------------
# ServerApp(JupyterApp) configuration
# ------------------------------------------------------------------------------
if "JUPYTER_PUBLIC" in environ:
    _lets_encrypt = Path("/etc/letsencrypt/live/part-time.duckdns.org")
    if (_cert_file := _lets_encrypt.joinpath("fullchain.pem")).exists():
        config.ServerApp.certfile = _cert_file.as_posix()
    if (_key_file := _lets_encrypt.joinpath("privkey.pem")).exists():
        config.ServerApp.keyfile = _key_file.as_posix()
    config.ServerApp.allow_password_change = False
    config.ServerApp.ip = "*"
    config.ServerApp.open_browser = False
    config.ServerApp.password = (
        "argon2:$argon2id$v=19$m=10240,t=10,p=8$QXtzANnBeX+hW"  # noqa: S105
        "+Bci7211A$1MibEqBam7/jcQ35ynR+janFpxIwCtfIQ9Sn7YpgaLM"
    )
    config.ServerApp.port = 8888


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
# GatewayMappingKernelManager(AsyncMappingKernelManager) configuration
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# GatewayKernelSpecManager(KernelSpecManager) configuration
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# SessionManager(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# GatewaySessionManager(SessionManager) configuration
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# GatewayClient(SingletonConfigurable) configuration
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# EventLogger(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# BaseKernelWebsocketConnection(LoggingConfigurable) configuration
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# ZMQChannelsWebsocketConnection(BaseKernelWebsocketConnection) configuration
# ------------------------------------------------------------------------------
