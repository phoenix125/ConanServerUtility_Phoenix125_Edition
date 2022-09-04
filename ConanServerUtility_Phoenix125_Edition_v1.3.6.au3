#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=resources\phoenix_5Vq_icon.ico
#AutoIt3Wrapper_Outfile=builds\ConanServerUtility_Phoenix125_Edition_v1.3.6.exe
#AutoIt3Wrapper_Outfile_x64=builds\ConanServerUtility_Phoenix125_Edition_v1.3.6.exe
#AutoIt3Wrapper_Res_Comment=By Dateranoth - June 18, 2018 - Modded by Phoenix125.com
#AutoIt3Wrapper_Res_Description=Utility for Running Conan Server
#AutoIt3Wrapper_Res_Fileversion=1.3.6.0
#AutoIt3Wrapper_Res_LegalCopyright=Phoenix125.com @ http://www.Phoenix125.com & Dateranoth @ https://gamercide.com
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Run_Tidy=y
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/mo
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

;Version:1.3.6 (2022-09-04)
;**** Directives created by AutoIt3Wrapper_GUI ****
;Originally written by Dateranoth for use
;by https://gamercide.com on their server
;Distributed Under GNU GENERAL PUBLIC LICENSE

;RCON notifications will download external application mcrcon if enabled.
;Tiiffi/mcrcon is licensed under the zlib License
;https://github.com/Tiiffi/mcrcon/blob/master/LICENSE
;https://github.com/Tiiffi/mcrcon

#include <Date.au3>
#include <Array.au3>

#Region ;**** Global Variables ****
Global $aGameName = "Conan"
Global $aUtilVerNumber = 1
Global $g_sTimeCheck0 = _NowCalc()
Global $g_sTimeCheck1 = _NowCalc()
Global $g_sTimeCheck2 = _NowCalc()
Global $g_sTimeCheck3 = _NowCalc()
Global $g_sTimeCheck4 = _NowCalc()
Global Const $aUtilName = $aGameName & "ServerUtility_Phoenix125-Edition"
Global Const $g_c_sServerEXE = "ConanSandboxServer-Win64-Test.exe"
Global Const $g_c_sPIDFile = @ScriptDir & "\ConanServerUtility_lastpid_tmp"
Global Const $g_c_sHwndFile = @ScriptDir & "\ConanServerUtility_lasthwnd_tmp"
Global Const $g_c_sMODIDFile = @ScriptDir & "\ConanServerUtility_modid2modname.ini"
Global $aFolderLog = @ScriptDir & "\_Log\"
DirCreate($aFolderLog)
Global Const $g_c_sLogFile = $aFolderLog & "ConanServerUtility.log"
Global Const $g_c_sIniFile = @ScriptDir & "\ConanServerUtility.ini"
Global $g_iBeginDelayedShutdown = 0
Global $g_sServerSettingIniLoc = "\ConanSandbox\saved\Config\WindowsServer\ServerSettings.ini"
Global $aValidate = "no"
Global $aBotMsg = ""
Global $aFolderTemp = @ScriptDir & "\" & $aUtilName & "UtilFiles\"
DirCreate($aFolderTemp)
Global $aUtilCFGFile = $aFolderTemp & $aUtilName & "_cfg.ini"
Global $aServerQueryName = ""
Global $aPlayersCount = 0
Global $aMaxPlayers = 0

Global $aCFGLastVerNumber = IniRead($aUtilCFGFile, "CFG", "LastVerNumber", 0)
IniWrite($aUtilCFGFile, "CFG", "LastVerNumber", $aUtilVerNumber)
$aIniFile = $g_c_sIniFile
Local $tUpdatedINI = False
If $aCFGLastVerNumber < 1 Then
	Global $sUseDiscordBotUpdate = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotUPDATE", "no")
	Global $sDiscordWebHookURLs = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordWebHookURL", "https://discordapp.com/api/webhooks/XXXXXX/XXXX<-NO TRAILING SLASH AND USE FULL URL FROM WEBHOOK URL ON DISCORD")
	Global $bDiscordBotUseTTS = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotUseTTS", "no")
	Global $sDiscordBotAvatar = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotAvatarLink", "http://www.phoenix125.com/share/Discord/DiscordAvatarConanExiles.png")
	$sDiscordPlayersAnounceChangeYN = $sUseDiscordBotUpdate
	$sDiscordPlayersMsg = "Players Online: ** \o / \m**"
	$sDiscordPlayersWH = $sDiscordWebHookURLs
	$sDiscordPlayersBotName = "Conan Exiles Players Bot"
	$bDiscordPlayersBotUseTTS = $bDiscordBotUseTTS
	$sDiscordPlayersBotAvatar = $sDiscordBotAvatar
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Use Discord to Announce Discord Online Player Changes? (yes/no)", $sDiscordPlayersAnounceChangeYN)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Online Player Message (\o - Online Player Count, \m - Max Players)", $sDiscordPlayersMsg)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Discord WebHook URL", $sDiscordPlayersWH)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Name", $sDiscordPlayersBotName)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Use TTS (yes/no)", $bDiscordPlayersBotUseTTS)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Avatar URL", $sDiscordPlayersBotAvatar)
	IniWrite($aIniFile, "Steam Query Check for Running Server", "Use Steam query as additional check for running vs stuck server? (yes/no)", "yes")
	IniWrite($aIniFile, "Steam Query Check for Running Server", "Query IP (generally use 127.0.0.1)", "127.0.0.1")
	IniWrite($aIniFile, "Steam Query Check for Running Server", "Check query every _ seconds", 15)
	$tUpdatedINI = True
EndIf
If $tUpdatedINI Then
	ReadUini($aIniFile, $g_c_sLogFile)
	FileDelete($aIniFile)
	UpdateIni($aIniFile)
EndIf

; ===================================================================================================
If FileExists($g_c_sPIDFile) Then
	Global $g_sConanPID = FileRead($g_c_sPIDFile)
Else
	Global $g_sConanPID = "0"
EndIf
If FileExists($g_c_sHwndFile) Then
	Global $g_hConanhWnd = HWnd(FileRead($g_c_sHwndFile))
Else
	Global $g_hConanhWnd = "0"
EndIf
#EndRegion ;**** Global Variables ****

#Region ;**** Startup Checks. Initial Log, Read INI, Check for Correct Paths, Check Remote Restart is bound to port. ****
OnAutoItExitRegister("Gamercide")
SplashTextOn("ConanServerUtil", "ConanServerUtility_Phoenix125_Edition started.", 500, 50, -1, -1, $DLG_MOVEABLE, "")
FileWriteLine($g_c_sLogFile, _NowCalc() & " ============================ " & $aUtilName & " Started ============================")
ReadUini($g_c_sIniFile, $g_c_sLogFile)

If $UseSteamCMD = "yes" Then
	Local $sFileExists = FileExists($steamcmddir & "\steamcmd.exe")
	If $sFileExists = 0 Then
		InetGet("https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip", @ScriptDir & "\steamcmd.zip", 0)
		DirCreate($steamcmddir) ; to extract to
		_ExtractZip(@ScriptDir & "\steamcmd.zip", "", "steamcmd.exe", $steamcmddir)
		FileDelete(@ScriptDir & "\steamcmd.zip")
		FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD. [steamcmd.exe +quit]")
		RunWait("" & $steamcmddir & "\steamcmd.exe +quit")
		If Not FileExists($steamcmddir & "\steamcmd.exe") Then
			MsgBox(0x0, "SteamCMD Not Found", "Could not find steamcmd.exe at " & $steamcmddir)
			Exit
		EndIf
	EndIf
	Local $sManifestExists = FileExists($steamcmddir & "\steamapps\appmanifest_443030.acf")
	If $sManifestExists = 1 Then
		Local $manifestFound = MsgBox(4100, "Warning", "Install manifest found at " & $steamcmddir & "\steamapps\appmanifest_443030.acf" & @CRLF & @CRLF & "Suggest moving file to " & _
				$serverdir & "\steamapps\appmanifest_443030.acf before running SteamCMD" & @CRLF & @CRLF & "Would you like to Exit Now?", 20)
		If $manifestFound = 6 Then
			Exit
		EndIf
	EndIf
	If $g_sUpdateMods = "yes" Then
		Local Const $sModManifest = "\steamapps\workshop\appworkshop_440900.acf"
		If FileExists($serverdir & $sModManifest) And Not FileExists($g_c_sMODIDFile) Then
			Local $ModListNotFound = MsgBox(4100, "Warning", "Existing Mods found, but there is no Mod ID to Mod Name file. If you continue all of your mods will be downloaded again " & _
					"so modlist.txt can be ordered properly. Exit and refer to README if you don't wish to download mods again." & @CRLF & @CRLF & "Continue? (Press No to Exit)")
			If $ModListNotFound = 6 Then
				FileMove($serverdir & $sModManifest, $serverdir & $sModManifest & ".BAK", 9)
				FileWrite($g_c_sMODIDFile, "[File for Matching Mod to Name]")
				IniWrite($g_c_sMODIDFile, "MODID2MODNAME", "EXAMPLE_MODID", "EXAMPLE_MODNAME.pak")
			Else
				FileWrite($g_c_sMODIDFile, "[File for Matching Mod to Name]")
				IniWrite($g_c_sMODIDFile, "MODID2MODNAME", "EXAMPLE_MODID", "EXAMPLE_MODNAME.pak")
				Exit
			EndIf

		EndIf
	EndIf
Else
	Local $cFileExists = FileExists($serverdir & "\ConanSandboxServer.exe")
	If $cFileExists = 0 Then
		MsgBox(0x0, "Conan Server Not Found", "Could not find ConanSandboxServer.exe at " & $serverdir)
		Exit
	EndIf
EndIf

If ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
	Local $sFileExists = FileExists(@ScriptDir & "\mcrcon.exe")
	If $sFileExists = 0 Then
		FileWriteLine($g_c_sLogFile, _NowCalc() & " Downloaded and installed mcrcon.exe")
		InetGet("https://github.com/Tiiffi/mcrcon/releases/download/v0.0.5/mcrcon-0.0.5-windows.zip", @ScriptDir & "\mcrcon.zip", 0)
		DirCreate(@ScriptDir) ; to extract to
		_ExtractZip(@ScriptDir & "\mcrcon.zip", "", "mcrcon.exe", @ScriptDir)
		FileDelete(@ScriptDir & "\mcrcon.zip")
		If Not FileExists(@ScriptDir & "\mcrcon.exe") Then
			MsgBox(0x0, "MCRCON Not Found", "Could not find mcrcon.exe at " & @ScriptDir)
			Exit
		EndIf
	EndIf
EndIf

