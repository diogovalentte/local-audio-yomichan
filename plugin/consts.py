import os
from typing import Final

APP_NAME: Final = "local-audio-yomichan"
ACCESS_HOSTNAME: Final = os.getenv("ACCESS_HOSTNAME", "localhost")
BIND_HOSTNAME: Final = os.getenv("BIND_HOSTNAME", "localhost")
PORT: Final = 5050
DB_FILE_NAME: Final = "entries.db"
ANDROID_DB_FILE_NAME: Final = "android.db"
DB_VERSION_FILE_NAME: Final = "entries_version.txt"
JMDICT_FORMS_JSON_FILE_NAME: Final = "jmdict_forms.json"
DEFAULT_CONFIG_FILE_NAME: Final = "default_config.json"
CONFIG_FILE_NAME: Final = "config.json"
LATEST_VERSION_FILE_NAME: Final = "version.txt"

ROWID: Final = 0
EXPRESSION: Final = 1
READING: Final = 2
SOURCE: Final = 3
SPEAKER: Final = 4
DISPLAY: Final = 5
FILE: Final = 6
