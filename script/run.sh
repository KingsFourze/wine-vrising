/usr/bin/python3 /script/create_enviroment.py

WINEARCH=win64
WINEPREFIX=/wine

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24:32' wine64 /server/VRisingServer.exe -persistentDataPath /data
