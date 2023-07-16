import os, subprocess

def download_or_upgrade():
    subprocess.run(["steamcmd", "+@sSteamCmdForcePlatformType", "windows", "+force_install_dir", "/server", "+login", "anonymous", "+app_update", "1829350", "+exit"])

def main():
    if not os.path.exists("/server"):
        print("[INFO] No Server Folder Exists. Create a folder at /server and Try to download server.")
        os.mkdir("/server")
    else:
        print("[INFO] Server Folder Exists. Try to upgrade server.")

    download_or_upgrade()

    if not os.path.exists("/data"):
        print("[INFO] No Data Folder Exists. Create a folder at /data.")
        os.mkdir("/data")

    if not os.path.exists("/wine"):
        print("[INFO] No Wine Folder Exists. Create a folder at /wine.")
        os.mkdir("/wine")

    print("[INFO] Startup Check Done!")

main()