If $g_sExecuteExternalScript = "yes" Then
	Local $sFileExists = FileExists($g_sExternalScriptDir & "\" & $g_sExternalScriptName)
	If $sFileExists = 0 Then
		SplashOff()
		Local $ExtScriptNotFound = MsgBox(4100, "External BEFORE Update Script Not Found", "Could not find " & $g_sExternalScriptDir & "\" & $g_sExternalScriptName & @CRLF & "Would you like to Exit Now to fix?", 20)
		If $ExtScriptNotFound = 6 Then
			Exit
		Else
			$g_sExecuteExternalScript = "no"
			FileWriteLine($g_c_sLogFile, _NowCalc() & " External BEFORE Update Script Execution Disabled - Could not find " & $g_sExternalScriptDir & "\" & $g_sExternalScriptName)
		EndIf
	EndIf
EndIf

If $g_sExecuteExternalScriptValidate = "yes" Then
	Local $sFileExists = FileExists($g_sExternalScriptDirValidate & "\" & $g_sExternalScriptNameValidate)
	If $sFileExists = 0 Then
		SplashOff()
		Local $ExtScriptNotFound = MsgBox(4100, "External AFTER Update Script Not Found", "Could not find " & $g_sExternalScriptDirValidate & "\" & $g_sExternalScriptNameValidate & @CRLF & "Would you like to Exit Now to fix?", 20)
		If $ExtScriptNotFound = 6 Then
			Exit
		Else
			$g_sExecuteExternalScriptValidate = "no"
			FileWriteLine($g_c_sLogFile, _NowCalc() & " External AFTER Update Script Execution Disabled - Could not find " & $g_sExternalScriptDirValidate & "\" & $g_sExternalScriptNameValidate)
		EndIf
	EndIf
EndIf

If $UseRemoteRestart = "yes" Then
	; Start The TCP Services
	TCPStartup()
	Local $MainSocket = TCPListen($g_IP, $g_Port, 100)
	If $MainSocket = -1 Then
		MsgBox(0x0, "TCP Error", "Could not bind to [" & $g_IP & "] Check server IP or disable Remote Restart in INI")
		FileWriteLine($g_c_sLogFile, _NowCalc() & " Remote Restart Enabled. Could not bind to " & $g_IP & ":" & $g_Port)
		Exit
	Else
		FileWriteLine($g_c_sLogFile, _NowCalc() & " Remote Restart Enabled. Listening for Restart Request at " & $g_IP & ":" & $g_Port)
	EndIf
EndIf
#EndRegion ;**** Startup Checks. Initial Log, Read INI, Check for Correct Paths, Check Remote Restart is bound to port. ****
SplashOff()
Global $gQueryTimeCheck0 = _DateAdd('h', -2, _NowCalc())
While True ;**** Loop Until Closed ****
	#Region ;**** Listen for Remote Restart Request ****
	If $UseRemoteRestart = "yes" Then
		Local $sRestart = _RemoteRestart($MainSocket, $RestartCode, $g_sRKey, $sObfuscatePass, $g_IP, $ServerName, $g_bDebug)
		Switch @error
			Case 0
				If ProcessExists($g_sConanPID) And ($g_iBeginDelayedShutdown = 0) Then
					Local $MEM = ProcessGetStats($g_sConanPID, 0)
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [Work Memory:" & $MEM[0] & " | Peak Memory:" & $MEM[1] & "] " & $sRestart)
					If ($sUseDiscordBotRemoteRestart = "yes") Or ($sUseTwitchBotRemoteRestart = "yes") Or ($g_sUseInGameRemoteRestart = "yes") Then
						$aBotMsg = $sAnnounceRemoteRestartMessage
						$g_iBeginDelayedShutdown = 1
						$g_sTimeCheck0 = _NowCalc
					Else
						CloseServer()
					EndIf
				EndIf
			Case 1 To 4
				FileWriteLine($g_c_sLogFile, _NowCalc() & " " & $sRestart & @CRLF)
		EndSwitch
	EndIf
	#EndRegion ;**** Listen for Remote Restart Request ****
	If ($aQueryYN = "yes") And (_DateDiff('s', $gQueryTimeCheck0, _NowCalc()) >= $aQueryCheckSec) Then
		$tQueryResponseOK = _QueryCheck()
		$gQueryTimeCheck0 = _NowCalc()
	EndIf
	#Region ;**** Keep Server Alive Check. ****
	If Not ProcessExists($g_sConanPID) Then
		$g_iBeginDelayedShutdown = 0
		If $g_sExecuteExternalScript = "yes" Then
			FileWriteLine($g_c_sLogFile, _NowCalc() & " Executing External Script " & $g_sExternalScriptDir & "\" & $g_sExternalScriptName)
			RunWait($g_sExternalScriptDir & '\' & $g_sExternalScriptName, $g_sExternalScriptDir)
			FileWriteLine($g_c_sLogFile, _NowCalc() & " External Script Finished. Continuing Server Start.")
		EndIf
		SteamcmdDelete($steamcmddir)
		If $validategame = "yes" Or $aValidate = "yes" Then
			Global $aValidate = "no"
			If $g_sSteamLoginName = "" Then
				Local $tCMD3 = "" & $steamcmddir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +force_install_dir """ & $serverdir & """ +login anonymous +app_update 443030 validate +quit"
			Else
				Local $tCMD3 = "" & $steamcmddir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +force_install_dir """ & $serverdir & """ +login " & $g_sSteamLoginName & " " & $g_sSteamLoginPassword & " +app_update 443030 validate +quit"
			EndIf
			If $g_bDebug Then
				FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD with validate: " & $tCMD3)
			Else
				FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD with validate.")
			EndIf
			RunWait($tCMD3)
			SplashOff()
			Sleep(2000)
		Else
			If $g_sSteamLoginName = "" Then
				Local $tCMD4 = "" & $steamcmddir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +force_install_dir """ & $serverdir & """ +login anonymous +app_update 443030 +quit"
			Else
				Local $tCMD4 = "" & $steamcmddir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +force_install_dir """ & $serverdir & """ +login " & $g_sSteamLoginName & " " & $g_sSteamLoginPassword & " +app_update 443030 +quit"
			EndIf
			If $g_bDebug Then
				FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD without validate: " & $tCMD4)
			Else
				FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD without validate.")
			EndIf
			RunWait($tCMD4)
			SplashOff()
			Sleep(2000)
		EndIf
		If $g_sUpdateMods = "yes" Then
			CheckMod($g_sMods, $steamcmddir, $serverdir)
		EndIf
		If $g_bIniOverwriteFix Then
			DeleteDefaultINI()
		EndIf
		Local $sCurrentAdminPass = IniRead($serverdir & $g_sServerSettingIniLoc, "ServerSettings", "AdminPassword", "")
		If $sCurrentAdminPass <> $AdminPass Then
			ChangeSetting($serverdir & $g_sServerSettingIniLoc, "ServerSettings", "AdminPassword", $AdminPass)
		EndIf
		Local $sCurrentServerPass = IniRead($serverdir & "\ConanSandbox\saved\Config\WindowsServer\Engine.ini", "OnlineSubsystemSteam", "ServerPassword", "")
		If $sCurrentServerPass <> $ServerPass Then
			ChangeSetting($serverdir & "\ConanSandbox\saved\Config\WindowsServer\Engine.ini", "OnlineSubsystemSteam", "ServerPassword", $ServerPass)
		EndIf
		If $g_sEnableBuildingDmgSchedule = "yes" Then
			RaidCheck($g_bFlipBuildingDmgSchedule)
		EndIf
		If $g_sEnableAvatarSchedule = "yes" Then
			AvatarCheck($g_bFlipAvatarSchedule)
		EndIf
		If StringLen($g_sExtraServerCommands) > 0 Then
			$g_sExtraServerCommands = " " & $g_sExtraServerCommands
		EndIf
		If $BindIP = "no" Then
			$g_sConanPID = Run("" & $serverdir & "\ConanSandbox\Binaries\Win64\" & $g_c_sServerEXE & " ConanSandBox -Port=" & $GamePort & " -QueryPort=" & $QueryPort & " -RconEnabled=" & $g_iRconEnabled & " -RconPassword=" & $g_sRconPass & " -RconPort=" & $g_iRconPort & " -MaxPlayers=" & $MaxPlayers & " -ServerName=""" & $ServerName & """ -listen -nosteamclient -game -server -log" & $g_sExtraServerCommands)
			If $g_bDebug Then
				FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server started [" & $g_c_sServerEXE & " ConanSandBox -Port=" & $GamePort & " -QueryPort=" & $QueryPort & " -RconEnabled=" & $g_iRconEnabled & " -RconPassword=" & ObfPass($g_sRconPass) & " -RconPort=" & $g_iRconPort & " -MaxPlayers=" & $MaxPlayers & " -ServerName=""" & $ServerName & """ -listen -nosteamclient -game -server -log" & $g_sExtraServerCommands & "]")
			Else
				FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server started . . .")
			EndIf
		Else
			$g_sConanPID = Run("" & $serverdir & "\ConanSandbox\Binaries\Win64\" & $g_c_sServerEXE & " ConanSandBox -MULTIHOME=" & $g_IP & " -Port=" & $GamePort & " -QueryPort=" & $QueryPort & " -RconEnabled=" & $g_iRconEnabled & " -RconPassword=" & $g_sRconPass & " -RconPort=" & $g_iRconPort & " -MaxPlayers=" & $MaxPlayers & " -ServerName=""" & $ServerName & """ -listen -nosteamclient -game -server -log" & $g_sExtraServerCommands)
			If $g_bDebug Then
				FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server started [" & $g_c_sServerEXE & " ConanSandBox -MULTIHOME=" & $g_IP & " -Port=" & $GamePort & " -QueryPort=" & $QueryPort & " -RconEnabled=" & $g_iRconEnabled & " -RconPassword=" & ObfPass($g_sRconPass) & " -RconPort=" & $g_iRconPort & " -MaxPlayers=" & $MaxPlayers & " -ServerName=""" & $ServerName & """ -listen -nosteamclient -game -server -log" & $g_sExtraServerCommands & "]")
			Else
				FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server started . . .")
			EndIf
		EndIf
		If @error Or Not $g_sConanPID Then
			If Not IsDeclared("iMsgBoxAnswer") Then Local $iMsgBoxAnswer
			$iMsgBoxAnswer = MsgBox(262405, "Server Failed to Start", "The server tried to start, but it failed. Try again? This will automatically close in 60 seconds and try to start again.", 60)
			Select
				Case $iMsgBoxAnswer = 4 ;Retry
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server Failed to Start. User Initiated a Restart Attempt.")
				Case $iMsgBoxAnswer = 2 ;Cancel
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server Failed to Start - ConanServerUtility Shutdown - Intiated by User")
					Exit
				Case $iMsgBoxAnswer = -1 ;Timeout
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server Failed to Start. Script Initiated Restart Attempt after 60 seconds of no User Input.")
			EndSelect
		EndIf

		If $SteamFix = "yes" Then
			For $i = 3 To 1 Step -1
				CloseEPointError($i * 5)
			Next
		EndIf

		$g_hConanhWnd = WinGetHandle(WinWait("" & $ServerName & "", "", 70))
		If FileExists($g_c_sPIDFile) Then
			FileDelete($g_c_sPIDFile)
		EndIf
		If FileExists($g_c_sHwndFile) Then
			FileDelete($g_c_sHwndFile)
		EndIf
		FileWrite($g_c_sPIDFile, $g_sConanPID)
		FileWrite($g_c_sHwndFile, String($g_hConanhWnd))
		FileSetAttrib($g_c_sPIDFile, "+HT")
		FileSetAttrib($g_c_sHwndFile, "+HT")
		If $g_bDebug Then
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Window Handle Found: " & $g_hConanhWnd)
		EndIf
	ElseIf ((_DateDiff('n', $g_sTimeCheck1, _NowCalc())) >= 5) Then
		Local $MEM = ProcessGetStats($g_sConanPID, 0)
		If $MEM[0] > $ExMem And $ExMemRestart = "no" And $g_bDebug Then
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Work Memory:" & $MEM[0] & " Peak Memory:" & $MEM[1])
		ElseIf $MEM[0] > $ExMem And $ExMemRestart = "yes" Then
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Work Memory:" & $MEM[0] & " Peak Memory:" & $MEM[1] & " Excessive Memory Use - Restart Requested by ConanServerUtility Script")
			CloseServer()
		EndIf
		$g_sTimeCheck1 = _NowCalc()
	EndIf
	#EndRegion ;**** Keep Server Alive Check. ****

	#Region ;**** Restart Server Every X Days and X Hours & Min****
	If (($g_sRestartDaily = "yes") And ((_DateDiff('n', $g_sTimeCheck2, _NowCalc())) >= 1) And (DailyRestartCheck($g_sRestartDays, $g_sRestartHours, $g_sRestartMin)) And ($g_iBeginDelayedShutdown = 0)) Then
		If ProcessExists($g_sConanPID) Then
			Local $MEM = ProcessGetStats($g_sConanPID, 0)
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Work Memory:" & $MEM[0] & " Peak Memory:" & $MEM[1] & " - Daily Restart Requested by ConanServerUtility Script")
			If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
				$aBotMsg = $sAnnounceScheduledMessage
				$g_iBeginDelayedShutdown = 1
				$g_sTimeCheck0 = _NowCalc
			Else
				CloseServer()
			EndIf
		EndIf
		$g_sTimeCheck2 = _NowCalc()
	EndIf
	#EndRegion ;**** Restart Server Every X Days and X Hours & Min****

	#Region ;**** Check for Update every X Minutes ****
	If ($CheckForUpdate = "yes") And ((_DateDiff('n', $g_sTimeCheck0, _NowCalc())) >= $UpdateInterval) And ($g_iBeginDelayedShutdown = 0) Then
		Local $bRestart = UpdateCheck()
		If $bRestart And (($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes")) Then
			$aBotMsg = $sAnnounceServerUpdateMessage
			$g_iBeginDelayedShutdown = 1
		ElseIf $bRestart Then
			CloseServer()
			If $aFullRestart = "yes" Then
				_RestartProgram()
			EndIf
		ElseIf $g_sUpdateMods = "yes" Then
			CheckMod($g_sMods, $steamcmddir, $serverdir)
		EndIf
		$g_sTimeCheck0 = _NowCalc()
	EndIf
	#EndRegion ;**** Check for Update every X Minutes ****

	#Region ;**** Check if Building Damage or Avatars need to be Toggled
	If ((_DateDiff('n', $g_sTimeCheck3, _NowCalc())) >= 1) And ($g_iBeginDelayedShutdown = 0) Then
		If $g_sEnableBuildingDmgSchedule = "yes" Then
			RaidCheck($g_bFlipBuildingDmgSchedule)
		EndIf
		If $g_sEnableAvatarSchedule = "yes" Then
			AvatarCheck($g_bFlipAvatarSchedule)
		EndIf
		$g_sTimeCheck3 = _NowCalc()
	EndIf
	#EndRegion ;**** Check if Building Damage or Avatars need to be Toggled

	#Region ;**** Announce to In Game, Twitch, Discord ****
	If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
		If $g_iBeginDelayedShutdown = 1 Then
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Bot in Use. Delaying Shutdown for " & $g_iDelayShutdownTime & " minutes. Notifying Channel")
			Local $sShutdownMessage = $ServerName & ": " & $aBotMsg & " Server restarting in " & $g_iDelayShutdownTime & " minutes" ;kim125
			Local $sInGameMsg = """WARNING! Server restarts in 1 minute....""" & @CRLF
			Local $sInGameMsgDaily = """WARNING! " & $sAnnounceScheduledMessage & " Server restarting in " & $g_iDelayShutdownTime & " minutes...""" & @CRLF
			Local $sInGameMsgUpdate = """WARNING! " & $sAnnounceServerUpdateMessage & " Server restarting in " & $g_iDelayShutdownTime & " minutes...""" & @CRLF
			Local $sInGameMsgModUpdate = """WARNING! " & $sAnnounceModUpdateMessage & " Server restarting in " & $g_iDelayShutdownTime & " minutes...""" & @CRLF
			Local $sInGameMsgRemoteRestart = """WARNING! " & $sAnnounceRemoteRestartMessage & " Server restarting in " & $g_iDelayShutdownTime & " minutes...""" & @CRLF
			If $aBotMsg = $sAnnounceRemoteRestartMessage Then
				If $g_sUseInGameRemoteRestart = "yes" Then
					MCRCONcmd(@ScriptDir, $g_IP, $g_iRconPort, $g_sRconPass, "broadcast", $sInGameMsgRemoteRestart)
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [RCON] Sent: " & $sInGameMsgRemoteRestart)
				EndIf
				If $sUseDiscordBotRemoteRestart = "yes" Then
					SendDiscordMsg($sDiscordWebHookURLs, $sShutdownMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
				EndIf
				If $sUseTwitchBotRemoteRestart = "yes" Then
					TwitchMsgLog($sShutdownMessage)
				EndIf
			EndIf
			If $aBotMsg = $sAnnounceScheduledMessage Then
				If $g_sUseInGameScheduled = "yes" Then
					MCRCONcmd(@ScriptDir, $g_IP, $g_iRconPort, $g_sRconPass, "broadcast", $sInGameMsgDaily)
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [RCON] Sent: " & $sInGameMsgDaily)
				EndIf
				If $sUseDiscordBotScheduled = "yes" Then
					SendDiscordMsg($sDiscordWebHookURLs, $sShutdownMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
				EndIf
				If $sUseTwitchBotScheduled = "yes" Then
					TwitchMsgLog($sShutdownMessage)
				EndIf
			EndIf
			If $aBotMsg = $sAnnounceServerUpdateMessage Then
				If $g_sUseInGameUpdate = "yes" Then
					MCRCONcmd(@ScriptDir, $g_IP, $g_iRconPort, $g_sRconPass, "broadcast", $sInGameMsgUpdate)
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [RCON] Sent: " & $sInGameMsgUpdate)
				EndIf
				If $sUseDiscordBotUpdate = "yes" Then
					SendDiscordMsg($sDiscordWebHookURLs, $sShutdownMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
				EndIf
				If $sUseTwitchBotUpdate = "yes" Then
					TwitchMsgLog($sShutdownMessage)
				EndIf
			EndIf
			If $aBotMsg = $sAnnounceModUpdateMessage Then
				If $g_sUseInGameUpdate = "yes" Then
					MCRCONcmd(@ScriptDir, $g_IP, $g_iRconPort, $g_sRconPass, "broadcast", $sInGameMsgModUpdate)
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [RCON] Sent: " & $sInGameMsgModUpdate)
				EndIf
				If $sUseDiscordBotUpdate = "yes" Then
					SendDiscordMsg($sDiscordWebHookURLs, $sShutdownMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
				EndIf
				If $sUseTwitchBotUpdate = "yes" Then
					TwitchMsgLog($sShutdownMessage)
				EndIf
			EndIf

			$g_iBeginDelayedShutdown = 2
			$g_sTimeCheck0 = _NowCalc()
		ElseIf ($g_iBeginDelayedShutdown >= 2 And ((_DateDiff('n', $g_sTimeCheck0, _NowCalc())) >= $g_iDelayShutdownTime)) Then
			$g_iBeginDelayedShutdown = 0
			$g_sTimeCheck0 = _NowCalc()
			CloseServer()
			If $aFullRestart = "yes" Then
				_RestartProgram()
			EndIf
		ElseIf $g_iBeginDelayedShutdown = 2 And ((_DateDiff('n', $g_sTimeCheck0, _NowCalc())) >= ($g_iDelayShutdownTime - 1)) Then
			Local $sShutdownMessage = $ServerName & " Restarting in 1 minute. Final Warning"
			If $aBotMsg = $sAnnounceScheduledMessage Then
				If $g_sUseInGameScheduled = "yes" Then
					MCRCONcmd(@ScriptDir, $g_IP, $g_iRconPort, $g_sRconPass, "broadcast", $sShutdownMessage)
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [RCON] Sent: " & $sShutdownMessage)
				EndIf
				If $sUseDiscordBotScheduled = "yes" Then
					SendDiscordMsg($sDiscordWebHookURLs, $sShutdownMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
				EndIf
				If $sUseTwitchBotScheduled = "yes" Then
					TwitchMsgLog($sShutdownMessage)
				EndIf
			EndIf

			If $aBotMsg = $sAnnounceServerUpdateMessage Then
				If $g_sUseInGameUpdate = "yes" Then
					MCRCONcmd(@ScriptDir, $g_IP, $g_iRconPort, $g_sRconPass, "broadcast", $sShutdownMessage)
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [RCON] Sent: " & $sShutdownMessage)
				EndIf
				If $sUseDiscordBotUpdate = "yes" Then
					SendDiscordMsg($sDiscordWebHookURLs, $sShutdownMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
				EndIf
				If $sUseTwitchBotUpdate = "yes" Then
					TwitchMsgLog($sShutdownMessage)
				EndIf
			EndIf

			If $aBotMsg = $sAnnounceModUpdateMessage Then
				If $g_sUseInGameUpdate = "yes" Then
					MCRCONcmd(@ScriptDir, $g_IP, $g_iRconPort, $g_sRconPass, "broadcast", $sShutdownMessage)
					FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [RCON] Sent:  " & $sShutdownMessage)
				EndIf
				If $sUseDiscordBotUpdate = "yes" Then
					SendDiscordMsg($sDiscordWebHookURLs, $sShutdownMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
				EndIf
				If $sUseTwitchBotUpdate = "yes" Then
					TwitchMsgLog($sShutdownMessage)
				EndIf
			EndIf

			$g_iBeginDelayedShutdown = 3
		EndIf
	Else
		$g_iBeginDelayedShutdown = 0
	EndIf
	#EndRegion ;**** Announce to In Game, Twitch, Discord ****

	#Region ;**** Rotate Logs ****
	If ($logRotate = "yes") And ((_DateDiff('h', $g_sTimeCheck4, _NowCalc())) >= 1) Then
		If Not FileExists($g_c_sLogFile) Then
			FileWriteLine($g_c_sLogFile, $g_sTimeCheck4 & " Log File Created")
			FileSetTime($g_c_sLogFile, @YEAR & @MON & @MDAY, 1)
		EndIf
		Local $g_c_sLogFileTime = FileGetTime($g_c_sLogFile, 1)
		Local $logTimeSinceCreation = _DateDiff('h', $g_c_sLogFileTime[0] & "/" & $g_c_sLogFileTime[1] & "/" & $g_c_sLogFileTime[2] & " " & $g_c_sLogFileTime[3] & ":" & $g_c_sLogFileTime[4] & ":" & $g_c_sLogFileTime[5], _NowCalc())
		If $logTimeSinceCreation >= $logHoursBetweenRotate Then
			RotateFile($g_c_sLogFile, $logQuantity)
		EndIf
		$g_sTimeCheck4 = _NowCalc()
	EndIf
	#EndRegion ;**** Rotate Logs ****

	If $SteamFix = "yes" And WinExists("" & $g_c_sServerEXE & " - Entry Point Not Found") Then
		CloseEPointError(15)
	EndIf

	Sleep(1000)
WEnd

#Region ;**** INI Settings - User Variables ****

Func ReadUini($aIniFile, $sLogFile)
	Local $iIniFail = 0
	Local $iniCheck = ""
	Local $aChar[3]
	For $i = 1 To 13
		$aChar[0] = Chr(Random(97, 122, 1)) ;a-z
		$aChar[1] = Chr(Random(48, 57, 1)) ;0-9
		$iniCheck &= $aChar[Random(0, 1, 1)]
	Next

	Global $BindIP = IniRead($aIniFile, "Use MULTIHOME to Bind IP? Disable if having connection issues (yes/no)", "BindIP", $iniCheck)
	Global $g_IP = IniRead($aIniFile, "Server Settings", "ListenIP", $iniCheck)
	Global $GamePort = IniRead($aIniFile, "Server Settings", "GamePort", $iniCheck)
	Global $QueryPort = IniRead($aIniFile, "Server Settings", "QueryPort", $iniCheck)
	Global $ServerName = IniRead($aIniFile, "Server Settings", "ServerName", $iniCheck)
	Global $ServerPass = IniRead($aIniFile, "Server Settings", "ServerPassword", $iniCheck)
	Global $AdminPass = IniRead($aIniFile, "Server Settings", "AdminPassword", $iniCheck)
	Global $MaxPlayers = IniRead($aIniFile, "Server Settings", "MaxPlayers", $iniCheck)
	Global $serverdir = IniRead($aIniFile, "Server Settings", "ServerDirectory(NO_TRAILING_SLASH)", $iniCheck)
	Global $UseSteamCMD = IniRead($aIniFile, "Use SteamCMD To Update Server? (yes/no)", "UseSteamCMD", $iniCheck)
	Global $steamcmddir = IniRead($aIniFile, "SteamCMD Directory. NO TRAILING SLASH", "steamcmddir", $iniCheck)
	Global $g_sSteamLoginName = IniRead($aIniFile, "SteamCMD Login Settings", "SteamLoginName (Leave blank for anonymous)", $iniCheck)
	Global $g_sSteamLoginPassword = IniRead($aIniFile, "SteamCMD Login Settings", "SteamLoginPassword", $iniCheck)
	Global $validategame = IniRead($aIniFile, "Validate Files Every Time SteamCMD Runs? (yes/no)", "validategame", $iniCheck)
	Global $g_sRconEnabled = IniRead($aIniFile, "Server RCON Settings", "EnableRCON(yes/no)", $iniCheck)
	Global $g_sRconPass = IniRead($aIniFile, "Server RCON Settings", "RCONPassword", $iniCheck)
	Global $g_iRconPort = IniRead($aIniFile, "Server RCON Settings", "RCONPort", $iniCheck)
	Global $UseRemoteRestart = IniRead($aIniFile, "Remote Restart Settings", "UseRemoteRestart(yes/no)", $iniCheck)
	Global $g_Port = IniRead($aIniFile, "Remote Restart Settings", "ListenPort", $iniCheck)
	Global $g_sRKey = IniRead($aIniFile, "Remote Restart Request Key ((http://IP:Port?KEY=user_pass)", "RemoteRestartRequestKey", $iniCheck)
	Global $RestartCode = IniRead($aIniFile, "Remote Restart Settings", "RestartPassword", $iniCheck)
	Global $sObfuscatePass = IniRead($aIniFile, "Hide Passwords in Log? (yes/no)", "ObfuscatePass", $iniCheck)
	Global $CheckForUpdate = IniRead($aIniFile, "Check for Update Every X Minutes? (yes/no)", "CheckForUpdate", $iniCheck)
	Global $UpdateInterval = IniRead($aIniFile, "Update Check Interval in Minutes 05-59", "UpdateInterval", $iniCheck)
	Global $g_sUpdateMods = IniRead($aIniFile, "Install Mods and Check for Update? (yes/no)", "CheckForModUpdate", $iniCheck)
	Global $g_sMods = IniRead($aIniFile, "Install Mods and Check for Update? (yes/no)", "ModList", $iniCheck)
	Global $g_sRestartDaily = IniRead($aIniFile, "Restart Server Daily? (yes/no)", "RestartDaily", $iniCheck)
	Global $g_sRestartDays = IniRead($aIniFile, "Daily Restart Hours Comma Seperated 0=Everyday Sunday=1 Saturday=7 0-7", "RestartDays", $iniCheck)
	Global $g_sRestartHours = IniRead($aIniFile, "Daily Restart Hours Comma Seperated 00-23", "RestartHours", $iniCheck)
	Global $g_sRestartMin = IniRead($aIniFile, "Daily Restart Minute 00-59", "RestartMinute", $iniCheck)
	Global $ExMem = IniRead($aIniFile, "Excessive Memory Amount?", "ExMem", $iniCheck)
	Global $ExMemRestart = IniRead($aIniFile, "Restart On Excessive Memory Use? (yes/no)", "ExMemRestart", $iniCheck)
	Global $SteamFix = IniRead($aIniFile, "Running Server with Steam Open? (yes/no)", "SteamFix", $iniCheck)
	Global $logRotate = IniRead($aIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logRotate", $iniCheck)
	Global $logQuantity = IniRead($aIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logQuantity", $iniCheck)
	Global $logHoursBetweenRotate = IniRead($aIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logHoursBetweenRotate", $iniCheck)
	Global $aFullRestart = IniRead($aIniFile, "Restart Utility With Updates? (yes/no)", "restartutility", $iniCheck)
	Global $sAnnounceScheduledMessage = IniRead($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceSCHEDULEDMessage", $iniCheck)
	Global $sAnnounceServerUpdateMessage = IniRead($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceServerUPDATEMessage", $iniCheck)
	Global $sAnnounceModUpdateMessage = IniRead($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceModUpdateMessage", $iniCheck)
	Global $sAnnounceRemoteRestartMessage = IniRead($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceRemoteRestartMessage", $iniCheck)
	Global $sAnnounceNotifyTime = IniRead($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceMinutesBeforeRestart", $iniCheck)
	Global $g_sUseInGameScheduled = IniRead($aIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameSCHEDULED", $iniCheck)
	Global $g_sUseInGameUpdate = IniRead($aIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameUPDATE", $iniCheck)
	Global $g_sUseInGameRemoteRestart = IniRead($aIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameRemoteRestart", $iniCheck)
	Global $sUseDiscordBotScheduled = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotSCHEDULED", $iniCheck)
	Global $sUseDiscordBotUpdate = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotUPDATE", $iniCheck)
	Global $sUseDiscordBotRemoteRestart = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotRemoteRestart", $iniCheck)
	Global $sDiscordWebHookURLs = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordWebHookURL", $iniCheck)
	Global $sDiscordBotName = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotName", $iniCheck)
	Global $bDiscordBotUseTTS = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotUseTTS", $iniCheck)
	Global $sDiscordBotAvatar = IniRead($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotAvatarLink", $iniCheck)
	Global $sDiscordPlayersAnounceChangeYN = IniRead($aIniFile, "Discord Online Player Changes Announcement", "Use Discord to Announce Discord Online Player Changes? (yes/no)", $iniCheck)
	Global $sDiscordPlayersMsg = IniRead($aIniFile, "Discord Online Player Changes Announcement", "Online Player Message (\o - Online Player Count, \m - Max Players)", $iniCheck)
	Global $sDiscordPlayersWH = IniRead($aIniFile, "Discord Online Player Changes Announcement", "Discord WebHook URL", $iniCheck)
	Global $sDiscordPlayersBotName = IniRead($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Name", $iniCheck)
	Global $bDiscordPlayersBotUseTTS = IniRead($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Use TTS (yes/no)", $iniCheck)
	Global $sDiscordPlayersBotAvatar = IniRead($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Avatar URL", $iniCheck)
	Global $sUseTwitchBotScheduled = IniRead($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotSCHEDULED", $iniCheck)
	Global $sUseTwitchBotUpdate = IniRead($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotUPDATE", $iniCheck)
	Global $sUseTwitchBotRemoteRestart = IniRead($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotRemoteRestart", $iniCheck)
	Global $sTwitchNick = IniRead($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "TwitchNick", $iniCheck)
	Global $sChatOAuth = IniRead($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "ChatOAuth", $iniCheck)
	Global $sTwitchChannels = IniRead($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "TwitchChannels", $iniCheck)
	Global $g_sEnableBuildingDmgSchedule = IniRead($aIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "EnableBuildingDamageSchedule", $iniCheck)
	Global $g_sBuildingDmgEnabledTimes = IniRead($aIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "BuildingDmgEnabledSchedule", $iniCheck)
	Global $g_sFlipBuildingDmgSchedule = IniRead($aIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "FlipBuildingDmgSchedule", $iniCheck)
	Global $g_sEnableAvatarSchedule = IniRead($aIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "EnableAvatarSchedule", $iniCheck)
	Global $g_sAvatarsDisabledTimes = IniRead($aIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "AvatarsDisabledSchedule", $iniCheck)
	Global $g_sFlipAvatarSchedule = IniRead($aIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "FlipAvatarSchedule", $iniCheck)
	Global $aQueryYN = IniRead($aIniFile, "Steam Query Check for Running Server", "Use Steam query as additional check for running vs stuck server? (yes/no)", $iniCheck)
	Global $aQueryIP = IniRead($aIniFile, "Steam Query Check for Running Server", "Query IP (generally use 127.0.0.1)", $iniCheck)
	Global $aQueryCheckSec = IniRead($aIniFile, "Steam Query Check for Running Server", "Check query every _ seconds", $iniCheck)
	Global $g_sIniOverwriteFix = IniRead($aIniFile, "Bug Fix - Copy from then Delete Default Server Settings INI? (yes/no)", "IniOverwriteFix", $iniCheck)
	Global $g_sExtraServerCommands = IniRead($aIniFile, "Extra Command Line Options. Leave Blank if Not Using", "ExtraServerCommands", $iniCheck)
	Global $g_sExecuteExternalScript = IniRead($aIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExecuteExternalScriptBeforeUpdate", $iniCheck)
	Global $g_sExternalScriptDir = IniRead($aIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExternalScriptBeforeDirectory", $iniCheck)
	Global $g_sExternalScriptName = IniRead($aIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExternalScriptBeforeFileName", $iniCheck)
	Global $g_sExecuteExternalScriptValidate = IniRead($aIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExecuteExternalScriptAfterUpdate", $iniCheck)
	Global $g_sExternalScriptDirValidate = IniRead($aIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExternalScriptAfterDirectory", $iniCheck)
	Global $g_sExternalScriptNameValidate = IniRead($aIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExternalScriptAfterFileName", $iniCheck)
	Global $g_sEnableDebug = IniRead($aIniFile, "Enable Debug to Output More Log Detail? (yes/no)", "EnableDebug", $iniCheck)

	If $iniCheck = $BindIP Then
		$BindIP = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_IP Then
		$g_IP = "127.0.0.1"
		$iIniFail += 1
	EndIf
	If $iniCheck = $GamePort Then
		$GamePort = "7777"
		$iIniFail += 1
	EndIf
	If $iniCheck = $QueryPort Then
		$QueryPort = "27015"
		$iIniFail += 1
	EndIf
	If $iniCheck = $ServerName Then
		$ServerName = "Conan Server Utility Server"
		$iIniFail += 1
	EndIf
	If $iniCheck = $ServerPass Then
		$ServerPass = ""
		$iIniFail += 1
	EndIf
	If $iniCheck = $AdminPass Then
		$AdminPass &= "_noHASHsymbol"
		$iIniFail += 1
	EndIf
	If $iniCheck = $MaxPlayers Then
		$MaxPlayers = "20"
		$iIniFail += 1
	EndIf
	If $iniCheck = $serverdir Then
		$serverdir = "D:\Game Servers\Conan Exiles Dedicated Server"
		$iIniFail += 1
	EndIf
	If $iniCheck = $UseSteamCMD Then
		$UseSteamCMD = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $steamcmddir Then
		$steamcmddir = "D:\Game Servers\Conan Exiles Dedicated Server\SteamCMD"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sSteamLoginName Then
		$g_sSteamLoginName = ""
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sSteamLoginPassword Then
		$g_sSteamLoginPassword = "SteamPassword"
		$iIniFail += 1
	EndIf
	If $iniCheck = $validategame Then
		$validategame = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sRconEnabled Then
		$g_sRconEnabled = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sRconPass Then
		$g_sRconPass &= "_noHASHsymbol"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_iRconPort Then
		$g_iRconPort = "25578"
		$iIniFail += 1
	EndIf
	If $iniCheck = $UseRemoteRestart Then
		$UseRemoteRestart = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_Port Then
		$g_Port = "57520"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sRKey Then
		$g_sRKey = "restart"
		$iIniFail += 1
	EndIf
	If $iniCheck = $RestartCode Then
		$RestartCode = "Admin1_Pass" & $RestartCode & "-AllowedCharacters=1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@$%^&*()+=-{}[]\|:;./?"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sObfuscatePass Then
		$sObfuscatePass = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $CheckForUpdate Then
		$CheckForUpdate = "yes"
		$iIniFail += 1
	ElseIf $CheckForUpdate = "yes" And $UseSteamCMD <> "yes" Then
		$CheckForUpdate = "no"
		FileWriteLine($sLogFile, _NowCalc() & " SteamCMD disabled. Disabling CheckForUpdate. Update will not work without SteamCMD to update it!")
	EndIf
	If $iniCheck = $UpdateInterval Then
		$UpdateInterval = "15"
		$iIniFail += 1
	ElseIf $UpdateInterval < 5 Then
		$UpdateInterval = 5
	EndIf
	If $iniCheck = $g_sUpdateMods Then
		$g_sUpdateMods = "no"
		$iIniFail += 1
	ElseIf $g_sUpdateMods = "yes" And $CheckForUpdate <> "yes" Then
		$g_sUpdateMods = "no"
		FileWriteLine($sLogFile, _NowCalc() & " Server Update Check is Disabled. Disabling Mod Updates. Does not make sense to update Mods and Not Server!")
	EndIf
	If $iniCheck = $g_sMods Then
		$g_sMods = "#########,#########"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sRestartDaily Then
		$g_sRestartDaily = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sRestartDays Then
		$g_sRestartDays = "2,4,6"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sRestartHours Then
		$g_sRestartHours = "12,23"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sRestartMin Then
		$g_sRestartMin = "01"
		$iIniFail += 1
	EndIf
	If $iniCheck = $ExMem Then
		$ExMem = "6000000000"
		$iIniFail += 1
	EndIf
	If $iniCheck = $ExMemRestart Then
		$ExMemRestart = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $SteamFix Then
		$SteamFix = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $logRotate Then
		$logRotate = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $logQuantity Then
		$logQuantity = "10"
		$iIniFail += 1
	EndIf
	If $iniCheck = $logHoursBetweenRotate Then
		$logHoursBetweenRotate = "24"
		$iIniFail += 1
	ElseIf $logHoursBetweenRotate < 1 Then
		$logHoursBetweenRotate = 1
	EndIf
	If $iniCheck = $g_sUseInGameScheduled Then
		$g_sUseInGameScheduled = "yes"
		$iIniFail += 1
	ElseIf $g_sUseInGameScheduled = "yes" And $g_sRconEnabled <> "yes" Then
		$g_sUseInGameScheduled = "no"
		FileWriteLine($sLogFile, _NowCalc() & " Server RCON is Disabled. Disabling MCRCON Notifications. Cannot send RCON message without RCON enabled!")
	EndIf
	If $iniCheck = $g_sUseInGameUpdate Then
		$g_sUseInGameUpdate = "yes"
		$iIniFail += 1
	ElseIf $g_sUseInGameUpdate = "yes" And $g_sRconEnabled <> "yes" Then
		$g_sUseInGameUpdate = "no"
		FileWriteLine($sLogFile, _NowCalc() & " Server RCON is Disabled. Disabling MCRCON Notifications. Cannot send RCON message without RCON enabled!")
	EndIf
	If $iniCheck = $g_sUseInGameRemoteRestart Then
		$g_sUseInGameRemoteRestart = "yes"
		$iIniFail += 1
	ElseIf $g_sUseInGameRemoteRestart = "yes" And $g_sRconEnabled <> "yes" Then
		$g_sUseInGameRemoteRestart = "no"
		FileWriteLine($sLogFile, _NowCalc() & " Server RCON is Disabled. Disabling MCRCON Notifications. Cannot send RCON message without RCON enabled!")
	EndIf
	If $iniCheck = $aFullRestart Then
		$aFullRestart = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sAnnounceScheduledMessage Then
		$sAnnounceScheduledMessage = "Scheduled server restart."
		$iIniFail += 1
	EndIf
	If $iniCheck = $sAnnounceNotifyTime Then
		$sAnnounceNotifyTime = "5"
		$iIniFail += 1
	ElseIf $sAnnounceNotifyTime < 5 Then
		$sAnnounceNotifyTime = 5
	EndIf
	If $iniCheck = $sAnnounceServerUpdateMessage Then
		$sAnnounceServerUpdateMessage = "New server update."
		$iIniFail += 1
	EndIf
	If $iniCheck = $sAnnounceModUpdateMessage Then
		$sAnnounceModUpdateMessage = "New mod update."
		$iIniFail += 1
	EndIf
	If $iniCheck = $sAnnounceRemoteRestartMessage Then
		$sAnnounceRemoteRestartMessage = "Restart requested by admin."
		$iIniFail += 1
	EndIf
	If $iniCheck = $sUseDiscordBotScheduled Then
		$sUseDiscordBotScheduled = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sUseDiscordBotUpdate Then
		$sUseDiscordBotUpdate = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sUseDiscordBotRemoteRestart Then
		$sUseDiscordBotRemoteRestart = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sDiscordWebHookURLs Then
		$sDiscordWebHookURLs = "https://discordapp.com/api/webhooks/XXXXXX/XXXX<-NO TRAILING SLASH AND USE FULL URL FROM WEBHOOK URL ON DISCORD"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sDiscordBotName Then
		$sDiscordBotName = "Conan Exiles Bot"
		$iIniFail += 1
	EndIf
	If $iniCheck = $bDiscordBotUseTTS Then
		$bDiscordBotUseTTS = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sDiscordBotAvatar Then
		$sDiscordBotAvatar = "http://www.phoenix125.com/share/Discord/DiscordAvatarConanExiles.png"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sDiscordPlayersAnounceChangeYN Then
		$sDiscordPlayersAnounceChangeYN = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sDiscordPlayersMsg Then
		$sDiscordPlayersMsg = "Players Online: ** \o / \m**"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sDiscordPlayersWH Then
		$sDiscordPlayersWH = "https://discordapp.com/api/webhooks/XXXXXX/XXXX<-NO TRAILING SLASH AND USE FULL URL FROM WEBHOOK URL ON DISCORD"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sDiscordPlayersBotName Then
		$sDiscordPlayersBotName = "Conan Exiles Players Bot"
		$iIniFail += 1
	EndIf
	If $iniCheck = $bDiscordPlayersBotUseTTS Then
		$bDiscordPlayersBotUseTTS = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sDiscordPlayersBotAvatar Then
		$sDiscordPlayersBotAvatar = "http://www.phoenix125.com/share/Discord/DiscordAvatarConanExiles.png"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sUseTwitchBotScheduled Then
		$sUseTwitchBotScheduled = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sUseTwitchBotUpdate Then
		$sUseTwitchBotUpdate = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sUseTwitchBotRemoteRestart Then
		$sUseTwitchBotRemoteRestart = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sTwitchNick Then
		$sTwitchNick = "twitchbotusername"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sChatOAuth Then
		$sChatOAuth = "oauth:1234(Generate OAuth Token Here: https://twitchapps.com/tmi)"
		$iIniFail += 1
	EndIf
	If $iniCheck = $sTwitchChannels Then
		$sTwitchChannels = "channel1,channel2,channel3"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sEnableBuildingDmgSchedule Then
		$g_sEnableBuildingDmgSchedule = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sBuildingDmgEnabledTimes Then
		$g_sBuildingDmgEnabledTimes = "WDAY(Sunday1)-HHMMtoWDAY(Saturday7)-HHMM,1-0000to7-2359,6-2200to7-0500"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sFlipBuildingDmgSchedule Then
		$g_sFlipBuildingDmgSchedule = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sEnableAvatarSchedule Then
		$g_sEnableAvatarSchedule = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sAvatarsDisabledTimes Then
		$g_sAvatarsDisabledTimes = "WDAY(Sunday1)-HHMMtoWDAY(Saturday7)-HHMM,1-0000to7-2359,6-2200to7-0500"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sFlipAvatarSchedule Then
		$g_sFlipAvatarSchedule = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $aQueryYN Then
		$aQueryYN = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $aQueryIP Then
		$aQueryIP = "127.0.0.1"
		$iIniFail += 1
	EndIf
	If $iniCheck = $aQueryCheckSec Then
		$aQueryCheckSec = 15
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sIniOverwriteFix Then
		$g_sIniOverwriteFix = "yes"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sExtraServerCommands Then
		$g_sExtraServerCommands = ""
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sExecuteExternalScript Then
		$g_sExecuteExternalScript = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sExternalScriptDir Then
		$g_sExternalScriptDir = "D:\Game Servers\Conan Exiles Dedicated Server\Scripts"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sExternalScriptName Then
		$g_sExternalScriptName = "before.bat"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sExecuteExternalScriptValidate Then
		$g_sExecuteExternalScriptValidate = "no"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sExternalScriptDirValidate Then
		$g_sExternalScriptDirValidate = "D:\Game Servers\Conan Exiles Dedicated Server\Scripts"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sExternalScriptNameValidate Then
		$g_sExternalScriptNameValidate = "after.bat"
		$iIniFail += 1
	EndIf
	If $iniCheck = $g_sEnableDebug Then
		$g_sEnableDebug = "no"
		$iIniFail += 1
	EndIf



	If $iIniFail > 0 Then
		iniFileCheck($aIniFile, $iIniFail)
	EndIf

	If $g_sRconEnabled = "yes" Then
		Global $g_iRconEnabled = 1
	Else
		Global $g_iRconEnabled = 0
	EndIf


	If $iIniFail > 0 Then
		iniFileCheck($aIniFile, $iIniFail)
	EndIf
	If $bDiscordBotUseTTS = "yes" Then
		$bDiscordBotUseTTS = True
	Else
		$bDiscordBotUseTTS = False
	EndIf

	Global $g_iDelayShutdownTime = 0
	If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
		$g_iDelayShutdownTime = $sAnnounceNotifyTime
	EndIf


	If $g_sFlipBuildingDmgSchedule = "yes" Then
		Global $g_bFlipBuildingDmgSchedule = True
	Else
		Global $g_bFlipBuildingDmgSchedule = False
	EndIf

	If $g_sFlipAvatarSchedule = "yes" Then
		Global $g_bFlipAvatarSchedule = True
	Else
		Global $g_bFlipAvatarSchedule = False
	EndIf

	If $g_sIniOverwriteFix = "yes" Then
		Global $g_bIniOverwriteFix = True ; This enables deleting the DefaultServerSettings.INI. Only way to make ServerSettings.ini work properly.
	Else
		Global $g_bIniOverwriteFix = False
	EndIf

	If $g_sEnableDebug = "yes" Then
		Global $g_bDebug = True ; This enables Debugging. Outputs more information to log file.
	Else
		Global $g_bDebug = False
	EndIf
EndFunc   ;==>ReadUini

Func iniFileCheck($aIniFile, $iIniFail)
	If FileExists($aIniFile) Then
		Local $aMyDate, $aMyTime
		_DateTimeSplit(_NowCalc(), $aMyDate, $aMyTime)
		Local $iniDate = StringFormat("%04i.%02i.%02i.%02i%02i", $aMyDate[1], $aMyDate[2], $aMyDate[3], $aMyTime[1], $aMyTime[2])
		FileMove($aIniFile, $aIniFile & "_" & $iniDate & ".bak", 1)
		UpdateIni($aIniFile)
		MsgBox(4096, "INI MISMATCH", "Found " & $iIniFail & " Missing Variables" & @CRLF & @CRLF & "Backup created and all existing settings transfered to new INI." & @CRLF & @CRLF & "Modify INI and restart.")
		ShellExecute($aIniFile)
		Exit
	Else
		UpdateIni($aIniFile)
		MsgBox(4096, "Default INI File Created", "Please Modify Default Values and Restart Program.")
		Exit
	EndIf
EndFunc   ;==>iniFileCheck

Func UpdateIni($aIniFile)
	IniWrite($aIniFile, "Use MULTIHOME to Bind IP? Disable if having connection issues (yes/no)", "BindIP", $BindIP)
	IniWrite($aIniFile, "Server Settings", "ListenIP", $g_IP)
	IniWrite($aIniFile, "Server Settings", "GamePort", $GamePort)
	IniWrite($aIniFile, "Server Settings", "QueryPort", $QueryPort)
	IniWrite($aIniFile, "Server Settings", "ServerName", $ServerName)
	IniWrite($aIniFile, "Server Settings", "ServerPassword", $ServerPass)
	IniWrite($aIniFile, "Server Settings", "AdminPassword", $AdminPass)
	IniWrite($aIniFile, "Server Settings", "MaxPlayers", $MaxPlayers)
	IniWrite($aIniFile, "Server Settings", "ServerDirectory(NO_TRAILING_SLASH)", $serverdir)
	IniWrite($aIniFile, "Use SteamCMD To Update Server? (yes/no)", "UseSteamCMD", $UseSteamCMD)
	IniWrite($aIniFile, "SteamCMD Directory. NO TRAILING SLASH", "steamcmddir", $steamcmddir)
	IniWrite($aIniFile, "SteamCMD Login Settings", "SteamLoginName (Leave blank for anonymous)", $g_sSteamLoginName)
	IniWrite($aIniFile, "SteamCMD Login Settings", "SteamLoginPassword", $g_sSteamLoginPassword)
	IniWrite($aIniFile, "Validate Files Every Time SteamCMD Runs? (yes/no)", "validategame", $validategame)
	IniWrite($aIniFile, "Server RCON Settings", "EnableRCON(yes/no)", $g_sRconEnabled)
	IniWrite($aIniFile, "Server RCON Settings", "RCONPassword", $g_sRconPass)
	IniWrite($aIniFile, "Server RCON Settings", "RCONPort", $g_iRconPort)
	IniWrite($aIniFile, "Remote Restart Settings", "UseRemoteRestart(yes/no)", $UseRemoteRestart)
	IniWrite($aIniFile, "Remote Restart Settings", "ListenPort", $g_Port)
	IniWrite($aIniFile, "Remote Restart Settings", "RestartPassword", $RestartCode)
	IniWrite($aIniFile, "Remote Restart Request Key ((http://IP:Port?KEY=user_pass)", "RemoteRestartRequestKey", $g_sRKey)
	IniWrite($aIniFile, "Hide Passwords in Log? (yes/no)", "ObfuscatePass", $sObfuscatePass)
	IniWrite($aIniFile, "Check for Update Every X Minutes? (yes/no)", "CheckForUpdate", $CheckForUpdate)
	IniWrite($aIniFile, "Update Check Interval in Minutes 05-59", "UpdateInterval", $UpdateInterval)
	IniWrite($aIniFile, "Install Mods and Check for Update? (yes/no)", "CheckForModUpdate", $g_sUpdateMods)
	IniWrite($aIniFile, "Install Mods and Check for Update? (yes/no)", "ModList", $g_sMods)
	IniWrite($aIniFile, "Restart Server Daily? (yes/no)", "RestartDaily", $g_sRestartDaily)
	IniWrite($aIniFile, "Daily Restart Hours Comma Seperated 0=Everyday Sunday=1 Saturday=7 0-7", "RestartDays", $g_sRestartDays)
	IniWrite($aIniFile, "Daily Restart Hours Comma Seperated 00-23", "RestartHours", $g_sRestartHours)
	IniWrite($aIniFile, "Daily Restart Minute 00-59", "RestartMinute", $g_sRestartMin)
	IniWrite($aIniFile, "Excessive Memory Amount?", "ExMem", $ExMem)
	IniWrite($aIniFile, "Restart On Excessive Memory Use? (yes/no)", "ExMemRestart", $ExMemRestart)
	IniWrite($aIniFile, "Running Server with Steam Open? (yes/no)", "SteamFix", $SteamFix)
	IniWrite($aIniFile, "Restart Utility With Updates? (yes/no)", "restartutility", $aFullRestart)
	IniWrite($aIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logRotate", $logRotate)
	IniWrite($aIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logQuantity", $logQuantity)
	IniWrite($aIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logHoursBetweenRotate", $logHoursBetweenRotate)
	IniWrite($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceSCHEDULEDMessage", $sAnnounceScheduledMessage)
	IniWrite($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceServerUPDATEMessage", $sAnnounceServerUpdateMessage)
	IniWrite($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceModUpdateMessage", $sAnnounceModUpdateMessage)
	IniWrite($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceRemoteRestartMessage", $sAnnounceRemoteRestartMessage)
	IniWrite($aIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceMinutesBeforeRestart", $sAnnounceNotifyTime)
	IniWrite($aIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameSCHEDULED", $g_sUseInGameScheduled)
	IniWrite($aIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameUPDATE", $g_sUseInGameUpdate)
	IniWrite($aIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameRemoteRestart", $g_sUseInGameRemoteRestart)
	IniWrite($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotSCHEDULED", $sUseDiscordBotScheduled)
	IniWrite($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotUPDATE", $sUseDiscordBotUpdate)
	IniWrite($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotRemoteRestart", $sUseDiscordBotRemoteRestart)
	IniWrite($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordWebHookURL", $sDiscordWebHookURLs)
	IniWrite($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotName", $sDiscordBotName)
	IniWrite($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotUseTTS", $bDiscordBotUseTTS)
	IniWrite($aIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotAvatarLink", $sDiscordBotAvatar)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Use Discord to Announce Discord Online Player Changes? (yes/no)", $sDiscordPlayersAnounceChangeYN)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Online Player Message (\o - Online Player Count, \m - Max Players)", $sDiscordPlayersMsg)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Discord WebHook URL", $sDiscordPlayersWH)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Name", $sDiscordPlayersBotName)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Use TTS (yes/no)", $bDiscordPlayersBotUseTTS)
	IniWrite($aIniFile, "Discord Online Player Changes Announcement", "Discord Bot Avatar URL", $sDiscordPlayersBotAvatar)
	IniWrite($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotSCHEDULED", $sUseTwitchBotScheduled)
	IniWrite($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotUPDATE", $sUseTwitchBotUpdate)
	IniWrite($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotRemoteRestart", $sUseTwitchBotRemoteRestart)
	IniWrite($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "TwitchNick", $sTwitchNick)
	IniWrite($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "ChatOAuth", $sChatOAuth)
	IniWrite($aIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "TwitchChannels", $sTwitchChannels)
	IniWrite($aIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "EnableBuildingDamageSchedule", $g_sEnableBuildingDmgSchedule)
	IniWrite($aIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "BuildingDmgEnabledSchedule", $g_sBuildingDmgEnabledTimes)
	IniWrite($aIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "FlipBuildingDmgSchedule", $g_sFlipBuildingDmgSchedule)
	IniWrite($aIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "EnableAvatarSchedule", $g_sEnableAvatarSchedule)
	IniWrite($aIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "AvatarsDisabledSchedule", $g_sAvatarsDisabledTimes)
	IniWrite($aIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "FlipAvatarSchedule", $g_sFlipAvatarSchedule)
	IniWrite($aIniFile, "Steam Query Check for Running Server", "Use Steam query as additional check for running vs stuck server? (yes/no)", $aQueryYN)
	IniWrite($aIniFile, "Steam Query Check for Running Server", "Query IP (generally use 127.0.0.1)", $aQueryIP)
	IniWrite($aIniFile, "Steam Query Check for Running Server", "Check query every _ seconds", $aQueryCheckSec)
	IniWrite($aIniFile, "Bug Fix - Copy from then Delete Default Server Settings INI? (yes/no)", "IniOverwriteFix", $g_sIniOverwriteFix)
	IniWrite($aIniFile, "Extra Command Line Options. Leave Blank if Not Using", "ExtraServerCommands", $g_sExtraServerCommands)
	IniWrite($aIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExecuteExternalScriptBeforeUpdate", $g_sExecuteExternalScript)
	IniWrite($aIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExternalScriptBeforeDirectory", $g_sExternalScriptDir)
	IniWrite($aIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExternalScriptBeforeFileName", $g_sExternalScriptName)
	IniWrite($aIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExecuteExternalScriptAfterUpdate", $g_sExecuteExternalScriptValidate)
	IniWrite($aIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExternalScriptAfterDirectory", $g_sExternalScriptDirValidate)
	IniWrite($aIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExternalScriptAfterFileName", $g_sExternalScriptNameValidate)
	IniWrite($aIniFile, "Enable Debug to Output More Log Detail? (yes/no)", "EnableDebug", $g_sEnableDebug)
EndFunc   ;==>UpdateIni
#EndRegion ;**** INI Settings - User Variables ****

; ===================================================================================================

#Region ;**** UnZip Function by trancexx ****
; #FUNCTION# ;===============================================================================
;
; Name...........: _ExtractZip
; Description ...: Extracts file/folder from ZIP compressed file
; Syntax.........: _ExtractZip($sZipFile, $sFolderStructure, $sFile, $sDestinationFolder)
; Parameters ....: $sZipFile - full path to the ZIP file to process
;                  $sFolderStructure - 'path' to the file/folder to extract inside ZIP file
;                  $sFile - file/folder to extract
;                  $sDestinationFolder - folder to extract to. Must exist.
; Return values .: Success - Returns 1
;                          - Sets @error to 0
;                  Failure - Returns 0 sets @error:
;                  |1 - Shell Object creation failure
;                  |2 - Destination folder is unavailable
;                  |3 - Structure within ZIP file is wrong
;                  |4 - Specified file/folder to extract not existing
; Author ........: trancexx
; https://www.autoitscript.com/forum/topic/101529-sunzippings-zipping/#comment-721866
;
;==========================================================================================
Func _ExtractZip($sZipFile, $sFolderStructure, $sFile, $sDestinationFolder)

	Local $i
	Do
		$i += 1
		$sTempZipFolder = @TempDir & "\Temporary Directory " & $i & " for " & StringRegExpReplace($sZipFile, ".*\\", "")
	Until Not FileExists($sTempZipFolder) ; this folder will be created during extraction

	Local $oShell = ObjCreate("Shell.Application")

	If Not IsObj($oShell) Then
		Return SetError(1, 0, 0) ; highly unlikely but could happen
	EndIf

	Local $oDestinationFolder = $oShell.NameSpace($sDestinationFolder)
	If Not IsObj($oDestinationFolder) Then
		Return SetError(2, 0, 0) ; unavailable destionation location
	EndIf

	Local $oOriginFolder = $oShell.NameSpace($sZipFile & "\" & $sFolderStructure) ; FolderStructure is overstatement because of the available depth
	If Not IsObj($oOriginFolder) Then
		Return SetError(3, 0, 0) ; unavailable location
	EndIf

	;Local $oOriginFile = $oOriginFolder.Items.Item($sFile)
	Local $oOriginFile = $oOriginFolder.ParseName($sFile)
	If Not IsObj($oOriginFile) Then
		Return SetError(4, 0, 0) ; no such file in ZIP file
	EndIf

	; copy content of origin to destination
	$oDestinationFolder.CopyHere($oOriginFile, 4) ; 4 means "do not display a progress dialog box", but apparently doesn't work

	DirRemove($sTempZipFolder, 1) ; clean temp dir

	Return 1 ; All OK!

EndFunc   ;==>_ExtractZip
#EndRegion ;**** UnZip Function by trancexx ****

; ===================================================================================================

#Region ;**** _RemoteRestart ****
;===============================================================================
;
; Name...........: _RemoteRestart
; Description ...: Receives TCP string from GET request and checks against list of known passwords.
;				   Expects GET /?restart=user_pass HTTP/x.x
; Syntax.........: RemoteRestart($vMSocket, $sCodes, [$sKey = "restart", $sHideCodes = "no", [$sServIP = "0.0.0.0", [$sName = "Server", [$bDebug = False]]]]])
; Parameters ....: $vMSocket - Main Socket to Accept TCP Requests on. Should already be open from TCPListen
;                  $sCodes - Comma Seperated list of user1_password1,user2_password2,password3
;							 Allowed Characters: abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@$%^&*()+=-{}[]\|:;./?
;				   $sKey - Key to match before matching password. http://IP:Pass?KEY=user_pass
;                  $sHideCodes - Obfuscate codes or not, (yes/no) string
;                  $sServIP - IP  to send back in Header Response.
;				   $sName - Server Name to use in HTML Response.
;				   $sDebug - True to return Full TCP Request when Request is invalid
; Return values .: Success - Returns String
;                          - Sets @error to 0
;				   No Connection - Sets @ error to -1
;                  Failure - Returns Descriptive String sets @error:
;                  |1 - Password doesn't match
;                  |2 - Invalid Request
;                  |3 - CheckHTTPReq Failed - Returns error in string
;                  |4 - TCPRecv Failed - Returns error in string
; Author ........: Dateranoth
;
;==========================================================================================

#Region ;**** PassCheck - Checks if received password matches any of the known passwords ****
Func PassCheck($sPass, $sPassString)
	Local $aPassReturn[3] = [False, "", ""]
	Local $aPasswords = StringSplit($sPassString, ",")
	For $i = 1 To $aPasswords[0]
		If (StringCompare($sPass, $aPasswords[$i], 1) = 0) Then
			Local $aUserPass = StringSplit($aPasswords[$i], "_")
			If $aUserPass[0] > 1 Then
				$aPassReturn[0] = True
				$aPassReturn[1] = $aUserPass[1]
				$aPassReturn[2] = $aUserPass[2]
			Else
				$aPassReturn[0] = True
				$aPassReturn[1] = "Anonymous"
				$aPassReturn[2] = $aUserPass[1]
			EndIf
			ExitLoop
		EndIf
	Next
	Return $aPassReturn
EndFunc   ;==>PassCheck
#EndRegion ;**** PassCheck - Checks if received password matches any of the known passwords ****

#Region ;**** ObfPass - Obfuscates password string for logging
Func ObfPass($sObfPassString)
	Local $sObfPass = ""
	For $i = 1 To (StringLen($sObfPassString) - 3)
		If $i <> 4 Then
			$sObfPass = $sObfPass & "*"
		Else
			$sObfPass = $sObfPass & StringMid($sObfPassString, 4, 4)
		EndIf
	Next
	Return $sObfPass
EndFunc   ;==>ObfPass

#EndRegion ;**** ObfPass - Obfuscates password string for logging


#Region ;**** Function to get IP from Restart Client ****
Func _TCP_Server_ClientIP($hSocket)
	Local $pSocketAddress, $aReturn
	$pSocketAddress = DllStructCreate("short;ushort;uint;char[8]")
	$aReturn = DllCall("ws2_32.dll", "int", "getpeername", "int", $hSocket, "ptr", DllStructGetPtr($pSocketAddress), "int*", DllStructGetSize($pSocketAddress))
	If @error Or $aReturn[0] <> 0 Then Return $hSocket
	$aReturn = DllCall("ws2_32.dll", "str", "inet_ntoa", "int", DllStructGetData($pSocketAddress, 3))
	If @error Then Return $hSocket
	$pSocketAddress = 0
	Return $aReturn[0]
EndFunc   ;==>_TCP_Server_ClientIP
#EndRegion ;**** Function to get IP from Restart Client ****

#Region ;**** Function to Check Request from Browswer and return restart string if request is valid****
Func CheckHTTPReq($sRequest, $sKey = "restart")
	If IsString($sRequest) Then
		Local $aRequest = StringRegExp($sRequest, '^GET[[:blank:]]\/\?(?i)' & $sKey & '(?-i)=(\S+)[[:blank:]]HTTP\/\d.\d\R', 2)
		If Not @error Then
			Return SetError(0, 0, $aRequest[1])
		ElseIf @error = 1 Then
			Return SetError(1, @extended, "Invalid Request")
		ElseIf @error = 2 Then
			Return SetError(2, @extended, "Bad pattern, array is invalid. @extended = offset of error in pattern.")
		EndIf
	Else
		Return SetError(3, 0, "Not A String")
	EndIf
EndFunc   ;==>CheckHTTPReq
#EndRegion ;**** Function to Check Request from Browswer and return restart string if request is valid****

#Region ;**** Function to Check for Multiple Password Failures****
Local $aPassFailure[1][3] = [[0, 0, 0]]
Func MultipleAttempts($sRemoteIP, $bFailure = False, $bSuccess = False)
	For $i = 1 To UBound($aPassFailure, 1) - 1
		If StringCompare($aPassFailure[$i][0], $sRemoteIP) = 0 Then
			If (_DateDiff('n', $aPassFailure[$i][2], _NowCalc()) >= 10) Or $bSuccess Then
				$aPassFailure[$i][1] = 0
				$aPassFailure[$i][2] = _NowCalc()
				Return SetError(0, 0, "Maximum Attempts Reset")
			ElseIf $bFailure Then
				$aPassFailure[$i][1] += 1
				$aPassFailure[$i][2] = _NowCalc()
			EndIf
			If $aPassFailure[$i][1] >= 15 Then
				Return SetError(1, $aPassFailure[$i][1], "Maximum Number of Attempts Exceeded. Wait 10 minutes before trying again.")
			Else
				Return SetError(0, $aPassFailure[$i][1], $aPassFailure[$i][1] & " attempts out of 15 used.")
			EndIf
			ExitLoop
		EndIf
	Next
	ReDim $aPassFailure[(UBound($aPassFailure, 1) + 1)][3]
	$aPassFailure[(UBound($aPassFailure, 1) - 1)][0] = $sRemoteIP
	$aPassFailure[(UBound($aPassFailure, 1) - 1)][1] = 0
	$aPassFailure[(UBound($aPassFailure, 1) - 1)][2] = _NowCalc
	Return SetError(0, 0, "IP Added to List")
EndFunc   ;==>MultipleAttempts
#EndRegion ;**** Function to Check for Multiple Password Failures****

#Region ;**** Uses other Functions to check connection, verify request is valid, verify restart code is correct, gather IP, and send proper message back to User depending on request received****
Func _RemoteRestart($vMSocket, $sCodes, $sKey = "restart", $sHideCodes = "no", $sServIP = "0.0.0.0", $sName = "Server", $bDebug = False)
	Local $vConnectedSocket = TCPAccept($vMSocket)
	If $vConnectedSocket >= 0 Then
		Local $sRecvIP = _TCP_Server_ClientIP($vConnectedSocket)
		Local $sRECV = TCPRecv($vConnectedSocket, 512)
		Local $iError = 0
		Local $iExtended = 0
		If @error = 0 Then
			Local $sRecvPass = CheckHTTPReq($sRECV, $sKey)
			If @error = 0 Then
				Local $sCheckMaxAttempts = MultipleAttempts($sRecvIP)
				If @error = 1 Then
					TCPSend($vConnectedSocket, "HTTP/1.1 429 Too Many Requests" & @CRLF & "Retry-After: 600" & @CRLF & "Connection: close" & @CRLF & "Content-Type: text/html; charset=iso-8859-1" & @CRLF & "Cache-Control: no-cache" & @CRLF & "Server: " & $sServIP & @CRLF & @CRLF)
					TCPSend($vConnectedSocket, "<!DOCTYPE HTML><html><head><link rel='icon' href='data:;base64,iVBORw0KGgo='><title>" & $sName & " Remote Restart</title></head><body><h1>429 Too Many Requests</h1><p>You tried to Restart " & $sName & " 15 times in a row.<BR>" & $sCheckMaxAttempts & "</body></html>")
					If $vConnectedSocket <> -1 Then TCPCloseSocket($vConnectedSocket)
					Return SetError(1, 0, "Restart ATTEMPT by Remote Host: " & $sRecvIP & " | Wrong Code was entered 15 times. User must wait 10 minutes before trying again.")
				EndIf
				Local $aPassCompare = PassCheck($sRecvPass, $sCodes)
				If $sHideCodes = "yes" Then
					$aPassCompare[2] = ObfPass($aPassCompare[2])
				EndIf
				If $aPassCompare[0] Then
					TCPSend($vConnectedSocket, "HTTP/1.1 200 OK" & @CRLF & "Connection: close" & @CRLF & "Content-Type: text/html; charset=iso-8859-1" & @CRLF & "Cache-Control: no-cache" & @CRLF & "Server: " & $sServIP & @CRLF & @CRLF)
					TCPSend($vConnectedSocket, "<!DOCTYPE HTML><html><head><link rel='icon' href='data:;base64,iVBORw0KGgo='><title>" & $sName & " Remote Restart</title></head><body><h1>Authentication Accepted. " & $sName & " Restarting.</h1></body></html>")
					If $vConnectedSocket <> -1 Then TCPCloseSocket($vConnectedSocket)
					$sCheckMaxAttempts = MultipleAttempts($sRecvIP, False, True)
					Return SetError(0, 0, "Restart Requested by Remote Host: " & $sRecvIP & " | User: " & $aPassCompare[1] & " | Pass: " & $aPassCompare[2])
				Else
					TCPSend($vConnectedSocket, "HTTP/1.1 403 Forbidden" & @CRLF & "Connection: close" & @CRLF & "Content-Type: text/html; charset=iso-8859-1" & @CRLF & "Cache-Control: no-cache" & @CRLF & "Server: " & $sServIP & @CRLF & @CRLF)
					TCPSend($vConnectedSocket, "<!DOCTYPE HTML><html><head><link rel='icon' href='data:;base64,iVBORw0KGgo='><title>" & $sName & " Remote Restart</title></head><body><h1>403 Forbidden</h1><p>You are not allowed to restart " & $sName & ".<BR> Attempt from <b>" & $sRecvIP & "</b> has been logged.</body></html>")
					If $vConnectedSocket <> -1 Then TCPCloseSocket($vConnectedSocket)
					$sCheckMaxAttempts = MultipleAttempts($sRecvIP, True, False)
					Return SetError(1, 0, "Restart ATTEMPT by Remote Host: " & $sRecvIP & " | Unknown Restart Code: " & $sRecvPass)
				EndIf
			Else
				$iError = @error
				$iExtended = @extended
				TCPSend($vConnectedSocket, "HTTP/1.1 404 Not Found" & @CRLF & "Connection: close" & @CRLF & "Content-Type: text/html; charset=iso-8859-1" & @CRLF & "Cache-Control: no-cache" & @CRLF & "Server: " & $sServIP & @CRLF & @CRLF)
				TCPSend($vConnectedSocket, "<!DOCTYPE HTML><html><head><link rel='icon' href='data:;base64,iVBORw0KGgo='><title>404 Not Found</title></head><body><h1>404 Not Found.</h1></body></html>")
				If $vConnectedSocket <> -1 Then TCPCloseSocket($vConnectedSocket)
				If $iError = 1 Then
					If Not $bDebug Then
						$sRECV = "Enable Debug to Log Full TCP Request"
					Else
						$sRECV = "Full TCP Request: " & @CRLF & $sRECV
					EndIf
					Return SetError(2, 0, "Invalid Restart Request by: " & $sRecvIP & ". Should be in the format of GET /?" & $sKey & "=user_pass HTTP/x.x | " & $sRECV)
				Else
					;This Shouldn't Happen
					Return SetError(3, 0, "CheckHTTPReq Failed with Error: " & $iError & " Extended: " & $iExtended & " [" & $sRecvPass & "]")
				EndIf
			EndIf
		Else
			$iError = @error
			$iExtended = @extended
			TCPSend($vConnectedSocket, "HTTP/1.1 400 Bad Request" & @CRLF & "Connection: close" & @CRLF & "Content-Type: text/html; charset=iso-8859-1" & @CRLF & "Cache-Control: no-cache" & @CRLF & "Server: " & $sServIP & @CRLF & @CRLF)
			TCPSend($vConnectedSocket, "<!DOCTYPE HTML><html><head><link rel='icon' href='data:;base64,iVBORw0KGgo='><title>400 Bad Request</title></head><body><h1>400 Bad Request.</h1></body></html>")
			If $vConnectedSocket <> -1 Then TCPCloseSocket($vConnectedSocket)
			Return SetError(4, 0, "TCPRecv Failed to Complete with Error: " & $iError & " Extended: " & $iExtended)
		EndIf
	EndIf
	Return SetError(-1, 0, "No Connection")
	If $vConnectedSocket <> -1 Then TCPCloseSocket($vConnectedSocket)
EndFunc   ;==>_RemoteRestart
#EndRegion ;**** Uses other Functions to check connection, verify request is valid, verify restart code is correct, gather IP, and send proper message back to User depending on request received****
#EndRegion ;**** _RemoteRestart ****

; ===================================================================================================

Func Gamercide()
	If @exitMethod <> 1 Then
		$Shutdown = MsgBox(4100, "Shut Down?", "Do you wish to shutdown Server " & $ServerName & "? (PID: " & $g_sConanPID & ")", 60)
		If $Shutdown = 6 Then
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server Shutdown - Intiated by User when closing ConanServerUtility Script")
			CloseServer()
		EndIf
		MsgBox(4096, "Thanks for using our Application", "Please visit us at http://www.Phoenix125.com and https://gamercide.com", 15)
		FileWriteLine($g_c_sLogFile, _NowCalc() & " ConanServerUtility Stopped by User")
	Else
		FileWriteLine($g_c_sLogFile, _NowCalc() & " ConanServerUtility Stopped")
	EndIf
	If $UseRemoteRestart = "yes" Then
		TCPShutdown()
	EndIf
	Exit
EndFunc   ;==>Gamercide

Func CloseServer()
	If WinExists($g_hConanhWnd) Then
		ControlSend($g_hConanhWnd, "", "", "^X" & @CR)
		ControlSend($g_hConanhWnd, "", "", "^X" & @CR)
		ControlSend($g_hConanhWnd, "", "", "^C")
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server Window Found - Sending Ctrl+C for Clean Shutdown")
		WinWaitClose($g_hConanhWnd, "", 60)
	EndIf
	If ProcessExists($g_sConanPID) Then
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server Did not Shut Down Properly. Killing Process")
		ProcessClose($g_sConanPID)
	EndIf
	If FileExists($g_c_sPIDFile) Then
		FileDelete($g_c_sPIDFile)
	EndIf
	If FileExists($g_c_sHwndFile) Then
		FileDelete($g_c_sHwndFile)
	EndIf
;~ 	If $aFullRestart = "yes" Then
;~ 		_RestartProgram()
;~ 	EndIf
EndFunc   ;==>CloseServer

#Region --- Restart Program ---
Func _RestartProgram() ; Thanks UP_NORTH
	$aRestart = True
	If @Compiled = 1 Then
		Run(FileGetShortName(@ScriptFullPath))
	Else
		Run(FileGetShortName(@AutoItExe) & " " & FileGetShortName(@ScriptFullPath))
	EndIf
	Exit
EndFunc   ;==>_RestartProgram
#EndRegion --- Restart Program ---

;~ Func LogWrite($sString)
;~ 	FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] " & $sString)
;~ EndFunc   ;==>LogWrite
Func LogWrite($Msg, $msgdebug = -1)
	$Msg = ReplaceCRLF($Msg)
	$msgdebug = ReplaceCRLF($msgdebug)
	$aLogFile = $aFolderLog & $aUtilName & "_Log_" & @YEAR & "-" & @MON & "-" & @MDAY & ".txt"
	$aLogDebugFile = $aFolderLog & $aUtilName & "_LogFull_" & @YEAR & "-" & @MON & "-" & @MDAY & ".txt"
	Local $tFileSize = FileGetSize($aLogFile)
	If $tFileSize > 10000000 Then
		FileMove($aLogFile, $aFolderLog & $aUtilName & "_Log_" & @YEAR & "-" & @MON & "-" & @MDAY & "-Part1.txt")
		FileWriteLine($aLogFile, _NowCalc() & " Log File Split.  First file:" & $aFolderLog & $aUtilName & "_Log_" & @YEAR & "-" & @MON & "-" & @MDAY & "-Part1.txt")
	EndIf
	Local $tFileSize = FileGetSize($aLogDebugFile)
	If $tFileSize > 10000000 Then
		FileMove($aLogDebugFile, $aFolderLog & $aUtilName & "_LogFull_" & @YEAR & "-" & @MON & "-" & @MDAY & "-Part1.txt")
		FileWriteLine($aLogFile, _NowCalc() & " Log File Split.  First file:" & $aFolderLog & $aUtilName & "_LogFull_" & @YEAR & "-" & @MON & "-" & @MDAY & "-Part1.txt")
	EndIf
	If $Msg <> "" Then
		FileWriteLine($aLogFile, _NowCalc() & $Msg)
;~ 		$aGUILogWindowText = _NowTime(5) & $Msg & @CRLF & StringLeft($aGUILogWindowText, 10000)
;~ 		If $aGUIReady Then GUICtrlSetData($LogTicker, $aGUILogWindowText)
	EndIf
	If $msgdebug <> "no" Then
		If $msgdebug = -1 Then
			FileWriteLine($aLogDebugFile, _NowCalc() & $Msg)
		Else
			FileWriteLine($aLogDebugFile, _NowCalc() & $msgdebug)
		EndIf
	EndIf
EndFunc   ;==>LogWrite
Func PurgeLogFile()
	$aLogQuantity = 10 ;kim125er
	$aPurgeLogFileName = $aFolderTemp & $aUtilName & "_PurgeLogFile.bat"
	Local $sFileExists = FileExists($aPurgeLogFileName)
	If $sFileExists = 1 Then
		FileDelete($aPurgeLogFileName)
	EndIf
	FileWriteLine($aPurgeLogFileName, "for /f ""tokens=* skip=" & $aLogQuantity & """ %%F in " & Chr(40) & "'dir """ & $aFolderLog & $aUtilName & "_Log_*.txt"" /o-d /tc /b'" & Chr(41) & " do del """ & $aFolderLog & "%%F""")
	FileWriteLine($aPurgeLogFileName, "for /f ""tokens=* skip=" & $aLogQuantity & """ %%F in " & Chr(40) & "'dir """ & $aFolderLog & $aUtilName & "_LogFull_*.txt"" /o-d /tc /b'" & Chr(41) & " do del """ & $aFolderLog & "%%F""")
	FileWriteLine($aPurgeLogFileName, "for /f ""tokens=* skip=" & $aLogQuantity & """ %%F in " & Chr(40) & "'dir """ & $aFolderLog & $aUtilName & "_OnlineUserLog_*.txt"" /o-d /tc /b'" & Chr(41) & " do del """ & $aFolderLog & "%%F""")
	LogWrite("", " Deleting log files >" & $aLogQuantity & " in folder " & $aFolderTemp)
	Run($aPurgeLogFileName, "", @SW_HIDE)
EndFunc   ;==>PurgeLogFile
Func RemoveTrailingSlash($aString)
	Local $bString = StringRight($aString, 1)
	If $bString = "\" Then $aString = StringTrimRight($aString, 1)
	Return $aString
EndFunc   ;==>RemoveTrailingSlash
Func ReplaceCRLF($tMsg0)
	Return StringRegExpReplace($tMsg0, '(*BSR_ANYCRLF)\R', "|") ; Idea by Ascend4nt
EndFunc   ;==>ReplaceCRLF
Func _SendDiscordPlayerChange()
	If $sDiscordPlayersAnounceChangeYN = "yes" Then
		Local $sMessage = $sDiscordPlayersMsg
		$sMessage = StringReplace($sMessage, "\o", $aPlayersCount)
		$sMessage = StringReplace($sMessage, "\m", $aMaxPlayers)
		SendDiscordMsg($sDiscordPlayersWH, $sMessage, $sDiscordPlayersBotName, $bDiscordPlayersBotUseTTS, $sDiscordPlayersBotAvatar)
	EndIf
EndFunc   ;==>_SendDiscordPlayerChange
Func _QueryCheck()
	Local $tReturn3 = False
	For $i = 1 To 6
		Local $tQueryCheckResult = _GetQuery($aQueryIP, $QueryPort)
		If UBound($tQueryCheckResult) < 10 Then
			If $i = 6 Then
				LogWrite(" [Query] Query Online Player check failed.")
				ExitLoop
			EndIf
		Else
			$tReturn3 = True
			$aServerQueryName = StringReplace($tQueryCheckResult[1], "$~!", "|")
			$aPlayersCount = Number($tQueryCheckResult[6])
			$aMaxPlayers = Number($tQueryCheckResult[7])
			$aServerQueryName = StringReplace($tQueryCheckResult[1], "$~!", "|")
			Local $tPlayers = IniRead($aUtilCFGFile, "CFG", "Last Online Player Count", 0)
			If $aPlayersCount <> $tPlayers Then
				_SendDiscordPlayerChange()
				IniWrite($aUtilCFGFile, "CFG", "Last Online Player Count", $aPlayersCount)
			EndIf
			ExitLoop
		EndIf
		Sleep(500)
	Next
	Return $tReturn3
EndFunc   ;==>_QueryCheck
Func _GetQuery($tIP, $tPort)
	Local $tFileBase = "SteamServerQuery"
	Local $tFileDL = $tFileBase & ".zip"
	Local $tFileRun = $aFolderTemp & $tFileBase & ".exe"
	If FileExists($tFileRun) = 0 Then
		Local $tFileExist = _DownloadAndExtractFile($tFileBase, "http://www.phoenix125.com/share/steamserverquery/" & $tFileDL, _
				"https://github.com/phoenix125/SteamServerQuery/releases/download/Latest_Version/SteamServerQuery.zip", 0, $aFolderTemp)
		If $tFileExist = False Then
			LogWrite(" [Query] ERROR!! Failed to download and extract " & $tFileBase & ". Query watchdog disabled until tool restarted.")
			$aQueryYN = "no"
		EndIf
	EndIf
	Local $mWaitms = 1000
	Local $tQuerycmd = '"' & $tFileRun & '" -po ' & $tIP & ':' & ($tPort)
	Local $mOut = Run($tQuerycmd, @ScriptDir, @SW_HIDE, $STDOUT_CHILD)
	Local $tTimer1 = TimerInit()
	Local $tExit = False
	While ProcessExists($mOut) And $tExit = False
		Sleep(50)
		If TimerDiff($tTimer1) > $mWaitms Then $tExit = True
	WEnd
	Local $tcrcatch = StdoutRead($mOut)
	StdioClose($mOut)
	If ProcessExists($mOut) Then ProcessClose($mOut)
	Local $tReturn = StringSplit($tcrcatch, @CRLF, 3)
	If StringLen($tcrcatch) < 10 Then LogWrite("", " [Query] Failed:" & $tQuerycmd & " | " & StringReplace($tcrcatch, @CRLF, "|"))
	Return $tReturn
EndFunc   ;==>_GetQuery
Func _DownloadAndExtractFile($tFileName, $tURL1, $tURL2 = "", $tSplash = 0, $tFolder = @ScriptDir, $tFile2 = 0, $tFile3 = 0, $tFile4 = 0, $tFile5 = 0)
	$tFolder = RemoveTrailingSlash($tFolder)
	If FileExists($tFolder & "\" & $tFileName & ".exe") = 0 Then
		If $tSplash > 0 Then
			ControlSetText($tSplash, "", "Static1", "Downloading " & $tFileName & ".exe.")
		Else
			_Splash("Downloading " & $tFileName & ".exe.", 0, 475)
		EndIf
		DirCreate($tFolder) ; to extract to
		InetGet($tURL1, $tFolder & "\" & $tFileName & ".zip", 1)
		If Not FileExists($tFolder & "\" & $tFileName & ".zip") Then
			SetError(1, 1) ; Failed to download from source 1
			LogWrite(" [Util] Error downloading " & $tFileName & " from Source1: " & $tURL1)
			InetGet($tURL2, $tFolder & "\" & $tFileName & ".zip", 1)
			If Not FileExists($tFolder & "\" & $tFileName & ".zip") Then
				SetError(1, 2) ; Failed to download from source 2
				LogWrite(" [Util] Error downloading " & $tFileName & " from Source2: " & $tURL2)
				_SplashOff()
				MsgBox($MB_OK, $aUtilName, "ERROR!!!  " & $tFileName & ".zip download failed.", 30)
				$aSplash = _Splash("")
				Return
			EndIf
		EndIf
		DirCreate($tFolder) ; to extract to
		_ExtractZip($tFolder & "\" & $tFileName & ".zip", "", $tFileName & ".exe", $tFolder)
		If $tFile2 <> 0 Then _ExtractZip($tFolder & "\" & $tFileName & ".zip", "", $tFile2, $tFolder)
		If $tFile3 <> 0 Then _ExtractZip($tFolder & "\" & $tFileName & ".zip", "", $tFile3, $tFolder)
		If $tFile4 <> 0 Then _ExtractZip($tFolder & "\" & $tFileName & ".zip", "", $tFile4, $tFolder)
		If $tFile5 <> 0 Then _ExtractZip($tFolder & "\" & $tFileName & ".zip", "", $tFile5, $tFolder)
		If FileExists($tFolder & "\" & $tFileName & ".exe") Then
			LogWrite(" [Util] Downloaded and installed " & $tFileName & ".")
		Else
			LogWrite(" [Util] Error extracting " & $tFileName & ".exe from " & $tFileName & ".zip")
			SetError(1, 3) ; Failed to extract file
			_SplashOff()
			MsgBox($MB_OK, $aUtilName, "ERROR!!! Extracting " & $tFileName & ".exe from " & $tFileName & ".zip failed.", 30)
			_SplashOff()
			$aSplash = _Splash("")
			Return
		EndIf
		FileDelete($tFolder & "\" & $tFileName & ".zip")
		_SplashOff()
		Return True ; Downloaded and installed file
	Else
		_SplashOff()
		Return False ; File existed
	EndIf
EndFunc   ;==>_DownloadAndExtractFile
Func DailyRestartCheck($sWDays, $sHours, $sMin)
	Local $iDay = -1
	Local $iHour = -1
	Local $aDays = StringSplit($sWDays, ",")
	Local $aHours = StringSplit($sHours, ",")
	For $d = 1 To $aDays[0]
		$iDay = StringStripWS($aDays[$d], 8)
		If Int($iDay) = Int(@WDAY) Or Int($iDay) = 0 Then
			For $h = 1 To $aHours[0]
				$iHour = StringStripWS($aHours[$h], 8)
				If Int($iHour) = Int(@HOUR) And Int($sMin) = Int(@MIN) Then
					Return True
				EndIf
			Next
		EndIf
	Next
	Return False
EndFunc   ;==>DailyRestartCheck
Func _Splash($tTxt, $tTime = 0, $tWidth = 400, $tHeight = 125)
	Local $tPID = SplashTextOn($aUtilName, $tTxt, $tWidth, $tHeight, -1, -1, $DLG_MOVEABLE, "")
	If $tTime > 0 Then
		Sleep($tTime)
		_SplashOff()
	EndIf
	Return $tPID
EndFunc   ;==>_Splash
Func _SplashOff()
	SplashOff()
	$aSplash = 0
EndFunc   ;==>_SplashOff

Func RotateFile($sFile, $sBackupQty, $bDelOrig = True) ;Pass File to Rotate and Quantity of Files to Keep for backup. Optionally Keep Original.
	Local $hCreateTime = @YEAR & @MON & @MDAY
	For $i = $sBackupQty To 1 Step -1
		If FileExists($sFile & $i) Then
			$hCreateTime = FileGetTime($sFile & $i, 1)
			FileMove($sFile & $i, $sFile & ($i + 1), 1)
			FileSetTime($sFile & ($i + 1), $hCreateTime, 1)
		EndIf
	Next
	If FileExists($sFile & ($sBackupQty + 1)) Then
		FileDelete($sFile & ($sBackupQty + 1))
	EndIf
	If FileExists($sFile) Then
		If $bDelOrig = True Then
			$hCreateTime = FileGetTime($sFile, 1)
			FileMove($sFile, $sFile & "1", 1)
			FileWriteLine($sFile, _NowCalc() & $sFile & " Rotated")
			FileSetTime($sFile & "1", $hCreateTime, 1)
			FileSetTime($sFile, @YEAR & @MON & @MDAY, 1)
		Else
			FileCopy($sFile, $sFile & "1", 1)
		EndIf
	EndIf
EndFunc   ;==>RotateFile

#Region ;**** Change Server Settings by Time and Day ****
Func CheckRange($sTimeSpan) ;Input Format WDAY-HHMMtoWDAY-HHMM <-Multiple Time ranges should be comma seperated
	Local $aReturn[3] = [False, True, ""]
	Local $aStartStop = StringSplit($sTimeSpan, ",")
	For $i = 1 To $aStartStop[0]
		$aStartStop[$i] = StringStripWS($aStartStop[$i], 8)
		If StringRegExp($aStartStop[$i], '^[0-7]-([01]\d|2[0-3])([0-5]\d)to[0-7]-([01]\d|2[0-3])([0-5]\d)$') Then
			Local $iTime = @HOUR & @MIN
			Local $aDayHourMinute = StringSplit($aStartStop[$i], "to", 1)
			Local $aStart = StringSplit($aDayHourMinute[1], "-")
			Local $aStop = StringSplit($aDayHourMinute[2], "-")
			If (($aStart[1] = "0") Or ($aStop[1] = "0")) And ($aStart[1] <> $aStop[1]) Then
				$aReturn[0] = False ;Return False - Not Currently within Date Range
				$aReturn[1] = False ;Return False - Incorrect String Format
				$aReturn[2] = $aStartStop[$i] ;Return Bad String
				ExitLoop
			ElseIf (($aStart[1] = "0") Or ($aStop[1] = "0")) And ($iTime >= $aStart[2]) And ($iTime <= $aStop[2]) Then
				$aReturn[0] = True ;Return True - Start and Stop Day set to Everyday '0', and it is currently within the time range
				ExitLoop
			ElseIf ($aStart[1] = $aStop[1]) And (((@WDAY = $aStart[1]) Or (@WDAY = $aStop[1])) And ($iTime >= $aStart[2]) And ($iTime <= $aStop[2])) Then
				$aReturn[0] = True ;Return True - Start Day is equal to Stop Day which is equal to Today, and it is currently within the time range
				ExitLoop
			ElseIf ($aStop[1] > $aStart[1]) And ((@WDAY > $aStart[1]) And (@WDAY < $aStop[1])) Then
				$aReturn[0] = True ;Return True - Start Day is less than Stop Day, and it is currently a day between those days.
				ExitLoop
			ElseIf ($aStop[1] < $aStart[1]) And ((@WDAY > $aStart[1]) Or (@WDAY < $aStop[1])) Then
				$aReturn[0] = True ;Return True - Start Day is Greater than Stop day, and it is currently a day between those days.
				ExitLoop
			ElseIf ($aStop[1] <> $aStart[1]) And ((@WDAY = $aStart[1] And $iTime >= $aStart[2]) Or (@WDAY = $aStop[1] And $iTime <= $aStop[2])) Then
				$aReturn[0] = True ;Return True - Start Day is not equal to Stop Day. However, one of those days is today and we are within the time range.
				ExitLoop
			Else
				$aReturn[0] = False ;Return False - Not Currently within Date Range
			EndIf
		Else
			$aReturn[1] = False ;Return False - Incorrect String Format
			$aReturn[2] = $aStartStop[$i] ;Return Bad String
			ExitLoop
		EndIf
	Next
	Return $aReturn
EndFunc   ;==>CheckRange

Func ChangeSetting($sINI, $sSection, $sKey, $sValue)
	$bReturn = False
	If FileExists($sINI) Then
		RotateFile($sINI, 4, False)
		IniWrite($sINI, $sSection, $sKey, $sValue)
		$bReturn = True
	Else
		$bReturn = False
	EndIf
	Return $bReturn
EndFunc   ;==>ChangeSetting

Func DeleteDefaultINI()
	Local $sINI = $serverdir & $g_sServerSettingIniLoc
	Local $sDefaultIni = $serverdir & "\ConanSandbox\Config\DefaultServerSettings.ini"
	If FileExists($sDefaultIni) Then
		RotateFile($sDefaultIni, 2, False)
		RotateFile($sINI, 4, False)
		Local $aDefaultIni = IniReadSection($sDefaultIni, "ServerSettings")
		If Not @error Then
			For $i = 1 To $aDefaultIni[0][0]
				Local $sCurrentValue = IniRead($sINI, "ServerSettings", $aDefaultIni[$i][0], "")
				If $sCurrentValue = "" Then
					IniWrite($sINI, "ServerSettings", $aDefaultIni[$i][0], $aDefaultIni[$i][1])
				EndIf
			Next
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Copied any missing Keys from Default Server Settings to Runtime Server Settings.")
		EndIf
		FileDelete($sDefaultIni)
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Backed up and Deleted " & $sDefaultIni)
	EndIf
EndFunc   ;==>DeleteDefaultINI

Func CheckSetting($sTimesAllowed, $sCheckINI, $sCheckSec, $sCheckKey, $bFlipSetting = False)
	Local $aReturn[3] = [False, False, False] ;In Range? Restart Needed? Setting Changed?
	Local $aInRange = CheckRange($sTimesAllowed)
	If $aInRange[1] Then
		If $bFlipSetting Then
			Local $sValforEnabled = "False"
			Local $sValforDisabled = "True"
			$aReturn[0] = True ;Flip Setting on. Make sure we notify the correct Change.
		Else
			Local $sValforEnabled = "True"
			Local $sValforDisabled = "False"
		EndIf

		Local $sCurrentSetting = IniRead($sCheckINI, $sCheckSec, $sCheckKey, "True")
		If $aInRange[0] And $sCurrentSetting = $sValforDisabled Then
			If $bFlipSetting Then
				$aReturn[0] = False ;In Range but Flip Setting True
			Else
				$aReturn[0] = True ;In Range
			EndIf
			If ProcessExists($g_sConanPID) Then
				$aReturn[1] = True ;Restart Needed
			Else
				Local $bSettingChanged = ChangeSetting($sCheckINI, $sCheckSec, $sCheckKey, $sValforEnabled)
				If $bSettingChanged Then
					$aReturn[2] = True ;Setting Changed
				EndIf
			EndIf
		ElseIf Not $aInRange[0] And $sCurrentSetting = $sValforEnabled Then
			If ProcessExists($g_sConanPID) Then
				$aReturn[1] = True ;Restart Needed
			Else
				Local $bSettingChanged = ChangeSetting($sCheckINI, $sCheckSec, $sCheckKey, $sValforDisabled)
				If $bSettingChanged Then
					$aReturn[2] = True ;Setting Changed
				EndIf
			EndIf
		EndIf
	Else
		FileWriteLine($g_c_sLogFile, _NowCalc() & "[" & $ServerName & "] [TIME FORMAT ERROR] Date Format Wrong. This was entered[ " & $aInRange[2] & " ]Proper Format is WDAY-HHMMtoWDAY-HHMM  (Sunday=1 Saturday=7 Everyday=0) It is currently " & @WDAY & "-" & @HOUR & @MIN & @CRLF)
	EndIf
	Return $aReturn
EndFunc   ;==>CheckSetting

Func RaidCheck($bFlipSetting = False)
	Local $sServerSettingsFile = $serverdir & $g_sServerSettingIniLoc
	Local $aRaidCheck = CheckSetting($g_sBuildingDmgEnabledTimes, $sServerSettingsFile, "ServerSettings", "CanDamagePlayerOwnedStructures", $bFlipSetting)
	If $aRaidCheck[1] Then ;Restart Needed
		If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
			$aBotMsg = $sAnnounceScheduledMessage
			$g_iBeginDelayedShutdown = 1
		Else
			CloseServer()
		EndIf
	ElseIf $aRaidCheck[0] And $aRaidCheck[2] Then ;In Time Range and Setting Changed to True
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Player Owned Structure Damage Enabled!")
		Local $sMessage = $ServerName & " Player Owned Structures Can be Damaged!"
		If $sUseDiscordBotScheduled = "yes" Then
			SendDiscordMsg($sDiscordWebHookURLs, $sMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
		EndIf
		If $sUseTwitchBotScheduled = "yes" Then
			TwitchMsgLog($sMessage)
		EndIf
	ElseIf Not $aRaidCheck[0] And $aRaidCheck[2] Then ;Not In Time Range and Setting Changed to False
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Player Owned Structure Damage Disabled!")
		Local $sMessage = $ServerName & " Player Owned Structures Can NOT be Damaged!"
		If $sUseDiscordBotScheduled = "yes" Then
			SendDiscordMsg($sDiscordWebHookURLs, $sMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
		EndIf
		If $sUseTwitchBotScheduled = "yes" Then
			TwitchMsgLog($sMessage)
		EndIf
	EndIf
EndFunc   ;==>RaidCheck

Func AvatarCheck($bFlipSetting = False)
	Local $sServerSettingsFile = $serverdir & $g_sServerSettingIniLoc
	Local $aAvatarCheck = CheckSetting($g_sAvatarsDisabledTimes, $sServerSettingsFile, "ServerSettings", "AvatarsDisabled", $bFlipSetting)
	If $aAvatarCheck[1] Then ;Restart Needed
		If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
			$aBotMsg = $sAnnounceScheduledMessage
			$g_iBeginDelayedShutdown = 1
		Else
			CloseServer()
		EndIf
	ElseIf $aAvatarCheck[0] And $aAvatarCheck[2] Then ;In Time Range and Setting Changed to True
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Avatars Disabled!")
		Local $sMessage = $ServerName & " Avatars are now Disabled!"
		If $sUseDiscordBotScheduled = "yes" Then
			SendDiscordMsg($sDiscordWebHookURLs, $sMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
		EndIf
		If $sUseTwitchBotScheduled = "yes" Then
			TwitchMsgLog($sMessage)
		EndIf
	ElseIf Not $aAvatarCheck[0] And $aAvatarCheck[2] Then ;Not In Time Range and Setting Changed to False
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Avatars Enabled!")
		Local $sMessage = $ServerName & " Avatars are now Enabled!"
		If $sUseDiscordBotScheduled = "yes" Then
			SendDiscordMsg($sDiscordWebHookURLs, $sMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
		EndIf
		If $sUseTwitchBotScheduled = "yes" Then
			TwitchMsgLog($sMessage)
		EndIf
	EndIf
EndFunc   ;==>AvatarCheck

#EndRegion ;**** Change Server Settings by Time and Day ****

#Region ;**** Function to Send Message to Discord ****
Func _Discord_ErrFunc($oError)
	FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Error: 0x" & Hex($oError.number) & " While Sending Discord Bot Message.")
EndFunc   ;==>_Discord_ErrFunc

Func SendDiscordMsg($sHookURLs, $sBotMessage, $sBotName = "", $sBotTTS = False, $sBotAvatar = "")
	Local $oErrorHandler = ObjEvent("AutoIt.Error", "_Discord_ErrFunc")
	Local $sJsonMessage = '{"content" : "' & $sBotMessage & '", "username" : "' & $sBotName & '", "tts" : "' & $sBotTTS & '", "avatar_url" : "' & $sBotAvatar & '"}'
	Local $oHTTPOST = ObjCreate("WinHttp.WinHttpRequest.5.1")
	Local $aHookURLs = StringSplit($sHookURLs, ",")
	For $i = 1 To $aHookURLs[0]
		$oHTTPOST.Open("POST", StringStripWS($aHookURLs[$i], 2) & "?wait=true", False)
		$oHTTPOST.SetRequestHeader("Content-Type", "application/json")
		$oHTTPOST.Send($sJsonMessage)
		Local $oStatusCode = $oHTTPOST.Status
		Local $sResponseText = ""
		If Not $g_bDebug Then
			$sResponseText = "Enable Debugging to See Full Response Message"
		Else
			$sResponseText = "Message Response: " & $oHTTPOST.ResponseText
		EndIf
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [Discord Bot] Message Status Code {" & $oStatusCode & "} " & $sResponseText)
	Next
EndFunc   ;==>SendDiscordMsg
#EndRegion ;**** Function to Send Message to Discord ****

#Region ;**** Post to Twitch Chat Function ****
Opt("TCPTimeout", 500)
Func SendTwitchMsg($sT_Nick, $sT_OAuth, $sT_Channels, $sT_Message)
	Local $aTwitchReturn[4] = [False, False, "", False]
	Local $sTwitchIRC = TCPConnect(TCPNameToIP("irc.chat.twitch.tv"), 6667)
	If @error Then
		TCPCloseSocket($sTwitchIRC)
		Return $aTwitchReturn
	Else
		$aTwitchReturn[0] = True ;Successfully Connected to irc
		TCPSend($sTwitchIRC, "PASS " & StringLower($sT_OAuth) & @CRLF)
		TCPSend($sTwitchIRC, "NICK " & StringLower($sT_Nick) & @CRLF)
		Local $sTwitchReceive = ""
		Local $iTimer1 = TimerInit()
		While TimerDiff($iTimer1) < 1000
			$sTwitchReceive &= TCPRecv($sTwitchIRC, 1)
			If @error Then ExitLoop
		WEnd
		Local $aTwitchReceiveLines = StringSplit($sTwitchReceive, @CRLF, 1)
		$aTwitchReturn[2] = $aTwitchReceiveLines[1] ;Status Line. Accepted or Not
		If StringRegExp($aTwitchReceiveLines[$aTwitchReceiveLines[0] - 1], "(?i):tmi.twitch.tv 376 " & $sT_Nick & " :>") Then
			$aTwitchReturn[1] = True ;Username and OAuth was accepted. Ready for PRIVMSG
			Local $aTwitchChannels = StringSplit($sT_Channels, ",")
			For $i = 1 To $aTwitchChannels[0]
				TCPSend($sTwitchIRC, "PRIVMSG #" & StringLower($aTwitchChannels[$i]) & " :" & $sT_Message & @CRLF)
				If @error Then
					TCPCloseSocket($sTwitchIRC)
					$aTwitchReturn[3] = False ;Check that all channels succeeded or none
					Return $aTwitchReturn
					ExitLoop
				Else
					$aTwitchReturn[3] = True ;Check that all channels succeeded or none
					If $aTwitchChannels[0] > 17 Then ;This is to make sure we don't break the rate limit
						Sleep(1600)
					Else
						Sleep(100)
					EndIf
				EndIf
			Next
			TCPSend($sTwitchIRC, "QUIT")
			TCPCloseSocket($sTwitchIRC)
		Else
			Return $aTwitchReturn
		EndIf
	EndIf
	Return $aTwitchReturn
EndFunc   ;==>SendTwitchMsg

Func TwitchMsgLog($sT_Msg)
	Local $aTwitchIRC = SendTwitchMsg($sTwitchNick, $sChatOAuth, $sTwitchChannels, $sT_Msg)
	If $aTwitchIRC[0] Then
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [Twitch Bot] Successfully Connected to Twitch IRC")
		If $aTwitchIRC[1] Then
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [Twitch Bot] Username and OAuth Accepted. [" & $aTwitchIRC[2] & "]")
			If $aTwitchIRC[3] Then
				FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [Twitch Bot] Successfully sent ( " & $sT_Msg & " ) to all Channels")
			Else
				FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [Twitch Bot] ERROR | Failed sending message ( " & $sT_Msg & " ) to one or more channels")
			EndIf
		Else
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [Twitch Bot] ERROR | Username and OAuth Denied [" & $aTwitchIRC[2] & "]")
		EndIf
	Else
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] [Twitch Bot] ERROR | Could not connect to Twitch IRC. Is this URL or port blocked? [irc.chat.twitch.tv:6667]")
	EndIf
EndFunc   ;==>TwitchMsgLog
#EndRegion ;**** Post to Twitch Chat Function ****

#Region ;*** MCRCON Commands
Func MCRCONcmd($l_sPath, $l_sIP, $l_sPort, $l_sPass, $l_sCommand, $l_sMessage = "")
	If $l_sCommand = "broadcast" Then
		RunWait($l_sPath & '\mcrcon.exe -c -s -H ' & $l_sIP & ' -P ' & $l_sPort & ' -p ' & $l_sPass & ' "broadcast ' & $l_sMessage & '"', $l_sPath, @SW_HIDE)
	EndIf
EndFunc   ;==>MCRCONcmd
#EndRegion ;*** MCRCON Commands


#Region ;**** Functions to Check for Update ****
Func GetLatestVersion($sCmdDir)
	Local $aReturn[2] = [False, ""]
	If FileExists($sCmdDir & "\appcache") Then
		DirRemove($sCmdDir & "\appcache", 1)
	EndIf
	If $g_sSteamLoginName = "" Then
		Local $tCMD1 = '"' & @ComSpec & '" /c "' & $sCmdDir & '\steamcmd.exe" +login anonymous +app_info_update 1 +app_info_print 443030 +app_info_print 443030 +exit > app_info.tmp'
		RunWait($tCMD1, $sCmdDir, @SW_HIDE)
	Else
		Local $tCMD1 = '"' & @ComSpec & '" /c "' & $sCmdDir & '\steamcmd.exe" +login ' & $g_sSteamLoginName & " " & $g_sSteamLoginPassword & ' +app_info_update 1 +app_info_print 443030 +app_info_print 443030 +exit > app_info.tmp'
		RunWait($tCMD1, $sCmdDir, @SW_HIDE)
	EndIf
	Local Const $sFilePath = $sCmdDir & "\app_info.tmp"
	Local $hFileOpen = FileOpen($sFilePath, 0)
	If $hFileOpen = -1 Then
		$aReturn[0] = False
	Else
		Local $sFileRead = FileRead($hFileOpen)
		Local $aAppInfo = StringSplit($sFileRead, '"branches"', 1)

		If UBound($aAppInfo) >= 3 Then
			$aAppInfo = StringSplit($aAppInfo[2], "AppID", 1)
		EndIf
		If UBound($aAppInfo) >= 2 Then
			$aAppInfo = StringSplit($aAppInfo[1], "}", 1)
		EndIf
		If UBound($aAppInfo) >= 2 Then
			$aAppInfo = StringSplit($aAppInfo[1], '"', 1)
		EndIf
		If UBound($aAppInfo) >= 7 Then
			$aReturn[0] = True
			$aReturn[1] = $aAppInfo[6]
		EndIf
		FileClose($hFileOpen)
		If FileExists($sFilePath) Then
			FileDelete($sFilePath)
		EndIf
	EndIf
	Return $aReturn
EndFunc   ;==>GetLatestVersion

Func GetInstalledVersion($sGameDir)
	Local $aReturn[2] = [False, ""]
	Local Const $sFilePath = $sGameDir & "\steamapps\appmanifest_443030.acf"
	Local $hFileOpen = FileOpen($sFilePath, 0)
	If $hFileOpen = -1 Then
		$aReturn[0] = False
	Else
		Local $sFileRead = FileRead($hFileOpen)
		Local $aAppInfo = StringSplit($sFileRead, '"buildid"', 1)

		If UBound($aAppInfo) >= 3 Then
			$aAppInfo = StringSplit($aAppInfo[2], '"buildid"', 1)
		EndIf
		If UBound($aAppInfo) >= 2 Then
			$aAppInfo = StringSplit($aAppInfo[1], '"LastOwner"', 1)
		EndIf
		If UBound($aAppInfo) >= 2 Then
			$aAppInfo = StringSplit($aAppInfo[1], '"', 1)
		EndIf
		If UBound($aAppInfo) >= 2 Then
			$aReturn[0] = True
			$aReturn[1] = $aAppInfo[2]
		EndIf

		If FileExists($sFilePath) Then
			FileClose($hFileOpen)
		EndIf
	EndIf
	Return $aReturn
EndFunc   ;==>GetInstalledVersion

Func UpdateCheck()
	If FileExists($steamcmddir & "\app_info.tmp") Then
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Delaying Update Check for 1 minute. | Found Existing " & $steamcmddir & "\app_info.tmp")
		Sleep(60000)
		If FileExists($steamcmddir & "\app_info.tmp") Then
			FileDelete($steamcmddir & "\app_info.tmp")
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Deleted " & $steamcmddir & "\app_info.tmp")
		EndIf
	EndIf

	;	FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Update Check Starting.")
	Local $bUpdateRequired = False
	Local $aLatestVersion = GetLatestVersion($steamcmddir)
	Local $aInstalledVersion = GetInstalledVersion($serverdir)

	If ($aLatestVersion[0] And $aInstalledVersion[0]) Then
		If StringCompare($aLatestVersion[1], $aInstalledVersion[1]) = 0 Then
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server is Up to Date. Version: " & $aInstalledVersion[1])
		Else
			FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server is Out of Date! Installed Version: " & $aInstalledVersion[1] & " Latest Version: " & $aLatestVersion[1])
			FileDelete($serverdir & "\steamapps\appmanifest_443030.acf")
			Global $aValidate = "yes"
			$aBotMsg = $sAnnounceServerUpdateMessage
			$bUpdateRequired = True
		EndIf
	ElseIf Not $aLatestVersion[0] And Not $aInstalledVersion[0] Then
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Something went wrong retrieving Latest Version")
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Something went wrong retrieving Installed Version")
	ElseIf Not $aInstalledVersion[0] Then
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Something went wrong retrieving Installed Version")
	ElseIf Not $aLatestVersion[0] Then
		FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Something went wrong retrieving Latest Version")
	EndIf
	Return $bUpdateRequired
EndFunc   ;==>UpdateCheck
#EndRegion ;**** Functions to Check for Update ****

#Region ;**** Functions to Check for Mod Updates ****
Func GetLatestModUpdateTime($sMod)
	Local $aReturn[3] = [False, False, ""]
	InetGet("http://steamcommunity.com/sharedfiles/filedetails/changelog/" & $sMod, @ScriptDir & "\mod_info.tmp", 1)
	Local Const $sFilePath = @ScriptDir & "\mod_info.tmp"
	Local $hFileOpen = FileOpen($sFilePath, 0)
	If $hFileOpen = -1 Then
		$aReturn[0] = False
	Else
		$aReturn[0] = True ;File Exists
		Local $sFileRead = FileRead($hFileOpen)
		Local $aAppInfo = StringSplit($sFileRead, 'Update:', 1)
		If UBound($aAppInfo) >= 3 Then
			$aAppInfo = StringSplit($aAppInfo[2], '">', 1)
		EndIf
		If UBound($aAppInfo) >= 2 Then
			$aAppInfo = StringSplit($aAppInfo[1], 'id="', 1)
		EndIf
		If UBound($aAppInfo) >= 2 And StringRegExp($aAppInfo[2], '^\d+$') Then
			$aReturn[1] = True ;Successfully Read numerical value at positition expected
			$aReturn[2] = $aAppInfo[2] ;Return Value Read
		EndIf
		FileClose($hFileOpen)
		If FileExists($sFilePath) Then
			FileDelete($sFilePath)
		EndIf
	EndIf
	Return $aReturn
EndFunc   ;==>GetLatestModUpdateTime

Func GetInstalledModUpdateTime($sServerDir, $sMod)
	Local $aReturn[3] = [False, False, ""]
	Local Const $sFilePath = $sServerDir & "\steamapps\workshop\appworkshop_440900.acf"
	Local $hFileOpen = FileOpen($sFilePath, 0)
	If $hFileOpen = -1 Then
		$aReturn[0] = False
	Else
		$aReturn[0] = True ;File Exists
		Local $sFileRead = FileRead($hFileOpen)
		Local $aAppInfo = StringSplit($sFileRead, '"WorkshopItemDetails"', 1)
		If UBound($aAppInfo) >= 3 Then
			$aAppInfo = StringSplit($aAppInfo[2], '"' & $sMod & '"', 1)
		EndIf
		If UBound($aAppInfo) >= 3 Then
			$aAppInfo = StringSplit($aAppInfo[2], '"timetouched', 1)
		EndIf
		If UBound($aAppInfo) >= 2 Then
			$aAppInfo = StringSplit($aAppInfo[1], '"', 1)
		EndIf
		If UBound($aAppInfo) >= 9 And StringRegExp($aAppInfo[8], '^\d+$') Then
			$aReturn[1] = True ;Successfully Read numerical value at positition expected
			$aReturn[2] = $aAppInfo[8] ;Return Value Read
		EndIf

		If FileExists($sFilePath) Then
			FileClose($hFileOpen)
		EndIf
	EndIf
	Return $aReturn
EndFunc   ;==>GetInstalledModUpdateTime

Func CheckMod($sMods, $sSteamCmdDir, $sServerDir)
	Local $aMods = StringSplit($sMods, ",")
	For $i = 1 To $aMods[0]
		$aMods[$i] = StringStripWS($aMods[$i], 8)
		Local $aLatestTime = GetLatestModUpdateTime($aMods[$i])
		Local $aInstalledTime = GetInstalledModUpdateTime($sServerDir, $aMods[$i])
		Local $bStopUpdate = False
		If Not $aLatestTime[0] Or Not $aLatestTime[1] Then
			LogWrite("Something went wrong downloading update information for mod [" & $aMods[$i] & "] Check your Mod List for incorrect Mod numbers.")
		ElseIf Not $aInstalledTime[0] Then
			$bStopUpdate = UpdateMod($aMods[$i], $sSteamCmdDir, $sServerDir, 0) ;No Manifest. Download First Mod
			If $bStopUpdate Then ExitLoop
		ElseIf Not $aInstalledTime[1] Then
			$bStopUpdate = UpdateMod($aMods[$i], $sSteamCmdDir, $sServerDir, 1) ;Mod does not exists. Download
			If $bStopUpdate Then ExitLoop
		ElseIf $aInstalledTime[1] And (StringCompare($aLatestTime[2], $aInstalledTime[2]) <> 0) Then
			$bStopUpdate = UpdateMod($aMods[$i], $sSteamCmdDir, $sServerDir, 2) ;Mod Out of Date. Update.
			If $bStopUpdate Then ExitLoop
		EndIf
	Next
	WriteModList($sServerDir)
	If Not $g_iBeginDelayedShutdown = 1 Then
		LogWrite("Mods are Up to Date.")
	EndIf
EndFunc   ;==>CheckMod

Func WriteModList($sServerDir)
	Local $sModFile = $sServerDir & "\ConanSandbox\Mods\modlist.txt"
	FileMove($sModFile, $sModFile & ".BAK", 9)
	Local $aMods = StringSplit($g_sMods, ",")
	Local $sModName = ""
	For $i = 1 To $aMods[0]
		$aMods[$i] = StringStripWS($aMods[$i], 8)
		$sModName = IniRead($g_c_sMODIDFile, "MODID2MODNAME", $aMods[$i], $aMods[$i])
		If $aMods[$i] = $sModName Then
			LogWrite("Could not find Mod name for " & $aMods[$i] & " in " & $g_c_sMODIDFile & " Please refer to README and manually update list.")
		Else
			FileWriteLine($sModFile, $sModName)
		EndIf
	Next
EndFunc   ;==>WriteModList

Func UpdateModNameList($sSteamCmdDir, $sMod)
	Local $hSearch = FileFindFirstFile($sSteamCmdDir & "\steamapps\workshop\content\440900\" & $sMod & "\*.pak")
	If $hSearch = -1 Then
		LogWrite("Error: No Mod Files Found.")
		Return False
	Else
		Local $sFileName = FileFindNextFile($hSearch)
		IniWrite($g_c_sMODIDFile, "MODID2MODNAME", $sMod, $sFileName)
	EndIf
	FileClose($hSearch)
EndFunc   ;==>UpdateModNameList

Func UpdateMod($sMod, $sSteamCmdDir, $sServerDir, $iReason)
	Local $bReturn = False
	If ProcessExists("steamcmd.exe") And FileExists($sSteamCmdDir & "\inuse.tmp") Then
		LogWrite("A different Script is currently using SteamCMD in this directory. Skipping Mod " & $sMod & " Update for Now")
		$bReturn = True ;Tell Previous Function to Exit Loop.
	ElseIf ProcessExists($g_sConanPID) Then
		LogWrite("Mod Update Found but Server is Currently Running.")
		If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
			$aBotMsg = $sAnnounceModUpdateMessage
			$g_iBeginDelayedShutdown = 1
		Else
			CloseServer()
		EndIf
		$bReturn = True ;Tell Previous Function to Exit Loop.
	Else
		FileWriteLine($sSteamCmdDir & "\inuse.tmp", "Conan Server Utility Using SteamCMD to Update Mod. If Steam Command is not running, delete this file.")
		Local Const $sModManifest = "\steamapps\workshop\appworkshop_440900.acf"
		If FileExists($sSteamCmdDir & $sModManifest) Then
			FileMove($sSteamCmdDir & $sModManifest, $sSteamCmdDir & $sModManifest & ".BAK")
		EndIf
		If FileExists($sServerDir & $sModManifest) Then
			FileMove($sServerDir & $sModManifest, $sSteamCmdDir & $sModManifest, 1 + 8)
		EndIf

		If $g_sSteamLoginName = "" Then
			Local $tCMD2 = "" & $sSteamCmdDir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +workshop_download_item 440900 " & $sMod & " +exit"
		Else
			Local $tCMD2 = "" & $sSteamCmdDir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login " & $g_sSteamLoginName & " " & $g_sSteamLoginPassword & " +workshop_download_item 440900 " & $sMod & " +exit"
		EndIf
		RunWait($tCMD2)
		If FileExists($sSteamCmdDir & "\steamapps\workshop\content\440900\" & $sMod) Then
			UpdateModNameList($sSteamCmdDir, $sMod)
			FileMove($sSteamCmdDir & "\steamapps\workshop\content\440900\" & $sMod & "\*.pak", $sServerDir & "\ConanSandbox\Mods\", 1 + 8)
			DirRemove($sSteamCmdDir & "\steamapps\workshop\content\440900\" & $sMod, 1)
		EndIf
		If FileExists($sSteamCmdDir & $sModManifest) Then
			FileMove($sSteamCmdDir & $sModManifest, $sServerDir & "\steamapps\workshop\appworkshop_440900.acf", 1 + 8)
		EndIf
		Switch $iReason
			Case 0
				LogWrite("No mod manifest existed. Downloaded First Mod " & $sMod & " to create Manifest. Should only see this once.")
			Case 1
				LogWrite("Mod " & $sMod & " did not exist. Downloaded.")
			Case 2
				LogWrite("Mod " & $sMod & " was out of date. Updated")
		EndSwitch
		$bReturn = False ;Tell Previous To Continue.
		Local $hTimeOutTimer = TimerInit()
		While FileExists($sSteamCmdDir & "\inuse.tmp")
			FileDelete($sSteamCmdDir & "\inuse.tmp")
			If @error Then ExitLoop
			If TimerDiff($hTimeOutTimer) > 10000 Then ExitLoop
		WEnd
	EndIf

	Return $bReturn
EndFunc   ;==>UpdateMod
#EndRegion ;**** Functions to Check for Mod Updates ****

Func CloseEPointError($iWaitTime = 10)
	WinWait("" & $g_c_sServerEXE & " - Entry Point Not Found", "", $iWaitTime)
	While WinExists("" & $g_c_sServerEXE & " - Entry Point Not Found")
		ControlSend("" & $g_c_sServerEXE & " - Entry Point Not Found", "", "", "{enter}")
	WEnd
EndFunc   ;==>CloseEPointError

Func SteamcmdDelete($sCmdDir)
	;	DirRemove($bSteamCMDDir,1)
	FileWriteLine($g_c_sLogFile, _NowCalc() & " [Update] Deleting SteamCMD package and steampps temp folders.")

	DirRemove($sCmdDir & "\package", 1)
	DirRemove($sCmdDir & "\steamapps", 1)
	;		InetGet("https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip", @ScriptDir & "\steamcmd.zip", 0)
	;		DirCreate($bSteamCMDDir) ; to extract to
	;		_ExtractZip(@ScriptDir & "\steamcmd.zip", "", "steamcmd.exe", $bSteamCMDDir)
	;		FileDelete(@ScriptDir & "\steamcmd.zip")
	;		FileWriteLine($aLogFile, _NowCalc() & " Running SteamCMD. [steamcmd.exe +quit]")
	;		RunWait("" & $bSteamCMDDir & "\steamcmd.exe +quit", @SW_MINIMIZE)
	;		If Not FileExists($bSteamCMDDir & "\steamcmd.exe") Then
	;			MsgBox(0x0, "SteamCMD Not Found", "Could not find steamcmd.exe at " & $bSteamCMDDir)
	;			Exit
	;		EndIf
EndFunc   ;==>SteamcmdDelete
