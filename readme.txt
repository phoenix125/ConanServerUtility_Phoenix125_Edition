ConanServerUtility_Phoenix125_Edition - A Utility to Keep Your Conan Exiles Dedicated Server updated (and schedule server restarts, download and install new server files, and more!)
- Latest version: ConanServerUtility_Phoenix125_Edition_v1.3.6 (2022-09-04)
- By Phoenix125 | http://www.Phoenix125.com | http://discord.gg/EU7pzPs | kim@kim125.com
- A slightly modified version of Dateranoth's ConanExilesServerUtility-3.2.3 | https://gamercide.org/

-----------------
 GETTING STARTED (Two sets of instructions: one for existing servers and the other to use the ConanServerUtility_Phoenix125_Edition tool to download and install a new dedicated server)
-----------------

EXISTING SERVER:
1) Run ConanServerUtility_Phoenix125_Edition.exe
- The file "ConanServerUtility.ini" will be created and the program will exit.
2) Modify the default values in "ConanServerUtility.ini" to match your server's settings.
3) Run ConanServerUtility_Phoenix125_Edition.exe again.
- It will validate your files, install any updates, and start the server.
4) Your server should be up-to-date and running! 

FRESH SERVER: Use ConanServerUtility_Phoenix125_Edition to download install a fresh dedicated server
1) Run ConanServerUtility_Phoenix125_Edition.exe
- The file "ConanServerUtility.ini" will be created and the program will exit.
2) Open the "ConanServerUtility.ini" with Notepad and modify any desired settings. The default settings will work in most instances for drive D:
3) Run ConanServerUtility_Phoenix125_Edition.exe again.
- All the required files will be downloaded and installed.
4) Congrats! Your new server is running.

------------
 KNOWN BUGS
------------
- None reported at this time

--------------
 INSTRUCTIONS
-------------- 
To shut down your server:
- Right-click on the ConanServerUtility_Phoenix125_Edition icon and select EXIT.
To restart your server:
- Run ConanServerUtility_Phoenix125_Edition.exe

----------
 FEATURES
----------
This Phoenix125 Edition has a few minor new features added to Dateranoth's original ConanServerUtility v3.2.3:
1. The option to enable/disable SERVER UPDATE announcements prior to a server restart.
2. The option to enable/disable SERVER SCHEDULED restart announcements prior to a server restart.
3. The option to enable/disable MOD UPDATE announcements prior to a server restart.
* Why these minor features?  I wanted my Discord users to be notified of mod or server updates, but not be spammed with daily server restarts.
4. The ability to run an external script before and/or AFTER steamcmd file validation: added by request.
5. Simplified the .ini file.

Features already included from Dateranoth's original ConanServerUtility v3.2.3:
- OK to use with most other server managers: Use this tool to install and maintain the server and use your other tools to manage game play features.
- Automatically download and install a new Conan Exiles Dedicated Server and MODS: No need to do it manually.
- Automatically keeps server and mods updated.
- Announce server updates and/or restarts in game, on Discord and/or Twitch.
- KeepServerAlive: Detects server crashes and will restart the server.
- Enable Avatars by scheduled time.
- Enable building damage schedule time.
- User-defined scheduled reboots.
- Remote restart (via web browser).
- Run multiple instances of ConanServerUtil_Phoenix125_Edition to manage multiple servers.
- Clean shutdown of your server.
- Optionally restart server on excessive memory use.
- Optionally run external scripts before and/or after steamcmd updates.

---------------------------
 UPCOMING PLANNED FEATURES
---------------------------
- Create a GUI interface for modifying the .ini file

----------------
 DOWNLOAD LINKS
----------------
Latest Version: 	http://www.phoenix125.com/share/conan/ConanServerUtility_Phoenix125_Edition.zip
Source Code (AutoIT): 	http://www.phoenix125.com/share/conan/ConanServerUtility_Phoenix125_Edition.au3
GitHub:			https://github.com/phoenix125/ConanServerUtility_Phoenix125_Edition

Website: http://www.Phoenix125.com
Discord: http://discord.gg/EU7pzPs

---------
 CREDITS
---------
- Based on Dateranoth's ConanExilesServerUtility-3.2.3 (THANK YOU!)
https://gamercide.org/forum/topic/10558-conan-exiles-server-utility/

-----------------
 VERSION HISTORY
-----------------
(2022-09-04) v1.3.6 Added Online Player accounement
- Added: Optional Players Online Count in Discord
- Added: Optional Steam Query Check for crashed server
- Fixed: SteamCMD update: moved +login before +force_install_dir

(2019-08-25) v1.3.5 Bug fix.
- Fixed: "Line 4029" error. (Thanks to Dead Duck for reporting)

(2019-08-22) v1.3.4 Added Remote Restart Announcements & SteamCMD login
- Added: Added announcement options for Remote Restart. (Thanks to MG_Gimpy for requesting)
- Added: Optional SteamCMD login credentials to help with mod updates.
- Fixed: Several restart options that would cause errors.

[ New Config Parameters/Changes ]
Message to Announce Server Restarts on Discord and Twitch (if enabled)? -> AnnounceRemoteRestartMessage
Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no) -> UseDiscordBotRemoteRestart
Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no) -> UseTwitchBotRemoteRestart
Send In Game Message to Announce Scheduled/Update Restarts? (yes/no) -> UseInGameRemoteRestart
SteamCMD Login Settings -> SteamLoginName (Leave blank for anonymous)
SteamCMD Login Settings -> SteamLoginPassword

(2019-08-20) v1.3.3
- Fixed: Line 4522 Error: Variable used without being declared. (Thanks to MG_Gimpy [SBS] for reporting)

(2019-04-29) v1.3.2
- Fixed: Line 4601 Error: Error in expression.

(2019-03-28) v1.3.1
- Added: Option to fully restart the utility during Conan updates. .ini file: [Restart Utility With Updates? (yes/no)] , restartutility=yes 

(2019-01-25) v1.3
- Fixed: A condition that causes continuous update loops. (It now deletes the appmanifest_443030.acf file when server update needed and forces validate)

(2019-01-11) v1.2
- Fixed: Error announcing mod updates to Discord

(2019-01-10) v1.1
- Added separate announcement options for mod updates and server updates.
- Fixed: Server would restart with each update check, even if server was up-to-date.
- Simplified the .ini file: Changed "MCRCON" wording to "In Game" for announcements and eliminated the need to assign a directory for mcrcon.

(2019-01-09) v1.0 Initial Release
This Phoenix125 Edition has two new features added to Dateranoth's original ConanServerUtility:
1. The ability to announce server/mod updates AND / OR scheduled restarts. I wanted my Discord users to be notified of updates, but not be spammed with daily server restarts.
2. The ability to run an external script before and/or AFTER steamcmd file validation: added by request.
- OK to use with most other server managers: Use this tool to install and maintain the server and use your other tools to manage game play features.
- Automatically download and install a new Conan Exiles Dedicated Server: No need to do it manually.
- Automatically keeps server updated.
- Announce server updates and/or restarts in game, on Discord and Twitch.
- KeepServerAlive: Detects server crashes and will restart the server.
- User-defined scheduled reboots.
- Remote restart (via web browser).
- Run multiple instances of ConanServerUtil_Phoenix125_Edition to manage multiple servers.
- Clean shutdown of your server.
- Optionally restart server on excessive memory use.
