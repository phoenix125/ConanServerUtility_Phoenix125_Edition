#Region
#AutoIt3Wrapper_Icon=required\favicon.ico
#AutoIt3Wrapper_Outfile=builds\ConanServerUtility_Phoenix125_Edition_v1.3.4.exe
#AutoIt3Wrapper_Outfile_x64=builds\ConanServerUtility_Phoenix125_Edition_v1.3.4.exe
#AutoIt3Wrapper_Res_Comment=By Dateranoth - June 18, 2018 - Modded by Phoenix125.com
#AutoIt3Wrapper_Res_Description=Utility for Running Conan Server
#AutoIt3Wrapper_Res_Fileversion=1.3.4.0
#AutoIt3Wrapper_Res_LegalCopyright=Phoenix125.com @ http://www.Phoenix125.com & Dateranoth @ https://gamercide.com
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/mo
#EndRegion
Global Const $DTS_SHORTDATEFORMAT = 0
Global Const $DTS_UPDOWN = 1
Global Const $DTS_SHOWNONE = 2
Global Const $DTS_LONGDATEFORMAT = 4
Global Const $DTS_TIMEFORMAT = 9
Global Const $DTS_RIGHTALIGN = 32
Global Const $DTS_SHORTDATECENTURYFORMAT = 0x0000000C
Global Const $DTS_APPCANPARSE = 0x00000010
Global Const $DMW_LONGNAME = 0
Global Const $DMW_SHORTNAME = 1
Global Const $DMW_LOCALE_LONGNAME = 2
Global Const $DMW_LOCALE_SHORTNAME = 3
Global Const $GDT_ERROR = -1
Global Const $GDT_VALID = 0
Global Const $GDT_NONE = 1
Global Const $GDTR_MIN = 0x0001
Global Const $GDTR_MAX = 0x0002
Global Const $MCHT_NOWHERE = 0x00000000
Global Const $MCHT_TITLE = 0x00010000
Global Const $MCHT_CALENDAR = 0x00020000
Global Const $MCHT_TODAYLINK = 0x00030000
Global Const $MCHT_NEXT = 0x01000000
Global Const $MCHT_PREV = 0x02000000
Global Const $MCHT_TITLEBK = 0x00010000
Global Const $MCHT_TITLEMONTH = 0x00010001
Global Const $MCHT_TITLEYEAR = 0x00010002
Global Const $MCHT_TITLEBTNNEXT = 0x01010003
Global Const $MCHT_TITLEBTNPREV = 0x02010003
Global Const $MCHT_CALENDARBK = 0x00020000
Global Const $MCHT_CALENDARDATE = 0x00020001
Global Const $MCHT_CALENDARDAY = 0x00020002
Global Const $MCHT_CALENDARWEEKNUM = 0x00020003
Global Const $MCHT_CALENDARDATENEXT = 0x01020000
Global Const $MCHT_CALENDARDATEPREV = 0x02020000
Global Const $MCS_DAYSTATE = 0x0001
Global Const $MCS_MULTISELECT = 0x0002
Global Const $MCS_WEEKNUMBERS = 0x0004
Global Const $MCS_NOTODAYCIRCLE = 0x0008
Global Const $MCS_NOTODAY = 0x0010
Global Const $MCS_NOTRAILINGDATES = 0x0040
Global Const $MCS_SHORTDAYSOFWEEK = 0x0080
Global Const $MCS_NOSELCHANGEONNAV = 0x0100
Global Const $MCM_FIRST = 0x1000
Global Const $MCM_GETCALENDARBORDER = ($MCM_FIRST + 31)
Global Const $MCM_GETCALENDARCOUNT = ($MCM_FIRST + 23)
Global Const $MCM_GETCALENDARGRIDINFO = ($MCM_FIRST + 24)
Global Const $MCM_GETCALID = ($MCM_FIRST + 27)
Global Const $MCM_GETCOLOR = ($MCM_FIRST + 11)
Global Const $MCM_GETCURRENTVIEW = ($MCM_FIRST + 22)
Global Const $MCM_GETCURSEL = ($MCM_FIRST + 1)
Global Const $MCM_GETFIRSTDAYOFWEEK = ($MCM_FIRST + 16)
Global Const $MCM_GETMAXSELCOUNT = ($MCM_FIRST + 3)
Global Const $MCM_GETMAXTODAYWIDTH = ($MCM_FIRST + 21)
Global Const $MCM_GETMINREQRECT = ($MCM_FIRST + 9)
Global Const $MCM_GETMONTHDELTA = ($MCM_FIRST + 19)
Global Const $MCM_GETMONTHRANGE = ($MCM_FIRST + 7)
Global Const $MCM_GETRANGE = ($MCM_FIRST + 17)
Global Const $MCM_GETSELRANGE = ($MCM_FIRST + 5)
Global Const $MCM_GETTODAY = ($MCM_FIRST + 13)
Global Const $MCM_GETUNICODEFORMAT = 0x2000 + 6
Global Const $MCM_HITTEST = ($MCM_FIRST + 14)
Global Const $MCM_SETCALENDARBORDER = ($MCM_FIRST + 30)
Global Const $MCM_SETCALID = ($MCM_FIRST + 28)
Global Const $MCM_SETCOLOR = ($MCM_FIRST + 10)
Global Const $MCM_SETCURRENTVIEW = ($MCM_FIRST + 32)
Global Const $MCM_SETCURSEL = ($MCM_FIRST + 2)
Global Const $MCM_SETDAYSTATE = ($MCM_FIRST + 8)
Global Const $MCM_SETFIRSTDAYOFWEEK = ($MCM_FIRST + 15)
Global Const $MCM_SETMAXSELCOUNT = ($MCM_FIRST + 4)
Global Const $MCM_SETMONTHDELTA = ($MCM_FIRST + 20)
Global Const $MCM_SETRANGE = ($MCM_FIRST + 18)
Global Const $MCM_SETSELRANGE = ($MCM_FIRST + 6)
Global Const $MCM_SETTODAY = ($MCM_FIRST + 12)
Global Const $MCM_SETUNICODEFORMAT = 0x2000 + 5
Global Const $MCM_SIZERECTTOMIN = ($MCM_FIRST + 29)
Global Const $MCN_FIRST = -746
Global Const $MCN_SELCHANGE = ($MCN_FIRST - 3)
Global Const $MCN_GETDAYSTATE = ($MCN_FIRST - 1)
Global Const $MCN_SELECT = ($MCN_FIRST)
Global Const $MCN_VIEWCHANGE = ($MCN_FIRST - 4)
Global Const $MCSC_BACKGROUND = 0
Global Const $MCSC_MONTHBK = 4
Global Const $MCSC_TEXT = 1
Global Const $MCSC_TITLEBK = 2
Global Const $MCSC_TITLETEXT = 3
Global Const $MCSC_TRAILINGTEXT = 5
Global Const $DTM_FIRST = 0x1000
Global Const $DTM_GETSYSTEMTIME = $DTM_FIRST + 1
Global Const $DTM_SETSYSTEMTIME = $DTM_FIRST + 2
Global Const $DTM_GETRANGE = $DTM_FIRST + 3
Global Const $DTM_SETRANGE = $DTM_FIRST + 4
Global Const $DTM_SETFORMAT = $DTM_FIRST + 5
Global Const $DTM_SETMCCOLOR = $DTM_FIRST + 6
Global Const $DTM_GETMCCOLOR = $DTM_FIRST + 7
Global Const $DTM_GETMONTHCAL = $DTM_FIRST + 8
Global Const $DTM_SETMCFONT = $DTM_FIRST + 9
Global Const $DTM_GETMCFONT = $DTM_FIRST + 10
Global Const $DTM_SETFORMATW = $DTM_FIRST + 50
Global Const $DTN_FIRST = -740
Global Const $DTN_FIRST2 = -753
Global Const $DTN_DATETIMECHANGE = $DTN_FIRST2 - 6
Global Const $DTN_USERSTRING = $DTN_FIRST2 - 5
Global Const $DTN_WMKEYDOWN = $DTN_FIRST2 - 4
Global Const $DTN_FORMAT = $DTN_FIRST2 - 3
Global Const $DTN_FORMATQUERY = $DTN_FIRST2 - 2
Global Const $DTN_DROPDOWN = $DTN_FIRST2 - 1
Global Const $DTN_CLOSEUP = $DTN_FIRST2 - 0
Global Const $DTN_USERSTRINGW = $DTN_FIRST - 5
Global Const $DTN_WMKEYDOWNW = $DTN_FIRST - 4
Global Const $DTN_FORMATW = $DTN_FIRST - 3
Global Const $DTN_FORMATQUERYW = $DTN_FIRST - 2
Global Const $GUI_SS_DEFAULT_DATE = $DTS_LONGDATEFORMAT
Global Const $GUI_SS_DEFAULT_MONTHCAL = 0
Global Const $GMEM_FIXED = 0x0000
Global Const $GMEM_MOVEABLE = 0x0002
Global Const $GMEM_NOCOMPACT = 0x0010
Global Const $GMEM_NODISCARD = 0x0020
Global Const $GMEM_ZEROINIT = 0x0040
Global Const $GMEM_MODIFY = 0x0080
Global Const $GMEM_DISCARDABLE = 0x0100
Global Const $GMEM_NOT_BANKED = 0x1000
Global Const $GMEM_SHARE = 0x2000
Global Const $GMEM_DDESHARE = 0x2000
Global Const $GMEM_NOTIFY = 0x4000
Global Const $GMEM_LOWER = 0x1000
Global Const $GMEM_VALID_FLAGS = 0x7F72
Global Const $GMEM_INVALID_HANDLE = 0x8000
Global Const $GPTR = BitOR($GMEM_FIXED, $GMEM_ZEROINIT)
Global Const $GHND = BitOR($GMEM_MOVEABLE, $GMEM_ZEROINIT)
Global Const $MEM_COMMIT = 0x00001000
Global Const $MEM_RESERVE = 0x00002000
Global Const $MEM_TOP_DOWN = 0x00100000
Global Const $MEM_SHARED = 0x08000000
Global Const $PAGE_NOACCESS = 0x00000001
Global Const $PAGE_READONLY = 0x00000002
Global Const $PAGE_READWRITE = 0x00000004
Global Const $PAGE_EXECUTE = 0x00000010
Global Const $PAGE_EXECUTE_READ = 0x00000020
Global Const $PAGE_EXECUTE_READWRITE = 0x00000040
Global Const $PAGE_EXECUTE_WRITECOPY = 0x00000080
Global Const $PAGE_GUARD = 0x00000100
Global Const $PAGE_NOCACHE = 0x00000200
Global Const $PAGE_WRITECOMBINE = 0x00000400
Global Const $PAGE_WRITECOPY = 0x00000008
Global Const $MEM_DECOMMIT = 0x00004000
Global Const $MEM_RELEASE = 0x00008000
Global Enum $MEM_LOAD, $MEM_TOTALPHYSRAM, $MEM_AVAILPHYSRAM, $MEM_TOTALPAGEFILE, $MEM_AVAILPAGEFILE, $MEM_TOTALVIRTUAL, $MEM_AVAILVIRTUAL
Global Const $PROCESS_TERMINATE = 0x00000001
Global Const $PROCESS_CREATE_THREAD = 0x00000002
Global Const $PROCESS_SET_SESSIONID = 0x00000004
Global Const $PROCESS_VM_OPERATION = 0x00000008
Global Const $PROCESS_VM_READ = 0x00000010
Global Const $PROCESS_VM_WRITE = 0x00000020
Global Const $PROCESS_DUP_HANDLE = 0x00000040
Global Const $PROCESS_CREATE_PROCESS = 0x00000080
Global Const $PROCESS_SET_QUOTA = 0x00000100
Global Const $PROCESS_SET_INFORMATION = 0x00000200
Global Const $PROCESS_QUERY_INFORMATION = 0x00000400
Global Const $PROCESS_QUERY_LIMITED_INFORMATION = 0x1000
Global Const $PROCESS_SUSPEND_RESUME = 0x00000800
Global Const $PROCESS_ALL_ACCESS = 0x001F0FFF
Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege"
Global Const $SE_AUDIT_NAME = "SeAuditPrivilege"
Global Const $SE_BACKUP_NAME = "SeBackupPrivilege"
Global Const $SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege"
Global Const $SE_CREATE_GLOBAL_NAME = "SeCreateGlobalPrivilege"
Global Const $SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege"
Global Const $SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege"
Global Const $SE_CREATE_SYMBOLIC_LINK_NAME = 'SeCreateSymbolicLinkPrivilege'
Global Const $SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege"
Global Const $SE_DEBUG_NAME = "SeDebugPrivilege"
Global Const $SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege"
Global Const $SE_IMPERSONATE_NAME = "SeImpersonatePrivilege"
Global Const $SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege"
Global Const $SE_INC_WORKING_SET_NAME = 'SeIncreaseWorkingSetPrivilege'
Global Const $SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege"
Global Const $SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege"
Global Const $SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege"
Global Const $SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege"
Global Const $SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege"
Global Const $SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege"
Global Const $SE_RELABEL_NAME = 'SeRelabelPrivilege'
Global Const $SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege"
Global Const $SE_RESTORE_NAME = "SeRestorePrivilege"
Global Const $SE_SECURITY_NAME = "SeSecurityPrivilege"
Global Const $SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Global Const $SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege"
Global Const $SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege"
Global Const $SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege"
Global Const $SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege"
Global Const $SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege"
Global Const $SE_TCB_NAME = "SeTcbPrivilege"
Global Const $SE_TIME_ZONE_NAME = 'SeTimeZonePrivilege'
Global Const $SE_TRUSTED_CREDMAN_ACCESS_NAME = 'SeTrustedCredManAccessPrivilege'
Global Const $SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege"
Global Const $SE_UNDOCK_NAME = "SeUndockPrivilege"
Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x00000001
Global Const $SE_PRIVILEGE_ENABLED = 0x00000002
Global Const $SE_PRIVILEGE_REMOVED = 0x00000004
Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = 0x80000000
Global Const $SE_GROUP_MANDATORY = 0x00000001
Global Const $SE_GROUP_ENABLED_BY_DEFAULT = 0x00000002
Global Const $SE_GROUP_ENABLED = 0x00000004
Global Const $SE_GROUP_OWNER = 0x00000008
Global Const $SE_GROUP_USE_FOR_DENY_ONLY = 0x00000010
Global Const $SE_GROUP_INTEGRITY = 0x00000020
Global Const $SE_GROUP_INTEGRITY_ENABLED = 0x00000040
Global Const $SE_GROUP_RESOURCE = 0x20000000
Global Const $SE_GROUP_LOGON_ID = 0xC0000000
Global Enum $TOKENPRIMARY = 1, $TOKENIMPERSONATION
Global Enum $SECURITYANONYMOUS = 0, $SECURITYIDENTIFICATION, $SECURITYIMPERSONATION, $SECURITYDELEGATION
Global Enum $TOKENUSER = 1, $TOKENGROUPS, $TOKENPRIVILEGES, $TOKENOWNER, $TOKENPRIMARYGROUP, $TOKENDEFAULTDACL, $TOKENSOURCE, $TOKENTYPE, $TOKENIMPERSONATIONLEVEL, $TOKENSTATISTICS, $TOKENRESTRICTEDSIDS, $TOKENSESSIONID, $TOKENGROUPSANDPRIVILEGES, $TOKENSESSIONREFERENCE, $TOKENSANDBOXINERT, $TOKENAUDITPOLICY, $TOKENORIGIN, $TOKENELEVATIONTYPE, $TOKENLINKEDTOKEN, $TOKENELEVATION, $TOKENHASRESTRICTIONS, $TOKENACCESSINFORMATION, $TOKENVIRTUALIZATIONALLOWED, $TOKENVIRTUALIZATIONENABLED, $TOKENINTEGRITYLEVEL, $TOKENUIACCESS, $TOKENMANDATORYPOLICY, $TOKENLOGONSID
Global Const $TOKEN_ASSIGN_PRIMARY = 0x00000001
Global Const $TOKEN_DUPLICATE = 0x00000002
Global Const $TOKEN_IMPERSONATE = 0x00000004
Global Const $TOKEN_QUERY = 0x00000008
Global Const $TOKEN_QUERY_SOURCE = 0x00000010
Global Const $TOKEN_ADJUST_PRIVILEGES = 0x00000020
Global Const $TOKEN_ADJUST_GROUPS = 0x00000040
Global Const $TOKEN_ADJUST_DEFAULT = 0x00000080
Global Const $TOKEN_ADJUST_SESSIONID = 0x00000100
Global Const $TOKEN_ALL_ACCESS = 0x000F01FF
Global Const $TOKEN_READ = 0x00020008
Global Const $TOKEN_WRITE = 0x000200E0
Global Const $TOKEN_EXECUTE = 0x00020000
Global Const $TOKEN_HAS_TRAVERSE_PRIVILEGE = 0x00000001
Global Const $TOKEN_HAS_BACKUP_PRIVILEGE = 0x00000002
Global Const $TOKEN_HAS_RESTORE_PRIVILEGE = 0x00000004
Global Const $TOKEN_HAS_ADMIN_GROUP = 0x00000008
Global Const $TOKEN_IS_RESTRICTED = 0x00000010
Global Const $TOKEN_SESSION_NOT_REFERENCED = 0x00000020
Global Const $TOKEN_SANDBOX_INERT = 0x00000040
Global Const $TOKEN_HAS_IMPERSONATE_PRIVILEGE = 0x00000080
Global Const $RIGHTS_DELETE = 0x00010000
Global Const $READ_CONTROL = 0x00020000
Global Const $WRITE_DAC = 0x00040000
Global Const $WRITE_OWNER = 0x00080000
Global Const $SYNCHRONIZE = 0x00100000
Global Const $ACCESS_SYSTEM_SECURITY = 0x01000000
Global Const $STANDARD_RIGHTS_REQUIRED = 0x000f0000
Global Const $STANDARD_RIGHTS_READ = $READ_CONTROL
Global Const $STANDARD_RIGHTS_WRITE = $READ_CONTROL
Global Const $STANDARD_RIGHTS_EXECUTE = $READ_CONTROL
Global Const $STANDARD_RIGHTS_ALL = 0x001F0000
Global Const $SPECIFIC_RIGHTS_ALL = 0x0000FFFF
Global Enum $NOT_USED_ACCESS = 0, $GRANT_ACCESS, $SET_ACCESS, $DENY_ACCESS, $REVOKE_ACCESS, $SET_AUDIT_SUCCESS, $SET_AUDIT_FAILURE
Global Enum $TRUSTEE_IS_UNKNOWN = 0, $TRUSTEE_IS_USER, $TRUSTEE_IS_GROUP, $TRUSTEE_IS_DOMAIN, $TRUSTEE_IS_ALIAS, $TRUSTEE_IS_WELL_KNOWN_GROUP, $TRUSTEE_IS_DELETED, $TRUSTEE_IS_INVALID, $TRUSTEE_IS_COMPUTER
Global Const $LOGON_WITH_PROFILE = 0x00000001
Global Const $LOGON_NETCREDENTIALS_ONLY = 0x00000002
Global Enum $SIDTYPEUSER = 1, $SIDTYPEGROUP, $SIDTYPEDOMAIN, $SIDTYPEALIAS, $SIDTYPEWELLKNOWNGROUP, $SIDTYPEDELETEDACCOUNT, $SIDTYPEINVALID, $SIDTYPEUNKNOWN, $SIDTYPECOMPUTER, $SIDTYPELABEL
Global Const $SID_ADMINISTRATORS = "S-1-5-32-544"
Global Const $SID_USERS = "S-1-5-32-545"
Global Const $SID_GUESTS = "S-1-5-32-546"
Global Const $SID_ACCOUNT_OPERATORS = "S-1-5-32-548"
Global Const $SID_SERVER_OPERATORS = "S-1-5-32-549"
Global Const $SID_PRINT_OPERATORS = "S-1-5-32-550"
Global Const $SID_BACKUP_OPERATORS = "S-1-5-32-551"
Global Const $SID_REPLICATOR = "S-1-5-32-552"
Global Const $SID_OWNER = "S-1-3-0"
Global Const $SID_EVERYONE = "S-1-1-0"
Global Const $SID_NETWORK = "S-1-5-2"
Global Const $SID_INTERACTIVE = "S-1-5-4"
Global Const $SID_SYSTEM = "S-1-5-18"
Global Const $SID_AUTHENTICATED_USERS = "S-1-5-11"
Global Const $SID_SCHANNEL_AUTHENTICATION = "S-1-5-64-14"
Global Const $SID_DIGEST_AUTHENTICATION = "S-1-5-64-21"
Global Const $SID_NT_SERVICE = "S-1-5-80"
Global Const $SID_UNTRUSTED_MANDATORY_LEVEL = "S-1-16-0"
Global Const $SID_LOW_MANDATORY_LEVEL = "S-1-16-4096"
Global Const $SID_MEDIUM_MANDATORY_LEVEL = "S-1-16-8192"
Global Const $SID_MEDIUM_PLUS_MANDATORY_LEVEL = "S-1-16-8448"
Global Const $SID_HIGH_MANDATORY_LEVEL = "S-1-16-12288"
Global Const $SID_SYSTEM_MANDATORY_LEVEL = "S-1-16-16384"
Global Const $SID_PROTECTED_PROCESS_MANDATORY_LEVEL = "S-1-16-20480"
Global Const $SID_SECURE_PROCESS_MANDATORY_LEVEL = "S-1-16-28672"
Global Const $SID_ALL_SERVICES = "S-1-5-80-0"
Global Const $MB_OK = 0
Global Const $MB_OKCANCEL = 1
Global Const $MB_ABORTRETRYIGNORE = 2
Global Const $MB_YESNOCANCEL = 3
Global Const $MB_YESNO = 4
Global Const $MB_RETRYCANCEL = 5
Global Const $MB_CANCELTRYCONTINUE = 6
Global Const $MB_HELP = 0x4000
Global Const $MB_ICONSTOP = 16
Global Const $MB_ICONERROR = 16
Global Const $MB_ICONHAND = 16
Global Const $MB_ICONQUESTION = 32
Global Const $MB_ICONEXCLAMATION = 48
Global Const $MB_ICONWARNING = 48
Global Const $MB_ICONINFORMATION = 64
Global Const $MB_ICONASTERISK = 64
Global Const $MB_USERICON = 0x00000080
Global Const $MB_DEFBUTTON1 = 0
Global Const $MB_DEFBUTTON2 = 256
Global Const $MB_DEFBUTTON3 = 512
Global Const $MB_DEFBUTTON4 = 768
Global Const $MB_APPLMODAL = 0
Global Const $MB_SYSTEMMODAL = 4096
Global Const $MB_TASKMODAL = 8192
Global Const $MB_DEFAULT_DESKTOP_ONLY = 0x00020000
Global Const $MB_RIGHT = 0x00080000
Global Const $MB_RTLREADING = 0x00100000
Global Const $MB_SETFOREGROUND = 0x00010000
Global Const $MB_TOPMOST = 0x00040000
Global Const $MB_SERVICE_NOTIFICATION = 0x00200000
Global Const $MB_RIGHTJUSTIFIED = $MB_RIGHT
Global Const $IDTIMEOUT = -1
Global Const $IDOK = 1
Global Const $IDCANCEL = 2
Global Const $IDABORT = 3
Global Const $IDRETRY = 4
Global Const $IDIGNORE = 5
Global Const $IDYES = 6
Global Const $IDNO = 7
Global Const $IDCLOSE = 8
Global Const $IDHELP = 9
Global Const $IDTRYAGAIN = 10
Global Const $IDCONTINUE = 11
Global Const $STR_NOCASESENSE = 0
Global Const $STR_CASESENSE = 1
Global Const $STR_NOCASESENSEBASIC = 2
Global Const $STR_STRIPLEADING = 1
Global Const $STR_STRIPTRAILING = 2
Global Const $STR_STRIPSPACES = 4
Global Const $STR_STRIPALL = 8
Global Const $STR_CHRSPLIT = 0
Global Const $STR_ENTIRESPLIT = 1
Global Const $STR_NOCOUNT = 2
Global Const $STR_REGEXPMATCH = 0
Global Const $STR_REGEXPARRAYMATCH = 1
Global Const $STR_REGEXPARRAYFULLMATCH = 2
Global Const $STR_REGEXPARRAYGLOBALMATCH = 3
Global Const $STR_REGEXPARRAYGLOBALFULLMATCH = 4
Global Const $STR_ENDISSTART = 0
Global Const $STR_ENDNOTSTART = 1
Global Const $SB_ANSI = 1
Global Const $SB_UTF16LE = 2
Global Const $SB_UTF16BE = 3
Global Const $SB_UTF8 = 4
Global Const $SE_UTF16 = 0
Global Const $SE_ANSI = 1
Global Const $SE_UTF8 = 2
Global Const $STR_UTF16 = 0
Global Const $STR_UCS2 = 1
#Region Global Variables and Constants
Global Const $FORMAT_MESSAGE_ALLOCATE_BUFFER = 0x00000100
Global Const $FORMAT_MESSAGE_IGNORE_INSERTS = 0x00000200
Global Const $FORMAT_MESSAGE_FROM_STRING = 0x00000400
Global Const $FORMAT_MESSAGE_FROM_HMODULE = 0x00000800
Global Const $FORMAT_MESSAGE_FROM_SYSTEM = 0x00001000
Global Const $FORMAT_MESSAGE_ARGUMENT_ARRAY = 0x00002000
#EndRegion Global Variables and Constants
Func _WinAPI_Beep($iFreq = 500, $iDuration = 1000)
Local $aResult = DllCall("kernel32.dll", "bool", "Beep", "dword", $iFreq, "dword", $iDuration)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _WinAPI_FormatMessage($iFlags, $pSource, $iMessageID, $iLanguageID, ByRef $pBuffer, $iSize, $vArguments)
Local $sBufferType = "struct*"
If IsString($pBuffer) Then $sBufferType = "wstr"
Local $aResult = DllCall("kernel32.dll", "dword", "FormatMessageW", "dword", $iFlags, "struct*", $pSource, "dword", $iMessageID,  "dword", $iLanguageID, $sBufferType, $pBuffer, "dword", $iSize, "ptr", $vArguments)
If @error Or Not $aResult[0] Then Return SetError(@error + 10, @extended, 0)
If $sBufferType = "wstr" Then $pBuffer = $aResult[5]
Return $aResult[0]
EndFunc
Func _WinAPI_GetErrorMessage($iCode, $iLanguage = 0, Const $_iCurrentError = @error, Const $_iCurrentExtended = @extended)
Local $aRet = DllCall('kernel32.dll', 'dword', 'FormatMessageW', 'dword', 0x1000, 'ptr', 0, 'dword', $iCode,  'dword', $iLanguage, 'wstr', '', 'dword', 4096, 'ptr', 0)
If @error Or Not $aRet[0] Then Return SetError(@error, @extended, '')
Return SetError($_iCurrentError, $_iCurrentExtended, StringRegExpReplace($aRet[5], '[' & @LF & ',' & @CR & ']*\Z', ''))
EndFunc
Func _WinAPI_GetLastError(Const $_iCurrentError = @error, Const $_iCurrentExtended = @extended)
Local $aResult = DllCall("kernel32.dll", "dword", "GetLastError")
Return SetError($_iCurrentError, $_iCurrentExtended, $aResult[0])
EndFunc
Func _WinAPI_GetLastErrorMessage(Const $_iCurrentError = @error, Const $_iCurrentExtended = @extended)
Local $iLastError = _WinAPI_GetLastError()
Local $tBufferPtr = DllStructCreate("ptr")
Local $nCount = _WinAPI_FormatMessage(BitOR($FORMAT_MESSAGE_ALLOCATE_BUFFER, $FORMAT_MESSAGE_FROM_SYSTEM),  0, $iLastError, 0, $tBufferPtr, 0, 0)
If @error Then Return SetError(-@error, @extended, "")
Local $sText = ""
Local $pBuffer = DllStructGetData($tBufferPtr, 1)
If $pBuffer Then
If $nCount > 0 Then
Local $tBuffer = DllStructCreate("wchar[" & ($nCount + 1) & "]", $pBuffer)
$sText = DllStructGetData($tBuffer, 1)
If StringRight($sText, 2) = @CRLF Then $sText = StringTrimRight($sText, 2)
EndIf
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pBuffer)
EndIf
Return SetError($_iCurrentError, $_iCurrentExtended, $sText)
EndFunc
Func _WinAPI_MessageBeep($iType = 1)
Local $iSound
Switch $iType
Case 1
$iSound = 0
Case 2
$iSound = 16
Case 3
$iSound = 32
Case 4
$iSound = 48
Case 5
$iSound = 64
Case Else
$iSound = -1
EndSwitch
Local $aResult = DllCall("user32.dll", "bool", "MessageBeep", "uint", $iSound)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _WinAPI_MsgBox($iFlags, $sTitle, $sText)
BlockInput(0)
MsgBox($iFlags, $sTitle, $sText & "      ")
EndFunc
Func _WinAPI_SetLastError($iErrorCode, Const $_iCurrentError = @error, Const $_iCurrentExtended = @extended)
DllCall("kernel32.dll", "none", "SetLastError", "dword", $iErrorCode)
Return SetError($_iCurrentError, $_iCurrentExtended, Null)
EndFunc
Func _WinAPI_ShowError($sText, $bExit = True)
BlockInput(0)
MsgBox($MB_SYSTEMMODAL, "Error", $sText & "      ")
If $bExit Then Exit
EndFunc
Func _WinAPI_ShowLastError($sText = '', $bAbort = False, $iLanguage = 0, Const $_iCurrentError = @error, Const $_iCurrentExtended = @extended)
Local $sError
Local $iLastError = _WinAPI_GetLastError()
While 1
$sError = _WinAPI_GetErrorMessage($iLastError, $iLanguage)
If @error And $iLanguage Then
$iLanguage = 0
Else
ExitLoop
EndIf
WEnd
If StringStripWS($sText, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$sText &= @CRLF & @CRLF
Else
$sText = ''
EndIf
_WinAPI_MsgBox(BitOR(0x00040000, BitShift(0x00000010, -2 * (Not $iLastError))), $iLastError, $sText & $sError)
If $iLastError Then
_WinAPI_SetLastError($iLastError)
If $bAbort Then
Exit $iLastError
EndIf
EndIf
Return SetError($_iCurrentError, $_iCurrentExtended, 1)
EndFunc
Func _WinAPI_ShowMsg($sText)
_WinAPI_MsgBox($MB_SYSTEMMODAL, "Information", $sText)
EndFunc
Func __COMErrorFormating(ByRef $oCOMError, $sPrefix = @TAB)
Local Const $STR_STRIPTRAILING = 2
Local $sError = "COM Error encountered in " & @ScriptName & " (" & $oCOMError.Scriptline & ") :" & @CRLF &  $sPrefix & "Number        " & @TAB & "= 0x" & Hex($oCOMError.Number, 8) & " (" & $oCOMError.Number & ")" & @CRLF &  $sPrefix & "WinDescription" & @TAB & "= " & StringStripWS($oCOMError.WinDescription, $STR_STRIPTRAILING) & @CRLF &  $sPrefix & "Description   " & @TAB & "= " & StringStripWS($oCOMError.Description, $STR_STRIPTRAILING) & @CRLF &  $sPrefix & "Source        " & @TAB & "= " & $oCOMError.Source & @CRLF &  $sPrefix & "HelpFile      " & @TAB & "= " & $oCOMError.HelpFile & @CRLF &  $sPrefix & "HelpContext   " & @TAB & "= " & $oCOMError.HelpContext & @CRLF &  $sPrefix & "LastDllError  " & @TAB & "= " & $oCOMError.LastDllError & @CRLF &  $sPrefix & "Retcode       " & @TAB & "= 0x" & Hex($oCOMError.retcode)
Return $sError
EndFunc
Func _Security__AdjustTokenPrivileges($hToken, $bDisableAll, $tNewState, $iBufferLen, $tPrevState = 0, $pRequired = 0)
Local $aCall = DllCall("advapi32.dll", "bool", "AdjustTokenPrivileges", "handle", $hToken, "bool", $bDisableAll, "struct*", $tNewState, "dword", $iBufferLen, "struct*", $tPrevState, "struct*", $pRequired)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__CreateProcessWithToken($hToken, $iLogonFlags, $sCommandLine, $iCreationFlags, $sCurDir, $tSTARTUPINFO, $tPROCESS_INFORMATION)
Local $aCall = DllCall("advapi32.dll", "bool", "CreateProcessWithTokenW", "handle", $hToken, "dword", $iLogonFlags, "ptr", 0, "wstr", $sCommandLine, "dword", $iCreationFlags, "struct*", 0, "wstr", $sCurDir, "struct*", $tSTARTUPINFO, "struct*", $tPROCESS_INFORMATION)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
Return True
EndFunc
Func _Security__DuplicateTokenEx($hExistingToken, $iDesiredAccess, $iImpersonationLevel, $iTokenType)
Local $aCall = DllCall("advapi32.dll", "bool", "DuplicateTokenEx", "handle", $hExistingToken, "dword", $iDesiredAccess, "struct*", 0, "int", $iImpersonationLevel, "int", $iTokenType, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[6]
EndFunc
Func _Security__GetAccountSid($sAccount, $sSystem = "")
Local $aAcct = _Security__LookupAccountName($sAccount, $sSystem)
If @error Then Return SetError(@error, @extended, 0)
If IsArray($aAcct) Then Return _Security__StringSidToSid($aAcct[0])
Return ''
EndFunc
Func _Security__GetLengthSid($pSID)
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 10, @extended, 0)
Local $aCall = DllCall("advapi32.dll", "dword", "GetLengthSid", "struct*", $pSID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _Security__GetTokenInformation($hToken, $iClass)
Local $aCall = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $hToken, "int", $iClass, "struct*", 0, "dword", 0, "dword*", 0)
If @error Or Not $aCall[5] Then Return SetError(@error + 10, @extended, 0)
Local $iLen = $aCall[5]
Local $tBuffer = DllStructCreate("byte[" & $iLen & "]")
$aCall = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $hToken, "int", $iClass, "struct*", $tBuffer, "dword", DllStructGetSize($tBuffer), "dword*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $tBuffer
EndFunc
Func _Security__ImpersonateSelf($iLevel = $SECURITYIMPERSONATION)
Local $aCall = DllCall("advapi32.dll", "bool", "ImpersonateSelf", "int", $iLevel)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__IsValidSid($pSID)
Local $aCall = DllCall("advapi32.dll", "bool", "IsValidSid", "struct*", $pSID)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__LookupAccountName($sAccount, $sSystem = "")
Local $tData = DllStructCreate("byte SID[256]")
Local $aCall = DllCall("advapi32.dll", "bool", "LookupAccountNameW", "wstr", $sSystem, "wstr", $sAccount, "struct*", $tData, "dword*", DllStructGetSize($tData), "wstr", "", "dword*", DllStructGetSize($tData), "int*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Local $aAcct[3]
$aAcct[0] = _Security__SidToStringSid(DllStructGetPtr($tData, "SID"))
$aAcct[1] = $aCall[5]
$aAcct[2] = $aCall[7]
Return $aAcct
EndFunc
Func _Security__LookupAccountSid($vSID, $sSystem = "")
Local $pSID, $aAcct[3]
If IsString($vSID) Then
$pSID = _Security__StringSidToSid($vSID)
Else
$pSID = $vSID
EndIf
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 10, @extended, 0)
Local $sTypeSystem = "ptr"
If $sSystem Then $sTypeSystem = "wstr"
Local $aCall = DllCall("advapi32.dll", "bool", "LookupAccountSidW", $sTypeSystem, $sSystem, "struct*", $pSID, "wstr", "", "dword*", 65536, "wstr", "", "dword*", 65536, "int*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Local $aAcct[3]
$aAcct[0] = $aCall[3]
$aAcct[1] = $aCall[5]
$aAcct[2] = $aCall[7]
Return $aAcct
EndFunc
Func _Security__LookupPrivilegeValue($sSystem, $sName)
Local $aCall = DllCall("advapi32.dll", "bool", "LookupPrivilegeValueW", "wstr", $sSystem, "wstr", $sName, "int64*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[3]
EndFunc
Func _Security__OpenProcessToken($hProcess, $iAccess)
Local $aCall = DllCall("advapi32.dll", "bool", "OpenProcessToken", "handle", $hProcess, "dword", $iAccess, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[3]
EndFunc
Func _Security__OpenThreadToken($iAccess, $hThread = 0, $bOpenAsSelf = False)
If $hThread = 0 Then
Local $aResult = DllCall("kernel32.dll", "handle", "GetCurrentThread")
If @error Then Return SetError(@error + 10, @extended, 0)
$hThread = $aResult[0]
EndIf
Local $aCall = DllCall("advapi32.dll", "bool", "OpenThreadToken", "handle", $hThread, "dword", $iAccess, "bool", $bOpenAsSelf, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[4]
EndFunc
Func _Security__OpenThreadTokenEx($iAccess, $hThread = 0, $bOpenAsSelf = False)
Local $hToken = _Security__OpenThreadToken($iAccess, $hThread, $bOpenAsSelf)
If $hToken = 0 Then
Local Const $ERROR_NO_TOKEN = 1008
If _WinAPI_GetLastError() <> $ERROR_NO_TOKEN Then Return SetError(20, _WinAPI_GetLastError(), 0)
If Not _Security__ImpersonateSelf() Then Return SetError(@error + 10, _WinAPI_GetLastError(), 0)
$hToken = _Security__OpenThreadToken($iAccess, $hThread, $bOpenAsSelf)
If $hToken = 0 Then Return SetError(@error, _WinAPI_GetLastError(), 0)
EndIf
Return $hToken
EndFunc
Func _Security__SetPrivilege($hToken, $sPrivilege, $bEnable)
Local $iLUID = _Security__LookupPrivilegeValue("", $sPrivilege)
If $iLUID = 0 Then Return SetError(@error + 10, @extended, False)
Local Const $tagTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
Local $tCurrState = DllStructCreate($tagTOKEN_PRIVILEGES)
Local $iCurrState = DllStructGetSize($tCurrState)
Local $tPrevState = DllStructCreate($tagTOKEN_PRIVILEGES)
Local $iPrevState = DllStructGetSize($tPrevState)
Local $tRequired = DllStructCreate("int Data")
DllStructSetData($tCurrState, "Count", 1)
DllStructSetData($tCurrState, "LUID", $iLUID)
If Not _Security__AdjustTokenPrivileges($hToken, False, $tCurrState, $iCurrState, $tPrevState, $tRequired) Then Return SetError(2, @error, False)
DllStructSetData($tPrevState, "Count", 1)
DllStructSetData($tPrevState, "LUID", $iLUID)
Local $iAttributes = DllStructGetData($tPrevState, "Attributes")
If $bEnable Then
$iAttributes = BitOR($iAttributes, $SE_PRIVILEGE_ENABLED)
Else
$iAttributes = BitAND($iAttributes, BitNOT($SE_PRIVILEGE_ENABLED))
EndIf
DllStructSetData($tPrevState, "Attributes", $iAttributes)
If Not _Security__AdjustTokenPrivileges($hToken, False, $tPrevState, $iPrevState, $tCurrState, $tRequired) Then  Return SetError(3, @error, False)
Return True
EndFunc
Func _Security__SetTokenInformation($hToken, $iTokenInformation, $vTokenInformation, $iTokenInformationLength)
Local $aCall = DllCall("advapi32.dll", "bool", "SetTokenInformation", "handle", $hToken, "int", $iTokenInformation, "struct*", $vTokenInformation, "dword", $iTokenInformationLength)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
Return True
EndFunc
Func _Security__SidToStringSid($pSID)
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 10, 0, "")
Local $aCall = DllCall("advapi32.dll", "bool", "ConvertSidToStringSidW", "struct*", $pSID, "ptr*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, "")
Local $pStringSid = $aCall[2]
Local $aLen = DllCall("kernel32.dll", "int", "lstrlenW", "struct*", $pStringSid)
Local $sSID = DllStructGetData(DllStructCreate("wchar Text[" & $aLen[0] + 1 & "]", $pStringSid), "Text")
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pStringSid)
Return $sSID
EndFunc
Func _Security__SidTypeStr($iType)
Switch $iType
Case $SIDTYPEUSER
Return "User"
Case $SIDTYPEGROUP
Return "Group"
Case $SIDTYPEDOMAIN
Return "Domain"
Case $SIDTYPEALIAS
Return "Alias"
Case $SIDTYPEWELLKNOWNGROUP
Return "Well Known Group"
Case $SIDTYPEDELETEDACCOUNT
Return "Deleted Account"
Case $SIDTYPEINVALID
Return "Invalid"
Case $SIDTYPEUNKNOWN
Return "Unknown Type"
Case $SIDTYPECOMPUTER
Return "Computer"
Case $SIDTYPELABEL
Return "A mandatory integrity label SID"
Case Else
Return "Unknown SID Type"
EndSwitch
EndFunc
Func _Security__StringSidToSid($sSID)
Local $aCall = DllCall("advapi32.dll", "bool", "ConvertStringSidToSidW", "wstr", $sSID, "ptr*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Local $pSID = $aCall[2]
Local $tBuffer = DllStructCreate("byte Data[" & _Security__GetLengthSid($pSID) & "]", $pSID)
Local $tSID = DllStructCreate("byte Data[" & DllStructGetSize($tBuffer) & "]")
DllStructSetData($tSID, "Data", DllStructGetData($tBuffer, "Data"))
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pSID)
Return $tSID
EndFunc
Global Const $tagPOINT = "struct;long X;long Y;endstruct"
Global Const $tagRECT = "struct;long Left;long Top;long Right;long Bottom;endstruct"
Global Const $tagSIZE = "struct;long X;long Y;endstruct"
Global Const $tagMARGINS = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $tagFILETIME = "struct;dword Lo;dword Hi;endstruct"
Global Const $tagSYSTEMTIME = "struct;word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds;endstruct"
Global Const $tagTIME_ZONE_INFORMATION = "struct;long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias;endstruct"
Global Const $tagNMHDR = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Global Const $tagCOMBOBOXEXITEM = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" &  "int Indent;lparam Param"
Global Const $tagNMCBEDRAGBEGIN = $tagNMHDR & ";int ItemID;wchar szText[260]"
Global Const $tagNMCBEENDEDIT = $tagNMHDR & ";bool fChanged;int NewSelection;wchar szText[260];int Why"
Global Const $tagNMCOMBOBOXEX = $tagNMHDR & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" &  "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $tagDTPRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" &  "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" &  "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $tagNMDATETIMECHANGE = $tagNMHDR & ";dword Flag;" & $tagSYSTEMTIME
Global Const $tagNMDATETIMEFORMAT = $tagNMHDR & ";ptr Format;" & $tagSYSTEMTIME & ";ptr pDisplay;wchar Display[64]"
Global Const $tagNMDATETIMEFORMATQUERY = $tagNMHDR & ";ptr Format;struct;long SizeX;long SizeY;endstruct"
Global Const $tagNMDATETIMEKEYDOWN = $tagNMHDR & ";int VirtKey;ptr Format;" & $tagSYSTEMTIME
Global Const $tagNMDATETIMESTRING = $tagNMHDR & ";ptr UserString;" & $tagSYSTEMTIME & ";dword Flags"
Global Const $tagEVENTLOGRECORD = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" &  "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" &  "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $tagGDIP_EFFECTPARAMS_Blur = "float Radius; bool ExpandEdge"
Global Const $tagGDIP_EFFECTPARAMS_BrightnessContrast = "int BrightnessLevel; int ContrastLevel"
Global Const $tagGDIP_EFFECTPARAMS_ColorBalance = "int CyanRed; int MagentaGreen; int YellowBlue"
Global Const $tagGDIP_EFFECTPARAMS_ColorCurve = "int Adjustment; int Channel; int AdjustValue"
Global Const $tagGDIP_EFFECTPARAMS_ColorLUT = "byte LutB[256]; byte LutG[256]; byte LutR[256]; byte LutA[256]"
Global Const $tagGDIP_EFFECTPARAMS_HueSaturationLightness = "int HueLevel; int SaturationLevel; int LightnessLevel"
Global Const $tagGDIP_EFFECTPARAMS_Levels = "int Highlight; int Midtone; int Shadow"
Global Const $tagGDIP_EFFECTPARAMS_RedEyeCorrection = "uint NumberOfAreas; ptr Areas"
Global Const $tagGDIP_EFFECTPARAMS_Sharpen = "float Radius; float Amount"
Global Const $tagGDIP_EFFECTPARAMS_Tint = "int Hue; int Amount"
Global Const $tagGDIPBITMAPDATA = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $tagGDIPCOLORMATRIX = "float m[25]"
Global Const $tagGDIPENCODERPARAM = "struct;byte GUID[16];ulong NumberOfValues;ulong Type;ptr Values;endstruct"
Global Const $tagGDIPENCODERPARAMS = "uint Count;" & $tagGDIPENCODERPARAM
Global Const $tagGDIPRECTF = "struct;float X;float Y;float Width;float Height;endstruct"
Global Const $tagGDIPSTARTUPINPUT = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $tagGDIPSTARTUPOUTPUT = "ptr HookProc;ptr UnhookProc"
Global Const $tagGDIPIMAGECODECINFO = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" &  "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $tagGDIPPENCODERPARAMS = "uint Count;byte Params[1]"
Global Const $tagHDITEM = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $tagNMHDDISPINFO = $tagNMHDR & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $tagNMHDFILTERBTNCLICK = $tagNMHDR & ";int Item;" & $tagRECT
Global Const $tagNMHEADER = $tagNMHDR & ";int Item;int Button;ptr pItem"
Global Const $tagGETIPAddress = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $tagNMIPADDRESS = $tagNMHDR & ";int Field;int Value"
Global Const $tagLVFINDINFO = "struct;uint Flags;ptr Text;lparam Param;" & $tagPOINT & ";uint Direction;endstruct"
Global Const $tagLVHITTESTINFO = $tagPOINT & ";uint Flags;int Item;int SubItem;int iGroup"
Global Const $tagLVITEM = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" &  "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
Global Const $tagNMLISTVIEW = $tagNMHDR & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" &  "struct;long ActionX;long ActionY;endstruct;lparam Param"
Global Const $tagNMLVCUSTOMDRAW = "struct;" & $tagNMHDR & ";dword dwDrawStage;handle hdc;" & $tagRECT &  ";dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam;endstruct" &  ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" &  "int iIconPhase;int iPartID;int iStateID;struct;long TextLeft;long TextTop;long TextRight;long TextBottom;endstruct;uint uAlign"
Global Const $tagNMLVDISPINFO = $tagNMHDR & ";" & $tagLVITEM
Global Const $tagNMLVFINDITEM = $tagNMHDR & ";int Start;" & $tagLVFINDINFO
Global Const $tagNMLVGETINFOTIP = $tagNMHDR & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $tagNMITEMACTIVATE = $tagNMHDR & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" &  $tagPOINT & ";lparam lParam;uint KeyFlags"
Global Const $tagNMLVKEYDOWN = "align 1;" & $tagNMHDR & ";word VKey;uint Flags"
Global Const $tagNMLVSCROLL = $tagNMHDR & ";int DX;int DY"
Global Const $tagMCHITTESTINFO = "uint Size;" & $tagPOINT & ";uint Hit;" & $tagSYSTEMTIME &  ";" & $tagRECT & ";int iOffset;int iRow;int iCol"
Global Const $tagMCMONTHRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds;short Span"
Global Const $tagMCRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $tagMCSELRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds"
Global Const $tagNMDAYSTATE = $tagNMHDR & ";" & $tagSYSTEMTIME & ";int DayState;ptr pDayState"
Global Const $tagNMSELCHANGE = $tagNMHDR &  ";struct;word BegYear;word BegMonth;word BegDOW;word BegDay;word BegHour;word BegMinute;word BegSecond;word BegMSeconds;endstruct;" &  "struct;word EndYear;word EndMonth;word EndDOW;word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds;endstruct"
Global Const $tagNMOBJECTNOTIFY = $tagNMHDR & ";int Item;ptr piid;ptr pObject;long Result;dword dwFlags"
Global Const $tagNMTCKEYDOWN = "align 1;" & $tagNMHDR & ";word VKey;uint Flags"
Global Const $tagTVITEM = "struct;uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" &  "int Children;lparam Param;endstruct"
Global Const $tagTVITEMEX = "struct;" & $tagTVITEM & ";int Integral;uint uStateEx;hwnd hwnd;int iExpandedImage;int iReserved;endstruct"
Global Const $tagNMTREEVIEW = $tagNMHDR & ";uint Action;" &  "struct;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" &  "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;endstruct;" &  "struct;uint NewMask;handle NewhItem;uint NewState;uint NewStateMask;" &  "ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;lparam NewParam;endstruct;" &  "struct;long PointX;long PointY;endstruct"
Global Const $tagNMTVCUSTOMDRAW = "struct;" & $tagNMHDR & ";dword DrawStage;handle HDC;" & $tagRECT &  ";dword_ptr ItemSpec;uint ItemState;lparam ItemParam;endstruct" &  ";dword ClrText;dword ClrTextBk;int Level"
Global Const $tagNMTVDISPINFO = $tagNMHDR & ";" & $tagTVITEM
Global Const $tagNMTVGETINFOTIP = $tagNMHDR & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $tagNMTVITEMCHANGE = $tagNMHDR & ";uint Changed;handle hItem;uint StateNew;uint StateOld;lparam lParam;"
Global Const $tagTVHITTESTINFO = $tagPOINT & ";uint Flags;handle Item"
Global Const $tagNMTVKEYDOWN = "align 1;" & $tagNMHDR & ";word VKey;uint Flags"
Global Const $tagNMMOUSE = $tagNMHDR & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $tagPOINT & ";lparam HitInfo"
Global Const $tagTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
Global Const $tagIMAGEINFO = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $tagRECT
Global Const $tagMENUINFO = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $tagMENUITEMINFO = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" &  "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $tagREBARBANDINFO = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" &  "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" &  "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader" & ((@OSVersion = "WIN_XP") ? "" : ";" & $tagRECT & ";uint uChevronState")
Global Const $tagNMREBARAUTOBREAK = $tagNMHDR & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $tagNMRBAUTOSIZE = $tagNMHDR & ";bool fChanged;" &  "struct;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;endstruct;" &  "struct;long ActualLeft;long ActualTop;long ActualRight;long ActualBottom;endstruct"
Global Const $tagNMREBAR = $tagNMHDR & ";dword dwMask;uint uBand;uint fStyle;uint wID;lparam lParam"
Global Const $tagNMREBARCHEVRON = $tagNMHDR & ";uint uBand;uint wID;lparam lParam;" & $tagRECT & ";lparam lParamNM"
Global Const $tagNMREBARCHILDSIZE = $tagNMHDR & ";uint uBand;uint wID;" &  "struct;long CLeft;long CTop;long CRight;long CBottom;endstruct;" &  "struct;long BLeft;long BTop;long BRight;long BBottom;endstruct"
Global Const $tagCOLORSCHEME = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $tagNMTOOLBAR = $tagNMHDR & ";int iItem;" &  "struct;int iBitmap;int idCommand;byte fsState;byte fsStyle;dword_ptr dwData;int_ptr iString;endstruct" &  ";int cchText;ptr pszText;" & $tagRECT
Global Const $tagNMTBHOTITEM = $tagNMHDR & ";int idOld;int idNew;dword dwFlags"
Global Const $tagTBBUTTON = "int Bitmap;int Command;byte State;byte Style;dword_ptr Param;int_ptr String"
Global Const $tagTBBUTTONINFO = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $tagNETRESOURCE = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $tagOVERLAPPED = "ulong_ptr Internal;ulong_ptr InternalHigh;struct;dword Offset;dword OffsetHigh;endstruct;handle hEvent"
Global Const $tagOPENFILENAME = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" &  "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" &  "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" &  "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $tagBITMAPINFOHEADER = "struct;dword biSize;long biWidth;long biHeight;word biPlanes;word biBitCount;" &  "dword biCompression;dword biSizeImage;long biXPelsPerMeter;long biYPelsPerMeter;dword biClrUsed;dword biClrImportant;endstruct"
Global Const $tagBITMAPINFO = $tagBITMAPINFOHEADER & ";dword biRGBQuad[1]"
Global Const $tagBLENDFUNCTION = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $tagGUID = "struct;ulong Data1;ushort Data2;ushort Data3;byte Data4[8];endstruct"
Global Const $tagWINDOWPLACEMENT = "uint length;uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $tagWINDOWPOS = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $tagSCROLLINFO = "uint cbSize;uint fMask;int nMin;int nMax;uint nPage;int nPos;int nTrackPos"
Global Const $tagSCROLLBARINFO = "dword cbSize;" & $tagRECT & ";int dxyLineButton;int xyThumbTop;" &  "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $tagLOGFONT = "struct;long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" &  "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32];endstruct"
Global Const $tagKBDLLHOOKSTRUCT = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $tagPROCESS_INFORMATION = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $tagSTARTUPINFO = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" &  "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" &  "handle StdOutput;handle StdError"
Global Const $tagSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $tagWIN32_FIND_DATA = "dword dwFileAttributes;dword ftCreationTime[2];dword ftLastAccessTime[2];dword ftLastWriteTime[2];dword nFileSizeHigh;dword nFileSizeLow;dword dwReserved0;dword dwReserved1;wchar cFileName[260];wchar cAlternateFileName[14]"
Global Const $tagTEXTMETRIC = "long tmHeight;long tmAscent;long tmDescent;long tmInternalLeading;long tmExternalLeading;" &  "long tmAveCharWidth;long tmMaxCharWidth;long tmWeight;long tmOverhang;long tmDigitizedAspectX;long tmDigitizedAspectY;" &  "wchar tmFirstChar;wchar tmLastChar;wchar tmDefaultChar;wchar tmBreakChar;byte tmItalic;byte tmUnderlined;byte tmStruckOut;" &  "byte tmPitchAndFamily;byte tmCharSet"
Global Const $tagMEMMAP = "handle hProc;ulong_ptr Size;ptr Mem"
Func _MemFree(ByRef $tMemMap)
Local $pMemory = DllStructGetData($tMemMap, "Mem")
Local $hProcess = DllStructGetData($tMemMap, "hProc")
Local $bResult = _MemVirtualFreeEx($hProcess, $pMemory, 0, $MEM_RELEASE)
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess)
If @error Then Return SetError(@error, @extended, False)
Return $bResult
EndFunc
Func _MemGlobalAlloc($iBytes, $iFlags = 0)
Local $aResult = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $iFlags, "ulong_ptr", $iBytes)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _MemGlobalFree($hMemory)
Local $aResult = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _MemGlobalLock($hMemory)
Local $aResult = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _MemGlobalSize($hMemory)
Local $aResult = DllCall("kernel32.dll", "ulong_ptr", "GlobalSize", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _MemGlobalUnlock($hMemory)
Local $aResult = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _MemInit($hWnd, $iSize, ByRef $tMemMap)
Local $aResult = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hWnd, "dword*", 0)
If @error Then Return SetError(@error + 10, @extended, 0)
Local $iProcessID = $aResult[2]
If $iProcessID = 0 Then Return SetError(1, 0, 0)
Local $iAccess = BitOR($PROCESS_VM_OPERATION, $PROCESS_VM_READ, $PROCESS_VM_WRITE)
Local $hProcess = __Mem_OpenProcess($iAccess, False, $iProcessID, True)
Local $iAlloc = BitOR($MEM_RESERVE, $MEM_COMMIT)
Local $pMemory = _MemVirtualAllocEx($hProcess, 0, $iSize, $iAlloc, $PAGE_READWRITE)
If $pMemory = 0 Then Return SetError(2, 0, 0)
$tMemMap = DllStructCreate($tagMEMMAP)
DllStructSetData($tMemMap, "hProc", $hProcess)
DllStructSetData($tMemMap, "Size", $iSize)
DllStructSetData($tMemMap, "Mem", $pMemory)
Return $pMemory
EndFunc
Func _MemMoveMemory($pSource, $pDest, $iLength)
DllCall("kernel32.dll", "none", "RtlMoveMemory", "struct*", $pDest, "struct*", $pSource, "ulong_ptr", $iLength)
If @error Then Return SetError(@error, @extended)
EndFunc
Func _MemRead(ByRef $tMemMap, $pSrce, $pDest, $iSize)
Local $aResult = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", DllStructGetData($tMemMap, "hProc"),  "ptr", $pSrce, "struct*", $pDest, "ulong_ptr", $iSize, "ulong_ptr*", 0)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _MemWrite(ByRef $tMemMap, $pSrce, $pDest = 0, $iSize = 0, $sSrce = "struct*")
If $pDest = 0 Then $pDest = DllStructGetData($tMemMap, "Mem")
If $iSize = 0 Then $iSize = DllStructGetData($tMemMap, "Size")
Local $aResult = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", DllStructGetData($tMemMap, "hProc"),  "ptr", $pDest, $sSrce, $pSrce, "ulong_ptr", $iSize, "ulong_ptr*", 0)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _MemVirtualAlloc($pAddress, $iSize, $iAllocation, $iProtect)
Local $aResult = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iAllocation, "dword", $iProtect)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _MemVirtualAllocEx($hProcess, $pAddress, $iSize, $iAllocation, $iProtect)
Local $aResult = DllCall("kernel32.dll", "ptr", "VirtualAllocEx", "handle", $hProcess, "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iAllocation, "dword", $iProtect)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _MemVirtualFree($pAddress, $iSize, $iFreeType)
Local $aResult = DllCall("kernel32.dll", "bool", "VirtualFree", "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iFreeType)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _MemVirtualFreeEx($hProcess, $pAddress, $iSize, $iFreeType)
Local $aResult = DllCall("kernel32.dll", "bool", "VirtualFreeEx", "handle", $hProcess, "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iFreeType)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func __Mem_OpenProcess($iAccess, $bInherit, $iPID, $bDebugPriv = False)
Local $aResult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iAccess, "bool", $bInherit, "dword", $iPID)
If @error Then Return SetError(@error, @extended, 0)
If $aResult[0] Then Return $aResult[0]
If Not $bDebugPriv Then Return SetError(100, 0, 0)
Local $hToken = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
If @error Then Return SetError(@error + 10, @extended, 0)
_Security__SetPrivilege($hToken, "SeDebugPrivilege", True)
Local $iError = @error
Local $iExtended = @extended
Local $iRet = 0
If Not @error Then
$aResult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iAccess, "bool", $bInherit, "dword", $iPID)
$iError = @error
$iExtended = @extended
If $aResult[0] Then $iRet = $aResult[0]
_Security__SetPrivilege($hToken, "SeDebugPrivilege", False)
If @error Then
$iError = @error + 20
$iExtended = @extended
EndIf
Else
$iError = @error + 30
EndIf
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hToken)
Return SetError($iError, $iExtended, $iRet)
EndFunc
Global Const $OPT_COORDSRELATIVE = 0
Global Const $OPT_COORDSABSOLUTE = 1
Global Const $OPT_COORDSCLIENT = 2
Global Const $OPT_ERRORSILENT = 0
Global Const $OPT_ERRORFATAL = 1
Global Const $OPT_CAPSNOSTORE = 0
Global Const $OPT_CAPSSTORE = 1
Global Const $OPT_MATCHSTART = 1
Global Const $OPT_MATCHANY = 2
Global Const $OPT_MATCHEXACT = 3
Global Const $OPT_MATCHADVANCED = 4
Global Const $CCS_TOP = 0x01
Global Const $CCS_NOMOVEY = 0x02
Global Const $CCS_BOTTOM = 0x03
Global Const $CCS_NORESIZE = 0x04
Global Const $CCS_NOPARENTALIGN = 0x08
Global Const $CCS_NOHILITE = 0x10
Global Const $CCS_ADJUSTABLE = 0x20
Global Const $CCS_NODIVIDER = 0x40
Global Const $CCS_VERT = 0x0080
Global Const $CCS_LEFT = 0x0081
Global Const $CCS_NOMOVEX = 0x0082
Global Const $CCS_RIGHT = 0x0083
Global Const $DT_DRIVETYPE = 1
Global Const $DT_SSDSTATUS = 2
Global Const $DT_BUSTYPE = 3
Global Const $PROXY_IE = 0
Global Const $PROXY_NONE = 1
Global Const $PROXY_SPECIFIED = 2
Global Const $OBJID_WINDOW = 0x00000000
Global Const $OBJID_TITLEBAR = 0xFFFFFFFE
Global Const $OBJID_SIZEGRIP = 0xFFFFFFF9
Global Const $OBJID_CARET = 0xFFFFFFF8
Global Const $OBJID_CURSOR = 0xFFFFFFF7
Global Const $OBJID_ALERT = 0xFFFFFFF6
Global Const $OBJID_SOUND = 0xFFFFFFF5
Global Const $DLG_CENTERONTOP = 0
Global Const $DLG_NOTITLE = 1
Global Const $DLG_NOTONTOP = 2
Global Const $DLG_TEXTLEFT = 4
Global Const $DLG_TEXTRIGHT = 8
Global Const $DLG_MOVEABLE = 16
Global Const $DLG_TEXTVCENTER = 32
Global Const $IDC_UNKNOWN = 0
Global Const $IDC_APPSTARTING = 1
Global Const $IDC_ARROW = 2
Global Const $IDC_CROSS = 3
Global Const $IDC_HAND = 32649
Global Const $IDC_HELP = 4
Global Const $IDC_IBEAM = 5
Global Const $IDC_ICON = 6
Global Const $IDC_NO = 7
Global Const $IDC_SIZE = 8
Global Const $IDC_SIZEALL = 9
Global Const $IDC_SIZENESW = 10
Global Const $IDC_SIZENS = 11
Global Const $IDC_SIZENWSE = 12
Global Const $IDC_SIZEWE = 13
Global Const $IDC_UPARROW = 14
Global Const $IDC_WAIT = 15
Global Const $IDI_APPLICATION = 32512
Global Const $IDI_ASTERISK = 32516
Global Const $IDI_EXCLAMATION = 32515
Global Const $IDI_HAND = 32513
Global Const $IDI_QUESTION = 32514
Global Const $IDI_WINLOGO = 32517
Global Const $IDI_SHIELD = 32518
Global Const $IDI_ERROR = $IDI_HAND
Global Const $IDI_INFORMATION = $IDI_ASTERISK
Global Const $IDI_WARNING = $IDI_EXCLAMATION
Global Const $SD_LOGOFF = 0
Global Const $SD_SHUTDOWN = 1
Global Const $SD_REBOOT = 2
Global Const $SD_FORCE = 4
Global Const $SD_POWERDOWN = 8
Global Const $SD_FORCEHUNG = 16
Global Const $SD_STANDBY = 32
Global Const $SD_HIBERNATE = 64
Global Const $STDIN_CHILD = 1
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global Const $STDERR_MERGED = 8
Global Const $STDIO_INHERIT_PARENT = 0x10
Global Const $RUN_CREATE_NEW_CONSOLE = 0x00010000
Global Const $UBOUND_DIMENSIONS = 0
Global Const $UBOUND_ROWS = 1
Global Const $UBOUND_COLUMNS = 2
Global Const $MOUSEEVENTF_ABSOLUTE = 0x8000
Global Const $MOUSEEVENTF_MOVE = 0x0001
Global Const $MOUSEEVENTF_LEFTDOWN = 0x0002
Global Const $MOUSEEVENTF_LEFTUP = 0x0004
Global Const $MOUSEEVENTF_RIGHTDOWN = 0x0008
Global Const $MOUSEEVENTF_RIGHTUP = 0x0010
Global Const $MOUSEEVENTF_MIDDLEDOWN = 0x0020
Global Const $MOUSEEVENTF_MIDDLEUP = 0x0040
Global Const $MOUSEEVENTF_WHEEL = 0x0800
Global Const $MOUSEEVENTF_XDOWN = 0x0080
Global Const $MOUSEEVENTF_XUP = 0x0100
Global Const $REG_NONE = 0
Global Const $REG_SZ = 1
Global Const $REG_EXPAND_SZ = 2
Global Const $REG_BINARY = 3
Global Const $REG_DWORD = 4
Global Const $REG_DWORD_LITTLE_ENDIAN = 4
Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_LINK = 6
Global Const $REG_MULTI_SZ = 7
Global Const $REG_RESOURCE_LIST = 8
Global Const $REG_FULL_RESOURCE_DESCRIPTOR = 9
Global Const $REG_RESOURCE_REQUIREMENTS_LIST = 10
Global Const $REG_QWORD = 11
Global Const $REG_QWORD_LITTLE_ENDIAN = 11
Global Const $HWND_BOTTOM = 1
Global Const $HWND_NOTOPMOST = -2
Global Const $HWND_TOP = 0
Global Const $HWND_TOPMOST = -1
Global Const $SWP_NOSIZE = 0x0001
Global Const $SWP_NOMOVE = 0x0002
Global Const $SWP_NOZORDER = 0x0004
Global Const $SWP_NOREDRAW = 0x0008
Global Const $SWP_NOACTIVATE = 0x0010
Global Const $SWP_FRAMECHANGED = 0x0020
Global Const $SWP_DRAWFRAME = 0x0020
Global Const $SWP_SHOWWINDOW = 0x0040
Global Const $SWP_HIDEWINDOW = 0x0080
Global Const $SWP_NOCOPYBITS = 0x0100
Global Const $SWP_NOOWNERZORDER = 0x0200
Global Const $SWP_NOREPOSITION = 0x0200
Global Const $SWP_NOSENDCHANGING = 0x0400
Global Const $SWP_DEFERERASE = 0x2000
Global Const $SWP_ASYNCWINDOWPOS = 0x4000
Global Const $KEYWORD_DEFAULT = 1
Global Const $KEYWORD_NULL = 2
Global Const $DECLARED_LOCAL = -1
Global Const $DECLARED_UNKNOWN = 0
Global Const $DECLARED_GLOBAL = 1
Global Const $ASSIGN_CREATE = 0
Global Const $ASSIGN_FORCELOCAL = 1
Global Const $ASSIGN_FORCEGLOBAL = 2
Global Const $ASSIGN_EXISTFAIL = 4
Global Const $BI_ENABLE = 0
Global Const $BI_DISABLE = 1
Global Const $BREAK_ENABLE = 1
Global Const $BREAK_DISABLE = 0
Global Const $CDTRAY_OPEN = "open"
Global Const $CDTRAY_CLOSED = "closed"
Global Const $SEND_DEFAULT = 0
Global Const $SEND_RAW = 1
Global Const $DIR_DEFAULT = 0
Global Const $DIR_EXTENDED= 1
Global Const $DIR_NORECURSE = 2
Global Const $DIR_REMOVE= 1
Global Const $DT_ALL = "ALL"
Global Const $DT_CDROM = "CDROM"
Global Const $DT_REMOVABLE = "REMOVABLE"
Global Const $DT_FIXED = "FIXED"
Global Const $DT_NETWORK = "NETWORK"
Global Const $DT_RAMDISK = "RAMDISK"
Global Const $DT_UNKNOWN = "UNKNOWN"
Global Const $DT_UNDEFINED = 1
Global Const $DT_FAT = "FAT"
Global Const $DT_FAT32 = "FAT32"
Global Const $DT_EXFAT = "exFAT"
Global Const $DT_NTFS = "NTFS"
Global Const $DT_NWFS = "NWFS"
Global Const $DT_CDFS = "CDFS"
Global Const $DT_UDF = "UDF"
Global Const $DMA_DEFAULT = 0
Global Const $DMA_PERSISTENT = 1
Global Const $DMA_AUTHENTICATION = 8
Global Const $DS_UNKNOWN = "UNKNOWN"
Global Const $DS_READY = "READY"
Global Const $DS_NOTREADY = "NOTREADY"
Global Const $DS_INVALID = "INVALID"
Global Const $MOUSE_CLICK_LEFT = "left"
Global Const $MOUSE_CLICK_RIGHT = "right"
Global Const $MOUSE_CLICK_MIDDLE = "middle"
Global Const $MOUSE_CLICK_MAIN = "main"
Global Const $MOUSE_CLICK_MENU = "menu"
Global Const $MOUSE_CLICK_PRIMARY = "primary"
Global Const $MOUSE_CLICK_SECONDARY = "secondary"
Global Const $MOUSE_WHEEL_UP = "up"
Global Const $MOUSE_WHEEL_DOWN = "down"
Global Const $NUMBER_AUTO = 0
Global Const $NUMBER_32BIT = 1
Global Const $NUMBER_64BIT = 2
Global Const $NUMBER_DOUBLE = 3
Global Const $OBJ_NAME = 1
Global Const $OBJ_STRING = 2
Global Const $OBJ_PROGID = 3
Global Const $OBJ_FILE = 4
Global Const $OBJ_MODULE = 5
Global Const $OBJ_CLSID = 6
Global Const $OBJ_IID = 7
Global Const $EXITCLOSE_NORMAL = 0
Global Const $EXITCLOSE_BYEXIT = 1
Global Const $EXITCLOSE_BYCLICK = 2
Global Const $EXITCLOSE_BYLOGOFF = 3
Global Const $EXITCLOSE_BYSHUTDOWN = 4
Global Const $PROCESS_STATS_MEMORY = 0
Global Const $PROCESS_STATS_IO = 1
Global Const $PROCESS_LOW = 0
Global Const $PROCESS_BELOWNORMAL = 1
Global Const $PROCESS_NORMAL = 2
Global Const $PROCESS_ABOVENORMAL = 3
Global Const $PROCESS_HIGH = 4
Global Const $PROCESS_REALTIME = 5
Global Const $RUN_LOGON_NOPROFILE = 0
Global Const $RUN_LOGON_PROFILE = 1
Global Const $RUN_LOGON_NETWORK = 2
Global Const $RUN_LOGON_INHERIT = 4
Global Const $SOUND_NOWAIT = 0
Global Const $SOUND_WAIT = 1
Global Const $SHEX_OPEN = "open"
Global Const $SHEX_EDIT = "edit"
Global Const $SHEX_PRINT = "print"
Global Const $SHEX_PROPERTIES = "properties"
Global Const $TCP_DATA_DEFAULT = 0
Global Const $TCP_DATA_BINARY = 1
Global Const $UDP_OPEN_DEFAULT = 0
Global Const $UDP_OPEN_BROADCAST = 1
Global Const $UDP_DATA_DEFAULT = 0
Global Const $UDP_DATA_BINARY = 1
Global Const $UDP_DATA_ARRAY = 2
Global Const $TIP_NOICON = 0
Global Const $TIP_INFOICON = 1
Global Const $TIP_WARNINGICON = 2
Global Const $TIP_ERRORICON = 3
Global Const $TIP_BALLOON = 1
Global Const $TIP_CENTER = 2
Global Const $TIP_FORCEVISIBLE = 4
Global Const $WINDOWS_NOONTOP = 0
Global Const $WINDOWS_ONTOP = 1
Global Const $WIN_STATE_EXISTS = 1
Global Const $WIN_STATE_VISIBLE  = 2
Global Const $WIN_STATE_ENABLED = 4
Global Const $WIN_STATE_ACTIVE = 8
Global Const $WIN_STATE_MINIMIZED = 16
Global Const $WIN_STATE_MAXIMIZED = 32
Global Const $FC_NOOVERWRITE = 0
Global Const $FC_OVERWRITE = 1
Global Const $FC_CREATEPATH = 8
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FT_ARRAY = 0
Global Const $FT_STRING = 1
Global Const $FSF_CREATEBUTTON = 1
Global Const $FSF_NEWDIALOG = 2
Global Const $FSF_EDITCONTROL = 4
Global Const $FT_NONRECURSIVE = 0
Global Const $FT_RECURSIVE = 1
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_CREATEPATH = 8
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $FO_ANSI = 512
Global Const $FO_UTF16_LE_NOBOM = 1024
Global Const $FO_UTF16_BE_NOBOM = 2048
Global Const $FO_UTF8_FULL = 16384
Global Const $FO_FULLFILE_DETECT = 16384
Global Const $EOF = -1
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = -1
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 0x00000001
Global Const $FILE_ATTRIBUTE_HIDDEN = 0x00000002
Global Const $FILE_ATTRIBUTE_SYSTEM = 0x00000004
Global Const $FILE_ATTRIBUTE_DIRECTORY = 0x00000010
Global Const $FILE_ATTRIBUTE_ARCHIVE = 0x00000020
Global Const $FILE_ATTRIBUTE_DEVICE = 0x00000040
Global Const $FILE_ATTRIBUTE_NORMAL = 0x00000080
Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x00000100
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
Global Const $FILE_ATTRIBUTE_COMPRESSED = 0x00000800
Global Const $FILE_ATTRIBUTE_OFFLINE = 0x00001000
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x00004000
Global Const $FILE_SHARE_READ = 0x00000001
Global Const $FILE_SHARE_WRITE = 0x00000002
Global Const $FILE_SHARE_DELETE = 0x00000004
Global Const $FILE_SHARE_READWRITE = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE)
Global Const $FILE_SHARE_ANY = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE, $FILE_SHARE_DELETE)
Global Const $GENERIC_ALL = 0x10000000
Global Const $GENERIC_EXECUTE = 0x20000000
Global Const $GENERIC_WRITE = 0x40000000
Global Const $GENERIC_READ = 0x80000000
Global Const $GENERIC_READWRITE = BitOR($GENERIC_READ, $GENERIC_WRITE)
Global Const $FILE_ENCODING_UTF16LE = 32
Global Const $FE_ENTIRE_UTF8 = 1
Global Const $FE_PARTIALFIRST_UTF8 = 2
Global Const $FN_FULLPATH = 0
Global Const $FN_RELATIVEPATH = 1
Global Const $FV_COMMENTS = "Comments"
Global Const $FV_COMPANYNAME = "CompanyName"
Global Const $FV_FILEDESCRIPTION = "FileDescription"
Global Const $FV_FILEVERSION = "FileVersion"
Global Const $FV_INTERNALNAME = "InternalName"
Global Const $FV_LEGALCOPYRIGHT = "LegalCopyright"
Global Const $FV_LEGALTRADEMARKS = "LegalTrademarks"
Global Const $FV_ORIGINALFILENAME = "OriginalFilename"
Global Const $FV_PRODUCTNAME = "ProductName"
Global Const $FV_PRODUCTVERSION = "ProductVersion"
Global Const $FV_PRIVATEBUILD = "PrivateBuild"
Global Const $FV_SPECIALBUILD = "SpecialBuild"
Global Const $FRTA_NOCOUNT = 0
Global Const $FRTA_COUNT = 1
Global Const $FRTA_INTARRAYS = 2
Global Const $FRTA_ENTIRESPLIT = 4
Global Const $FLTA_FILESFOLDERS = 0
Global Const $FLTA_FILES = 1
Global Const $FLTA_FOLDERS = 2
Global Const $FLTAR_FILESFOLDERS = 0
Global Const $FLTAR_FILES = 1
Global Const $FLTAR_FOLDERS = 2
Global Const $FLTAR_NOHIDDEN = 4
Global Const $FLTAR_NOSYSTEM = 8
Global Const $FLTAR_NOLINK = 16
Global Const $FLTAR_NORECUR = 0
Global Const $FLTAR_RECUR = 1
Global Const $FLTAR_NOSORT = 0
Global Const $FLTAR_SORT = 1
Global Const $FLTAR_FASTSORT = 2
Global Const $FLTAR_NOPATH = 0
Global Const $FLTAR_RELPATH = 1
Global Const $FLTAR_FULLPATH = 2
Global Const $PATH_ORIGINAL = 0
Global Const $PATH_DRIVE = 1
Global Const $PATH_DIRECTORY = 2
Global Const $PATH_FILENAME = 3
Global Const $PATH_EXTENSION = 4
#Region Global Variables and Constants
Global $__g_vEnum, $__g_vExt = 0
Global $__g_iRGBMode = 1
Global Const $tagOSVERSIONINFO = 'struct;dword OSVersionInfoSize;dword MajorVersion;dword MinorVersion;dword BuildNumber;dword PlatformId;wchar CSDVersion[128];endstruct'
Global Const $IMAGE_BITMAP = 0
Global Const $IMAGE_ICON = 1
Global Const $IMAGE_CURSOR = 2
Global Const $IMAGE_ENHMETAFILE = 3
Global Const $LR_DEFAULTCOLOR = 0x0000
Global Const $LR_MONOCHROME = 0x0001
Global Const $LR_COLOR = 0x0002
Global Const $LR_COPYRETURNORG = 0x0004
Global Const $LR_COPYDELETEORG = 0x0008
Global Const $LR_LOADFROMFILE = 0x0010
Global Const $LR_LOADTRANSPARENT = 0x0020
Global Const $LR_DEFAULTSIZE = 0x0040
Global Const $LR_VGACOLOR = 0x0080
Global Const $LR_LOADMAP3DCOLORS = 0x1000
Global Const $LR_CREATEDIBSECTION = 0x2000
Global Const $LR_COPYFROMRESOURCE = 0x4000
Global Const $LR_SHARED = 0x8000
Global Const $__tagCURSORINFO = "dword Size;dword Flags;handle hCursor;" & "struct;long X;long Y;endstruct"
Global Const $__WINVER = __WINVER()
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CreateFile($sFileName, $iCreation, $iAccess = 4, $iShare = 0, $iAttributes = 0, $tSecurity = 0)
Local $iDA = 0, $iSM = 0, $iCD = 0, $iFA = 0
If BitAND($iAccess, 1) <> 0 Then $iDA = BitOR($iDA, $GENERIC_EXECUTE)
If BitAND($iAccess, 2) <> 0 Then $iDA = BitOR($iDA, $GENERIC_READ)
If BitAND($iAccess, 4) <> 0 Then $iDA = BitOR($iDA, $GENERIC_WRITE)
If BitAND($iShare, 1) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_DELETE)
If BitAND($iShare, 2) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_READ)
If BitAND($iShare, 4) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_WRITE)
Switch $iCreation
Case 0
$iCD = $CREATE_NEW
Case 1
$iCD = $CREATE_ALWAYS
Case 2
$iCD = $OPEN_EXISTING
Case 3
$iCD = $OPEN_ALWAYS
Case 4
$iCD = $TRUNCATE_EXISTING
EndSwitch
If BitAND($iAttributes, 1) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_ARCHIVE)
If BitAND($iAttributes, 2) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_HIDDEN)
If BitAND($iAttributes, 4) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_READONLY)
If BitAND($iAttributes, 8) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_SYSTEM)
Local $aResult = DllCall("kernel32.dll", "handle", "CreateFileW", "wstr", $sFileName, "dword", $iDA, "dword", $iSM,  "struct*", $tSecurity, "dword", $iCD, "dword", $iFA, "ptr", 0)
If @error Or ($aResult[0] = Ptr(-1)) Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_FreeLibrary($hModule)
Local $aResult = DllCall("kernel32.dll", "bool", "FreeLibrary", "handle", $hModule)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _WinAPI_GetCursorInfo()
Local $tCursor = DllStructCreate($__tagCURSORINFO)
Local $iCursor = DllStructGetSize($tCursor)
DllStructSetData($tCursor, "Size", $iCursor)
Local $aRet = DllCall("user32.dll", "bool", "GetCursorInfo", "struct*", $tCursor)
If @error Or Not $aRet[0] Then Return SetError(@error + 10, @extended, 0)
Local $aCursor[5]
$aCursor[0] = True
$aCursor[1] = DllStructGetData($tCursor, "Flags") <> 0
$aCursor[2] = DllStructGetData($tCursor, "hCursor")
$aCursor[3] = DllStructGetData($tCursor, "X")
$aCursor[4] = DllStructGetData($tCursor, "Y")
Return $aCursor
EndFunc
Func _WinAPI_GetDlgCtrlID($hWnd)
Local $aResult = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetModuleHandle($sModuleName)
Local $sModuleNameType = "wstr"
If $sModuleName = "" Then
$sModuleName = 0
$sModuleNameType = "ptr"
EndIf
Local $aResult = DllCall("kernel32.dll", "handle", "GetModuleHandleW", $sModuleNameType, $sModuleName)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetString($pString, $bUnicode = True)
Local $iLength = _WinAPI_StrLen($pString, $bUnicode)
If @error Or Not $iLength Then Return SetError(@error + 10, @extended, '')
Local $tString = DllStructCreate(($bUnicode ? 'wchar' : 'char') & '[' & ($iLength + 1) & ']', $pString)
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($iLength, DllStructGetData($tString, 1))
EndFunc
Func _WinAPI_IsWow64Process($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ($__WINVER < 0x0600 ? 0x00000400 : 0x00001000),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, False)
Local $aRet = DllCall('kernel32.dll', 'bool', 'IsWow64Process', 'handle', $hProcess[0], 'bool*', 0)
If __CheckErrorCloseHandle($aRet, $hProcess[0]) Then Return SetError(@error, @extended, False)
Return $aRet[2]
EndFunc
Func _WinAPI_LoadImage($hInstance, $sImage, $iType, $iXDesired, $iYDesired, $iLoad)
Local $aResult, $sImageType = "int"
If IsString($sImage) Then $sImageType = "wstr"
$aResult = DllCall("user32.dll", "handle", "LoadImageW", "handle", $hInstance, $sImageType, $sImage, "uint", $iType,  "int", $iXDesired, "int", $iYDesired, "uint", $iLoad)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_LoadLibrary($sFileName)
Local $aResult = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sFileName)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_PathIsDirectory($sFilePath)
Local $aRet = DllCall('shlwapi.dll', 'bool', 'PathIsDirectoryW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aRet[0]
EndFunc
Func _WinAPI_ReadFile($hFile, $pBuffer, $iToRead, ByRef $iRead, $tOverlapped = 0)
Local $aResult = DllCall("kernel32.dll", "bool", "ReadFile", "handle", $hFile, "struct*", $pBuffer, "dword", $iToRead,  "dword*", 0, "struct*", $tOverlapped)
If @error Then Return SetError(@error, @extended, False)
$iRead = $aResult[4]
Return $aResult[0]
EndFunc
Func _WinAPI_StrLen($pString, $bUnicode = True)
Local $W = ''
If $bUnicode Then $W = 'W'
Local $aRet = DllCall('kernel32.dll', 'int', 'lstrlen' & $W, 'struct*', $pString)
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_SwitchColor($iColor)
If $iColor = -1 Then Return $iColor
Return BitOR(BitAND($iColor, 0x00FF00), BitShift(BitAND($iColor, 0x0000FF), -16), BitShift(BitAND($iColor, 0xFF0000), 16))
EndFunc
Func _WinAPI_WriteFile($hFile, $pBuffer, $iToWrite, ByRef $iWritten, $tOverlapped = 0)
Local $aResult = DllCall("kernel32.dll", "bool", "WriteFile", "handle", $hFile, "struct*", $pBuffer, "dword", $iToWrite,  "dword*", 0, "struct*", $tOverlapped)
If @error Then Return SetError(@error, @extended, False)
$iWritten = $aResult[4]
Return $aResult[0]
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __CheckErrorArrayBounds(Const ByRef $aData, ByRef $iStart, ByRef $iEnd, $nDim = 1, $iDim = $UBOUND_DIMENSIONS)
If Not IsArray($aData) Then Return SetError(1, 0, 1)
If UBound($aData, $iDim) <> $nDim Then Return SetError(2, 0, 1)
If $iStart < 0 Then $iStart = 0
Local $iUBound = UBound($aData) - 1
If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
If $iStart > $iEnd Then Return SetError(4, 0, 1)
Return 0
EndFunc
Func __CheckErrorCloseHandle($aRet, $hFile, $bLastError = False, $iCurErr = @error, $iCurExt = @extended)
If Not $iCurErr And Not $aRet[0] Then $iCurErr = 10
Local $aLastError = DllCall("kernel32.dll", "dword", "GetLastError")
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
If $iCurErr Then DllCall("kernel32.dll", "none", "SetLastError", "dword", $aLastError[0])
If $bLastError Then $iCurExt = $aLastError[0]
Return SetError($iCurErr, $iCurExt, $iCurErr)
EndFunc
Func __DLL($sPath, $bPin = False)
Local $aRet = DllCall('kernel32.dll', 'bool', 'GetModuleHandleExW', 'dword', ($bPin ? 0x0001 : 0x0002), "wstr", $sPath, 'ptr*', 0)
If Not $aRet[3] Then
Local $aResult = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sPath)
If Not $aResult[0] Then Return 0
EndIf
Return 1
EndFunc
Func __EnumWindowsProc($hWnd, $bVisible)
Local $aResult
If $bVisible Then
$aResult = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hWnd)
If Not $aResult[0] Then
Return 1
EndIf
EndIf
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = $hWnd
$aResult = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hWnd, "wstr", "", "int", 4096)
$__g_vEnum[$__g_vEnum[0][0]][1] = $aResult[2]
Return 1
EndFunc
Func __FatalExit($iCode, $sText = '')
If $sText Then MsgBox($MB_SYSTEMMODAL, 'AutoIt', $sText)
DllCall('kernel32.dll', 'none', 'FatalExit', 'int', $iCode)
EndFunc
Func __Inc(ByRef $aData, $iIncrement = 100)
Select
Case UBound($aData, $UBOUND_COLUMNS)
If $iIncrement < 0 Then
ReDim $aData[$aData[0][0] + 1][UBound($aData, $UBOUND_COLUMNS)]
Else
$aData[0][0] += 1
If $aData[0][0] > UBound($aData) - 1 Then
ReDim $aData[$aData[0][0] + $iIncrement][UBound($aData, $UBOUND_COLUMNS)]
EndIf
EndIf
Case UBound($aData, $UBOUND_ROWS)
If $iIncrement < 0 Then
ReDim $aData[$aData[0] + 1]
Else
$aData[0] += 1
If $aData[0] > UBound($aData) - 1 Then
ReDim $aData[$aData[0] + $iIncrement]
EndIf
EndIf
Case Else
Return 0
EndSelect
Return 1
EndFunc
Func __RGB($iColor)
If $__g_iRGBMode Then
$iColor = _WinAPI_SwitchColor($iColor)
EndIf
Return $iColor
EndFunc
Func __WINVER()
Local $tOSVI = DllStructCreate($tagOSVERSIONINFO)
DllStructSetData($tOSVI, 1, DllStructGetSize($tOSVI))
Local $aRet = DllCall('kernel32.dll', 'bool', 'GetVersionExW', 'struct*', $tOSVI)
If @error Or Not $aRet[0] Then Return SetError(@error, @extended, 0)
Return BitOR(BitShift(DllStructGetData($tOSVI, 2), -8), DllStructGetData($tOSVI, 3))
EndFunc
#EndRegion Internal Functions
#Region Global Variables and Constants
Global Const $DUPLICATE_CLOSE_SOURCE = 0x00000001
Global Const $DUPLICATE_SAME_ACCESS = 0x00000002
Global Const $OBJ_BITMAP = 7
Global Const $OBJ_BRUSH = 2
Global Const $OBJ_COLORSPACE = 14
Global Const $OBJ_DC = 3
Global Const $OBJ_ENHMETADC = 12
Global Const $OBJ_ENHMETAFILE = 13
Global Const $OBJ_EXTPEN = 11
Global Const $OBJ_FONT = 6
Global Const $OBJ_MEMDC = 10
Global Const $OBJ_METADC = 4
Global Const $OBJ_METAFILE = 9
Global Const $OBJ_PAL = 5
Global Const $OBJ_PEN = 1
Global Const $OBJ_REGION = 8
Global Const $NULL_BRUSH = 5
Global Const $NULL_PEN = 8
Global Const $BLACK_BRUSH = 4
Global Const $DKGRAY_BRUSH = 3
Global Const $DC_BRUSH = 18
Global Const $GRAY_BRUSH = 2
Global Const $HOLLOW_BRUSH = $NULL_BRUSH
Global Const $LTGRAY_BRUSH = 1
Global Const $WHITE_BRUSH = 0
Global Const $BLACK_PEN = 7
Global Const $DC_PEN = 19
Global Const $WHITE_PEN = 6
Global Const $ANSI_FIXED_FONT = 11
Global Const $ANSI_VAR_FONT = 12
Global Const $DEVICE_DEFAULT_FONT = 14
Global Const $DEFAULT_GUI_FONT = 17
Global Const $OEM_FIXED_FONT = 10
Global Const $SYSTEM_FONT = 13
Global Const $SYSTEM_FIXED_FONT = 16
Global Const $DEFAULT_PALETTE = 15
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CloseHandle($hObject)
Local $aResult = DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hObject)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _WinAPI_DeleteObject($hObject)
Local $aResult = DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $hObject)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _WinAPI_DuplicateHandle($hSourceProcessHandle, $hSourceHandle, $hTargetProcessHandle, $iDesiredAccess, $iInheritHandle, $iOptions)
Local $aResult = DllCall("kernel32.dll", "bool", "DuplicateHandle",  "handle", $hSourceProcessHandle,  "handle", $hSourceHandle,  "handle", $hTargetProcessHandle,  "handle*", 0,  "dword", $iDesiredAccess,  "bool", $iInheritHandle,  "dword", $iOptions)
If @error Or Not $aResult[0] Then Return SetError(@error, @extended, 0)
Return $aResult[4]
EndFunc
Func _WinAPI_GetCurrentObject($hDC, $iType)
Local $aRet = DllCall('gdi32.dll', 'handle', 'GetCurrentObject', 'handle', $hDC, 'uint', $iType)
If @error Or Not $aRet[0] Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetCurrentProcess()
Local $aResult = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetObject($hObject, $iSize, $pObject)
Local $aResult = DllCall("gdi32.dll", "int", "GetObjectW", "handle", $hObject, "int", $iSize, "struct*", $pObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetObjectInfoByHandle($hObject)
Local $tagPUBLIC_OBJECT_BASIC_INFORMATION = 'ulong Attributes;ulong GrantedAcess;ulong HandleCount;ulong PointerCount;ulong Reserved[10]'
Local $tPOBI = DllStructCreate($tagPUBLIC_OBJECT_BASIC_INFORMATION)
Local $aRet = DllCall('ntdll.dll', 'long', 'ZwQueryObject', 'handle', $hObject, 'uint', 0, 'struct*', $tPOBI,  'ulong', DllStructGetSize($tPOBI), 'ptr', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aRet[0] Then Return SetError(10, $aRet[0], 0)
Local $aResult[4]
For $i = 0 To 3
$aResult[$i] = DllStructGetData($tPOBI, $i + 1)
Next
Return $aResult
EndFunc
Func _WinAPI_GetObjectNameByHandle($hObject)
Local $tagUNICODE_STRING = 'struct;ushort Length;ushort MaximumLength;ptr Buffer;endstruct'
Local $tagPUBLIC_OBJECT_TYPE_INFORMATION = 'struct;' & $tagUNICODE_STRING & ';ulong Reserved[22];endstruct'
Local $tPOTI = DllStructCreate($tagPUBLIC_OBJECT_TYPE_INFORMATION & ';byte[32]')
Local $aRet = DllCall('ntdll.dll', 'long', 'ZwQueryObject', 'handle', $hObject, 'uint', 2, 'struct*', $tPOTI,  'ulong', DllStructGetSize($tPOTI), 'ulong*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aRet[0] Then Return SetError(10, $aRet[0], '')
Local $pData = DllStructGetData($tPOTI, 3)
If Not $pData Then Return SetError(11, 0, '')
Return _WinAPI_GetString($pData)
EndFunc
Func _WinAPI_GetObjectType($hObject)
Local $aRet = DllCall('gdi32.dll', 'dword', 'GetObjectType', 'handle', $hObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetStdHandle($iStdHandle)
If $iStdHandle < 0 Or $iStdHandle > 2 Then Return SetError(2, 0, -1)
Local Const $aHandle[3] = [-10, -11, -12]
Local $aResult = DllCall("kernel32.dll", "handle", "GetStdHandle", "dword", $aHandle[$iStdHandle])
If @error Then Return SetError(@error, @extended, -1)
Return $aResult[0]
EndFunc
Func _WinAPI_GetStockObject($iObject)
Local $aResult = DllCall("gdi32.dll", "handle", "GetStockObject", "int", $iObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_SelectObject($hDC, $hGDIObj)
Local $aResult = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $hGDIObj)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _WinAPI_SetHandleInformation($hObject, $iMask, $iFlags)
Local $aResult = DllCall("kernel32.dll", "bool", "SetHandleInformation", "handle", $hObject, "dword", $iMask, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
#EndRegion Public Functions
Global Const $LINGUISTIC_IGNORECASE = 0x00000010
Global Const $LINGUISTIC_IGNOREDIACRITIC = 0x00000020
Global Const $NORM_IGNORECASE = 0x00000001
Global Const $NORM_IGNOREKANATYPE = 0x00010000
Global Const $NORM_IGNORENONSPACE = 0x00000002
Global Const $NORM_IGNORESYMBOLS = 0x00000004
Global Const $NORM_IGNOREWIDTH = 0x00020000
Global Const $NORM_LINGUISTIC_CASING = 0x08000000
Global Const $SORT_DIGITSASNUMBERS = 0x00000008
Global Const $SORT_STRINGSORT = 0x00001000
Global Const $CSTR_LESS_THAN = 1
Global Const $CSTR_EQUAL = 2
Global Const $CSTR_GREATER_THAN = 3
Global Const $MUI_LANGUAGE_ID = 0x0004
Global Const $MUI_LANGUAGE_NAME = 0x0008
Global Const $DATE_AUTOLAYOUT = 0x40
Global Const $DATE_LONGDATE = 0x02
Global Const $DATE_LTRREADING = 0x10
Global Const $DATE_SHORTDATE = 0x01
Global Const $DATE_RTLREADING = 0x20
Global Const $DATE_USE_ALT_CALENDAR = 0x04
Global Const $DATE_YEARMONTH = 0x08
Global Const $GEO_NATION = 1
Global Const $GEO_LATITUDE = 2
Global Const $GEO_LONGITUDE = 3
Global Const $GEO_ISO2 = 4
Global Const $GEO_ISO3 = 5
Global Const $GEO_RFC1766 = 6
Global Const $GEO_LCID = 7
Global Const $GEO_FRIENDLYNAME = 8
Global Const $GEO_OFFICIALNAME = 9
Global Const $GEO_TIMEZONES = 10
Global Const $GEO_OFFICIALLANGUAGES = 11
Global Const $GEO_ISO_UN_NUMBER = 12
Global Const $GEO_PARENT = 13
Global Const $LOCALE_ILANGUAGE = 0x0001
Global Const $LOCALE_SLANGUAGE = 0x0002
Global Const $LOCALE_SENGLANGUAGE = 0x1001
Global Const $LOCALE_SABBREVLANGNAME = 0x0003
Global Const $LOCALE_SNATIVELANGNAME = 0x0004
Global Const $LOCALE_ICOUNTRY = 0x0005
Global Const $LOCALE_SCOUNTRY = 0x0006
Global Const $LOCALE_SENGCOUNTRY = 0x1002
Global Const $LOCALE_SABBREVCTRYNAME = 0x0007
Global Const $LOCALE_SNATIVECTRYNAME = 0x0008
Global Const $LOCALE_IDEFAULTLANGUAGE = 0x0009
Global Const $LOCALE_IDEFAULTCOUNTRY = 0x000A
Global Const $LOCALE_IDEFAULTCODEPAGE = 0x000B
Global Const $LOCALE_IDEFAULTANSICODEPAGE = 0x1004
Global Const $LOCALE_IDEFAULTMACCODEPAGE = 0x1011
Global Const $LOCALE_SLIST = 0x000C
Global Const $LOCALE_IMEASURE = 0x000D
Global Const $LOCALE_SDECIMAL = 0x000E
Global Const $LOCALE_STHOUSAND = 0x000F
Global Const $LOCALE_SGROUPING = 0x0010
Global Const $LOCALE_IDIGITS = 0x0011
Global Const $LOCALE_ILZERO = 0x0012
Global Const $LOCALE_INEGNUMBER = 0x1010
Global Const $LOCALE_SNATIVEDIGITS = 0x0013
Global Const $LOCALE_SCURRENCY = 0x0014
Global Const $LOCALE_SINTLSYMBOL = 0x0015
Global Const $LOCALE_SMONDECIMALSEP = 0x0016
Global Const $LOCALE_SMONTHOUSANDSEP = 0x0017
Global Const $LOCALE_SMONGROUPING = 0x0018
Global Const $LOCALE_ICURRDIGITS = 0x0019
Global Const $LOCALE_IINTLCURRDIGITS = 0x001A
Global Const $LOCALE_ICURRENCY = 0x001B
Global Const $LOCALE_INEGCURR = 0x001C
Global Const $LOCALE_SDATE = 0x001D
Global Const $LOCALE_STIME = 0x001E
Global Const $LOCALE_SSHORTDATE = 0x001F
Global Const $LOCALE_SLONGDATE = 0x0020
Global Const $LOCALE_STIMEFORMAT = 0x1003
Global Const $LOCALE_IDATE = 0x0021
Global Const $LOCALE_ILDATE = 0x0022
Global Const $LOCALE_ITIME = 0x0023
Global Const $LOCALE_ITIMEMARKPOSN = 0x1005
Global Const $LOCALE_ICENTURY = 0x0024
Global Const $LOCALE_ITLZERO = 0x0025
Global Const $LOCALE_IDAYLZERO = 0x0026
Global Const $LOCALE_IMONLZERO = 0x0027
Global Const $LOCALE_S1159 = 0x0028
Global Const $LOCALE_S2359 = 0x0029
Global Const $LOCALE_ICALENDARTYPE = 0x1009
Global Const $LOCALE_IOPTIONALCALENDAR = 0x100B
Global Const $LOCALE_IFIRSTDAYOFWEEK = 0x100C
Global Const $LOCALE_IFIRSTWEEKOFYEAR = 0x100D
Global Const $LOCALE_SDAYNAME1 = 0x002A
Global Const $LOCALE_SDAYNAME2 = 0x002B
Global Const $LOCALE_SDAYNAME3 = 0x002C
Global Const $LOCALE_SDAYNAME4 = 0x002D
Global Const $LOCALE_SDAYNAME5 = 0x002E
Global Const $LOCALE_SDAYNAME6 = 0x002F
Global Const $LOCALE_SDAYNAME7 = 0x0030
Global Const $LOCALE_SABBREVDAYNAME1 = 0x0031
Global Const $LOCALE_SABBREVDAYNAME2 = 0x0032
Global Const $LOCALE_SABBREVDAYNAME3 = 0x0033
Global Const $LOCALE_SABBREVDAYNAME4 = 0x0034
Global Const $LOCALE_SABBREVDAYNAME5 = 0x0035
Global Const $LOCALE_SABBREVDAYNAME6 = 0x0036
Global Const $LOCALE_SABBREVDAYNAME7 = 0x0037
Global Const $LOCALE_SMONTHNAME1 = 0x0038
Global Const $LOCALE_SMONTHNAME2 = 0x0039
Global Const $LOCALE_SMONTHNAME3 = 0x003A
Global Const $LOCALE_SMONTHNAME4 = 0x003B
Global Const $LOCALE_SMONTHNAME5 = 0x003C
Global Const $LOCALE_SMONTHNAME6 = 0x003D
Global Const $LOCALE_SMONTHNAME7 = 0x003E
Global Const $LOCALE_SMONTHNAME8 = 0x003F
Global Const $LOCALE_SMONTHNAME9 = 0x0040
Global Const $LOCALE_SMONTHNAME10 = 0x0041
Global Const $LOCALE_SMONTHNAME11 = 0x0042
Global Const $LOCALE_SMONTHNAME12 = 0x0043
Global Const $LOCALE_SMONTHNAME13 = 0x100E
Global Const $LOCALE_SABBREVMONTHNAME1 = 0x0044
Global Const $LOCALE_SABBREVMONTHNAME2 = 0x0045
Global Const $LOCALE_SABBREVMONTHNAME3 = 0x0046
Global Const $LOCALE_SABBREVMONTHNAME4 = 0x0047
Global Const $LOCALE_SABBREVMONTHNAME5 = 0x0048
Global Const $LOCALE_SABBREVMONTHNAME6 = 0x0049
Global Const $LOCALE_SABBREVMONTHNAME7 = 0x004A
Global Const $LOCALE_SABBREVMONTHNAME8 = 0x004B
Global Const $LOCALE_SABBREVMONTHNAME9 = 0x004C
Global Const $LOCALE_SABBREVMONTHNAME10 = 0x004D
Global Const $LOCALE_SABBREVMONTHNAME11 = 0x004E
Global Const $LOCALE_SABBREVMONTHNAME12 = 0x004F
Global Const $LOCALE_SABBREVMONTHNAME13 = 0x100F
Global Const $LOCALE_SPOSITIVESIGN = 0x0050
Global Const $LOCALE_SNEGATIVESIGN = 0x0051
Global Const $LOCALE_IPOSSIGNPOSN = 0x0052
Global Const $LOCALE_INEGSIGNPOSN = 0x0053
Global Const $LOCALE_IPOSSYMPRECEDES = 0x0054
Global Const $LOCALE_IPOSSEPBYSPACE = 0x0055
Global Const $LOCALE_INEGSYMPRECEDES = 0x0056
Global Const $LOCALE_INEGSEPBYSPACE = 0x0057
Global Const $LOCALE_FONTSIGNATURE = 0x0058
Global Const $LOCALE_SISO639LANGNAME = 0x0059
Global Const $LOCALE_SISO3166CTRYNAME = 0x005A
Global Const $LOCALE_IDEFAULTEBCDICCODEPAGE = 0x1012
Global Const $LOCALE_IPAPERSIZE = 0x100A
Global Const $LOCALE_SENGCURRNAME = 0x1007
Global Const $LOCALE_SNATIVECURRNAME = 0x1008
Global Const $LOCALE_SYEARMONTH = 0x1006
Global Const $LOCALE_SSORTNAME = 0x1013
Global Const $LOCALE_IDIGITSUBSTITUTION = 0x1014
Global Const $LOCALE_CUSTOM_DEFAULT = 0x0C00
Global Const $LOCALE_CUSTOM_UI_DEFAULT = 0x1400
Global Const $LOCALE_CUSTOM_UNSPECIFIED = 0x1000
Global Const $LOCALE_INVARIANT = 0x007F
Global Const $LOCALE_SYSTEM_DEFAULT = 0x0800
Global Const $LOCALE_USER_DEFAULT = 0x0400
Global Const $TIME_FORCE24HOURFORMAT = 0x08
Global Const $TIME_NOMINUTESORSECONDS = 0x01
Global Const $TIME_NOSECONDS = 0x02
Global Const $TIME_NOTIMEMARKER = 0x04
Global Const $LCID_INSTALLED = 1
Global Const $LCID_SUPPORTED = 2
#Region Global Variables and Constants
Global Const $tagNUMBERFMT = 'uint NumDigits;uint LeadingZero;uint Grouping;ptr DecimalSep;ptr ThousandSep;uint NegativeOrder'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CompareString($iLCID, $sString1, $sString2, $iFlags = 0)
Local $aRet = DllCall('kernel32.dll', 'int', 'CompareStringW', 'dword', $iLCID, 'dword', $iFlags, 'wstr', $sString1,  'int', -1, 'wstr', $sString2, 'int', -1)
If @error Or Not $aRet[0] Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_CreateNumberFormatInfo($iNumDigits, $iLeadingZero, $iGrouping, $sDecimalSep, $sThousandSep, $iNegativeOrder)
Local $tFMT = DllStructCreate($tagNUMBERFMT & ';wchar[' & (StringLen($sDecimalSep) + 1) & '];wchar[' & (StringLen($sThousandSep) + 1) & ']')
DllStructSetData($tFMT, 1, $iNumDigits)
DllStructSetData($tFMT, 2, $iLeadingZero)
DllStructSetData($tFMT, 3, $iGrouping)
DllStructSetData($tFMT, 4, DllStructGetPtr($tFMT, 7))
DllStructSetData($tFMT, 5, DllStructGetPtr($tFMT, 8))
DllStructSetData($tFMT, 6, $iNegativeOrder)
DllStructSetData($tFMT, 7, $sDecimalSep)
DllStructSetData($tFMT, 8, $sThousandSep)
Return $tFMT
EndFunc
Func _WinAPI_EnumSystemGeoID()
Local $hEnumProc = DllCallbackRegister('__EnumGeoIDProc', 'bool', 'long')
Dim $__g_vEnum[101] = [0]
Local $aRet = DllCall('kernel32.dll', 'bool', 'EnumSystemGeoID', 'dword', 16, 'long', 0, 'ptr', DllCallbackGetPtr($hEnumProc))
If @error Or Not $aRet[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumSystemLocales($iFlag)
Local $hEnumProc = DllCallbackRegister('__EnumLocalesProc', 'bool', 'ptr')
Dim $__g_vEnum[101] = [0]
Local $aRet = DllCall('kernel32.dll', 'bool', 'EnumSystemLocalesW', 'ptr', DllCallbackGetPtr($hEnumProc), 'dword', $iFlag)
If @error Or Not $aRet[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumUILanguages($iFlag = 0)
Local $hEnumProc = DllCallbackRegister('__EnumUILanguagesProc', 'bool', 'ptr;long_ptr')
Local $iID = 1
If $__WINVER >= 0x0600 Then
If BitAND($iFlag, 0x0008) Then
$iID = 0
EndIf
Else
$iFlag = 0
EndIf
Dim $__g_vEnum[101] = [0]
Local $aRet = DllCall('kernel32.dll', 'bool', 'EnumUILanguagesW', 'ptr', DllCallbackGetPtr($hEnumProc), 'dword', $iFlag,  'long_ptr', $iID)
If @error Or Not $aRet[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_GetDateFormat($iLCID = 0, $tSYSTEMTIME = 0, $iFlags = 0, $sFormat = '')
If Not $iLCID Then $iLCID = 0x0400
Local $sTypeOfFormat = 'wstr'
If Not StringStripWS($sFormat, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$sTypeOfFormat = 'ptr'
$sFormat = 0
EndIf
Local $aRet = DllCall('kernel32.dll', 'int', 'GetDateFormatW', 'dword', $iLCID, 'dword', $iFlags, 'struct*', $tSYSTEMTIME,  $sTypeOfFormat, $sFormat, 'wstr', '', 'int', 2048)
If @error Or Not $aRet[0] Then Return SetError(@error, @extended, '')
Return $aRet[5]
EndFunc
Func _WinAPI_GetDurationFormat($iLCID, $iDuration, $sFormat = '')
If Not $iLCID Then $iLCID = 0x0400
Local $pST, $iVal
If IsDllStruct($iDuration) Then
$pST = DllStructGetPtr($iDuration)
$iVal = 0
Else
$pST = 0
$iVal = $iDuration
EndIf
Local $sTypeOfFormat = 'wstr'
If Not StringStripWS($sFormat, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$sTypeOfFormat = 'ptr'
$sFormat = 0
EndIf
Local $aRet = DllCall('kernel32.dll', 'int', 'GetDurationFormat', 'dword', $iLCID, 'dword', 0, 'ptr', $pST, 'uint64', $iVal,  $sTypeOfFormat, $sFormat, 'wstr', '', 'int', 2048)
If @error Or Not $aRet[0] Then Return SetError(@error, @extended, '')
Return $aRet[6]
EndFunc
Func _WinAPI_GetGeoInfo($iGEOID, $iType, $iLanguage = 0)
Local $aRet = DllCall('kernel32.dll', 'int', 'GetGeoInfoW', 'long', $iGEOID, 'dword', $iType, 'wstr', '', 'int', 4096,  'word', $iLanguage)
If @error Or Not $aRet[0] Then Return SetError(@error, @extended, 0)
Return $aRet[3]
EndFunc
Func _WinAPI_GetLocaleInfo($iLCID, $iType)
Local $aRet = DllCall('kernel32.dll', 'int', 'GetLocaleInfoW', 'dword', $iLCID, 'dword', $iType, 'wstr', '', 'int', 2048)
If @error Or Not $aRet[0] Then Return SetError(@error + 10, @extended, '')
Return $aRet[3]
EndFunc
Func _WinAPI_GetNumberFormat($iLCID, $sNumber, $tNUMBERFMT = 0)
If Not $iLCID Then $iLCID = 0x0400
Local $aRet = DllCall('kernel32.dll', 'int', 'GetNumberFormatW', 'dword', $iLCID, 'dword', 0, 'wstr', $sNumber,  'struct*', $tNUMBERFMT, 'wstr', '', 'int', 2048)
If @error Or Not $aRet[0] Then Return SetError(@error, @extended, '')
Return $aRet[5]
EndFunc
Func _WinAPI_GetSystemDefaultLangID()
Local $aRet = DllCall('kernel32.dll', 'word', 'GetSystemDefaultLangID')
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetSystemDefaultLCID()
Local $aRet = DllCall('kernel32.dll', 'dword', 'GetSystemDefaultLCID')
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetSystemDefaultUILanguage()
Local $aRet = DllCall('kernel32.dll', 'word', 'GetSystemDefaultUILanguage')
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetThreadLocale()
Local $aRet = DllCall('kernel32.dll', 'dword', 'GetThreadLocale')
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetThreadUILanguage()
Local $aRet = DllCall('kernel32.dll', 'word', 'GetThreadUILanguage')
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetTimeFormat($iLCID = 0, $tSYSTEMTIME = 0, $iFlags = 0, $sFormat = '')
If Not $iLCID Then $iLCID = 0x0400
Local $sTypeOfFormat = 'wstr'
If Not StringStripWS($sFormat, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$sTypeOfFormat = 'ptr'
$sFormat = 0
EndIf
Local $aRet = DllCall('kernel32.dll', 'int', 'GetTimeFormatW', 'dword', $iLCID, 'dword', $iFlags, 'struct*', $tSYSTEMTIME,  $sTypeOfFormat, $sFormat, 'wstr', '', 'int', 2048)
If @error Or Not $aRet[0] Then Return SetError(@error + 10, @extended, '')
Return $aRet[5]
EndFunc
Func _WinAPI_GetUserDefaultLangID()
Local $aRet = DllCall('kernel32.dll', 'word', 'GetUserDefaultLangID')
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetUserDefaultLCID()
Local $aRet = DllCall('kernel32.dll', 'dword', 'GetUserDefaultLCID')
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetUserDefaultUILanguage()
Local $aRet = DllCall('kernel32.dll', 'word', 'GetUserDefaultUILanguage')
If @error Then Return SetError(@error, @extended, 0)
Return $aRet[0]
EndFunc
Func _WinAPI_GetUserGeoID()
Local $aRet = DllCall('kernel32.dll', 'long', 'GetUserGeoID', 'uint', 16)
If @error Then Return SetError(@error, @extended, -1)
Return $aRet[0]
EndFunc
Func _WinAPI_IsValidLocale($iLCID, $iFlag = 0)
Local $aRet = DllCall('kernel32.dll', 'bool', 'IsValidLocale', 'dword', $iLCID, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, False)
Return $aRet[0]
EndFunc
Func _WinAPI_SetLocaleInfo($iLCID, $iType, $sData)
Local $aRet = DllCall('kernel32.dll', 'bool', 'SetLocaleInfoW', 'dword', $iLCID, 'dword', $iType, 'wstr', $sData)
If @error Then Return SetError(@error, @extended, False)
Return $aRet[0]
EndFunc
Func _WinAPI_SetThreadLocale($iLCID)
Local $aRet = DllCall('kernel32.dll', 'bool', 'SetThreadLocale', 'dword', $iLCID)
If @error Then Return SetError(@error, @extended, False)
Return $aRet[0]
EndFunc
Func _WinAPI_SetThreadUILanguage($iLanguage)
Local $aRet = DllCall('kernel32.dll', 'word', 'SetThreadUILanguage', 'word', $iLanguage)
If @error Then Return SetError(@error, @extended, False)
Return ($aRet[0] = $aRet[1])
EndFunc
Func _WinAPI_SetUserGeoID($iGEOID)
Local $aRet = DllCall('kernel32.dll', 'bool', 'SetUserGeoID', 'long', $iGEOID)
If @error Then Return SetError(@error, @extended, False)
Return $aRet[0]
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __EnumGeoIDProc($iID)
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0]] = $iID
Return 1
EndFunc
Func __EnumLocalesProc($pLocale)
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0]] = Dec(DllStructGetData(DllStructCreate('wchar[' & (_WinAPI_StrLen($pLocale) + 1) & ']', $pLocale), 1))
Return 1
EndFunc
Func __EnumUILanguagesProc($pLanguage, $iID)
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0]] = DllStructGetData(DllStructCreate('wchar[' & (_WinAPI_StrLen($pLanguage) + 1) & ']', $pLanguage), 1)
If $iID Then
$__g_vEnum[$__g_vEnum[0]] = Dec($__g_vEnum[$__g_vEnum[0]])
EndIf
Return 1
EndFunc
#EndRegion Internal Functions
Func _DateAdd($sType, $iNumber, $sDate)
Local $asTimePart[4]
Local $asDatePart[4]
Local $iJulianDate
$sType = StringLeft($sType, 1)
If StringInStr("D,M,Y,w,h,n,s", $sType) = 0 Or $sType = "" Then
Return SetError(1, 0, 0)
EndIf
If Not StringIsInt($iNumber) Then
Return SetError(2, 0, 0)
EndIf
If Not _DateIsValid($sDate) Then
Return SetError(3, 0, 0)
EndIf
_DateTimeSplit($sDate, $asDatePart, $asTimePart)
If $sType = "d" Or $sType = "w" Then
If $sType = "w" Then $iNumber = $iNumber * 7
$iJulianDate = _DateToDayValue($asDatePart[1], $asDatePart[2], $asDatePart[3]) + $iNumber
_DayValueToDate($iJulianDate, $asDatePart[1], $asDatePart[2], $asDatePart[3])
EndIf
If $sType = "m" Then
$asDatePart[2] = $asDatePart[2] + $iNumber
While $asDatePart[2] > 12
$asDatePart[2] = $asDatePart[2] - 12
$asDatePart[1] = $asDatePart[1] + 1
WEnd
While $asDatePart[2] < 1
$asDatePart[2] = $asDatePart[2] + 12
$asDatePart[1] = $asDatePart[1] - 1
WEnd
EndIf
If $sType = "y" Then
$asDatePart[1] = $asDatePart[1] + $iNumber
EndIf
If $sType = "h" Or $sType = "n" Or $sType = "s" Then
Local $iTimeVal = _TimeToTicks($asTimePart[1], $asTimePart[2], $asTimePart[3]) / 1000
If $sType = "h" Then $iTimeVal = $iTimeVal + $iNumber * 3600
If $sType = "n" Then $iTimeVal = $iTimeVal + $iNumber * 60
If $sType = "s" Then $iTimeVal = $iTimeVal + $iNumber
Local $iDay2Add = Int($iTimeVal / (24 * 60 * 60))
$iTimeVal = $iTimeVal - $iDay2Add * 24 * 60 * 60
If $iTimeVal < 0 Then
$iDay2Add = $iDay2Add - 1
$iTimeVal = $iTimeVal + 24 * 60 * 60
EndIf
$iJulianDate = _DateToDayValue($asDatePart[1], $asDatePart[2], $asDatePart[3]) + $iDay2Add
_DayValueToDate($iJulianDate, $asDatePart[1], $asDatePart[2], $asDatePart[3])
_TicksToTime($iTimeVal * 1000, $asTimePart[1], $asTimePart[2], $asTimePart[3])
EndIf
Local $iNumDays = _DaysInMonth($asDatePart[1])
If $iNumDays[$asDatePart[2]] < $asDatePart[3] Then $asDatePart[3] = $iNumDays[$asDatePart[2]]
$sDate = $asDatePart[1] & '/' & StringRight("0" & $asDatePart[2], 2) & '/' & StringRight("0" & $asDatePart[3], 2)
If $asTimePart[0] > 0 Then
If $asTimePart[0] > 2 Then
$sDate = $sDate & " " & StringRight("0" & $asTimePart[1], 2) & ':' & StringRight("0" & $asTimePart[2], 2) & ':' & StringRight("0" & $asTimePart[3], 2)
Else
$sDate = $sDate & " " & StringRight("0" & $asTimePart[1], 2) & ':' & StringRight("0" & $asTimePart[2], 2)
EndIf
EndIf
Return $sDate
EndFunc
Func _DateDayOfWeek($iDayNum, $iFormat = Default)
Local Const $MONDAY_IS_NO1 = 128
If $iFormat = Default Then $iFormat = 0
$iDayNum = Int($iDayNum)
If $iDayNum < 1 Or $iDayNum > 7 Then Return SetError(1, 0, "")
Local $tSYSTEMTIME = DllStructCreate($tagSYSTEMTIME)
DllStructSetData($tSYSTEMTIME, "Year", BitAND($iFormat, $MONDAY_IS_NO1) ? 2007 : 2006)
DllStructSetData($tSYSTEMTIME, "Month", 1)
DllStructSetData($tSYSTEMTIME, "Day", $iDayNum)
Return _WinAPI_GetDateFormat(BitAND($iFormat, $DMW_LOCALE_LONGNAME) ? $LOCALE_USER_DEFAULT : $LOCALE_INVARIANT, $tSYSTEMTIME, 0, BitAND($iFormat, $DMW_SHORTNAME) ? "ddd" : "dddd")
EndFunc
Func _DateDaysInMonth($iYear, $iMonthNum)
$iMonthNum = Int($iMonthNum)
$iYear = Int($iYear)
Return __DateIsMonth($iMonthNum) And __DateIsYear($iYear) ? _DaysInMonth($iYear)[$iMonthNum] : SetError(1, 0, 0)
EndFunc
Func _DateDiff($sType, $sStartDate, $sEndDate)
$sType = StringLeft($sType, 1)
If StringInStr("d,m,y,w,h,n,s", $sType) = 0 Or $sType = "" Then
Return SetError(1, 0, 0)
EndIf
If Not _DateIsValid($sStartDate) Then
Return SetError(2, 0, 0)
EndIf
If Not _DateIsValid($sEndDate) Then
Return SetError(3, 0, 0)
EndIf
Local $asStartDatePart[4], $asStartTimePart[4], $asEndDatePart[4], $asEndTimePart[4]
_DateTimeSplit($sStartDate, $asStartDatePart, $asStartTimePart)
_DateTimeSplit($sEndDate, $asEndDatePart, $asEndTimePart)
Local $aDaysDiff = _DateToDayValue($asEndDatePart[1], $asEndDatePart[2], $asEndDatePart[3]) - _DateToDayValue($asStartDatePart[1], $asStartDatePart[2], $asStartDatePart[3])
Local $iTimeDiff, $iYearDiff, $iStartTimeInSecs, $iEndTimeInSecs
If $asStartTimePart[0] > 1 And $asEndTimePart[0] > 1 Then
$iStartTimeInSecs = $asStartTimePart[1] * 3600 + $asStartTimePart[2] * 60 + $asStartTimePart[3]
$iEndTimeInSecs = $asEndTimePart[1] * 3600 + $asEndTimePart[2] * 60 + $asEndTimePart[3]
$iTimeDiff = $iEndTimeInSecs - $iStartTimeInSecs
If $iTimeDiff < 0 Then
$aDaysDiff = $aDaysDiff - 1
$iTimeDiff = $iTimeDiff + 24 * 60 * 60
EndIf
Else
$iTimeDiff = 0
EndIf
Select
Case $sType = "d"
Return $aDaysDiff
Case $sType = "m"
$iYearDiff = $asEndDatePart[1] - $asStartDatePart[1]
Local $iMonthDiff = $asEndDatePart[2] - $asStartDatePart[2] + $iYearDiff * 12
If $asEndDatePart[3] < $asStartDatePart[3] Then $iMonthDiff = $iMonthDiff - 1
$iStartTimeInSecs = $asStartTimePart[1] * 3600 + $asStartTimePart[2] * 60 + $asStartTimePart[3]
$iEndTimeInSecs = $asEndTimePart[1] * 3600 + $asEndTimePart[2] * 60 + $asEndTimePart[3]
$iTimeDiff = $iEndTimeInSecs - $iStartTimeInSecs
If $asEndDatePart[3] = $asStartDatePart[3] And $iTimeDiff < 0 Then $iMonthDiff = $iMonthDiff - 1
Return $iMonthDiff
Case $sType = "y"
$iYearDiff = $asEndDatePart[1] - $asStartDatePart[1]
If $asEndDatePart[2] < $asStartDatePart[2] Then $iYearDiff = $iYearDiff - 1
If $asEndDatePart[2] = $asStartDatePart[2] And $asEndDatePart[3] < $asStartDatePart[3] Then $iYearDiff = $iYearDiff - 1
$iStartTimeInSecs = $asStartTimePart[1] * 3600 + $asStartTimePart[2] * 60 + $asStartTimePart[3]
$iEndTimeInSecs = $asEndTimePart[1] * 3600 + $asEndTimePart[2] * 60 + $asEndTimePart[3]
$iTimeDiff = $iEndTimeInSecs - $iStartTimeInSecs
If $asEndDatePart[2] = $asStartDatePart[2] And $asEndDatePart[3] = $asStartDatePart[3] And $iTimeDiff < 0 Then $iYearDiff = $iYearDiff - 1
Return $iYearDiff
Case $sType = "w"
Return Int($aDaysDiff / 7)
Case $sType = "h"
Return $aDaysDiff * 24 + Int($iTimeDiff / 3600)
Case $sType = "n"
Return $aDaysDiff * 24 * 60 + Int($iTimeDiff / 60)
Case $sType = "s"
Return $aDaysDiff * 24 * 60 * 60 + $iTimeDiff
EndSelect
EndFunc
Func _DateIsLeapYear($iYear)
If StringIsInt($iYear) Then
Select
Case Mod($iYear, 4) = 0 And Mod($iYear, 100) <> 0
Return 1
Case Mod($iYear, 400) = 0
Return 1
Case Else
Return 0
EndSelect
EndIf
Return SetError(1, 0, 0)
EndFunc
Func __DateIsMonth($iNumber)
$iNumber = Int($iNumber)
Return $iNumber >= 1 And $iNumber <= 12
EndFunc
Func _DateIsValid($sDate)
Local $asDatePart[4], $asTimePart[4]
_DateTimeSplit($sDate, $asDatePart, $asTimePart)
If Not StringIsInt($asDatePart[1]) Then Return 0
If Not StringIsInt($asDatePart[2]) Then Return 0
If Not StringIsInt($asDatePart[3]) Then Return 0
$asDatePart[1] = Int($asDatePart[1])
$asDatePart[2] = Int($asDatePart[2])
$asDatePart[3] = Int($asDatePart[3])
Local $iNumDays = _DaysInMonth($asDatePart[1])
If $asDatePart[1] < 1000 Or $asDatePart[1] > 2999 Then Return 0
If $asDatePart[2] < 1 Or $asDatePart[2] > 12 Then Return 0
If $asDatePart[3] < 1 Or $asDatePart[3] > $iNumDays[$asDatePart[2]] Then Return 0
If $asTimePart[0] < 1 Then Return 1
If $asTimePart[0] < 2 Then Return 0
If $asTimePart[0] = 2 Then $asTimePart[3] = "00"
If Not StringIsInt($asTimePart[1]) Then Return 0
If Not StringIsInt($asTimePart[2]) Then Return 0
If Not StringIsInt($asTimePart[3]) Then Return 0
$asTimePart[1] = Int($asTimePart[1])
$asTimePart[2] = Int($asTimePart[2])
$asTimePart[3] = Int($asTimePart[3])
If $asTimePart[1] < 0 Or $asTimePart[1] > 23 Then Return 0
If $asTimePart[2] < 0 Or $asTimePart[2] > 59 Then Return 0
If $asTimePart[3] < 0 Or $asTimePart[3] > 59 Then Return 0
Return 1
EndFunc
Func __DateIsYear($iNumber)
Return StringLen($iNumber) = 4
EndFunc
Func _DateLastWeekdayNum($iWeekdayNum)
Select
Case Not StringIsInt($iWeekdayNum)
Return SetError(1, 0, 0)
Case $iWeekdayNum < 1 Or $iWeekdayNum > 7
Return SetError(2, 0, 0)
Case Else
Local $iLastWeekdayNum
If $iWeekdayNum = 1 Then
$iLastWeekdayNum = 7
Else
$iLastWeekdayNum = $iWeekdayNum - 1
EndIf
Return $iLastWeekdayNum
EndSelect
EndFunc
Func _DateLastMonthNum($iMonthNum)
Select
Case Not StringIsInt($iMonthNum)
Return SetError(1, 0, 0)
Case Not __DateIsMonth($iMonthNum)
Return SetError(2, 0, 0)
Case Else
Local $iLastMonthNum
If $iMonthNum = 1 Then
$iLastMonthNum = 12
Else
$iLastMonthNum = $iMonthNum - 1
EndIf
$iLastMonthNum = StringFormat("%02d", $iLastMonthNum)
Return $iLastMonthNum
EndSelect
EndFunc
Func _DateLastMonthYear($iMonthNum, $iYear)
Select
Case Not StringIsInt($iMonthNum) Or Not StringIsInt($iYear)
Return SetError(1, 0, 0)
Case Not __DateIsMonth($iMonthNum)
Return SetError(2, 0, 0)
Case Else
Local $iLastYear
If $iMonthNum = 1 Then
$iLastYear = $iYear - 1
Else
$iLastYear = $iYear
EndIf
$iLastYear = StringFormat("%04d", $iLastYear)
Return $iLastYear
EndSelect
EndFunc
Func _DateNextWeekdayNum($iWeekdayNum)
Select
Case Not StringIsInt($iWeekdayNum)
Return SetError(1, 0, 0)
Case $iWeekdayNum < 1 Or $iWeekdayNum > 7
Return SetError(2, 0, 0)
Case Else
Local $iNextWeekdayNum
If $iWeekdayNum = 7 Then
$iNextWeekdayNum = 1
Else
$iNextWeekdayNum = $iWeekdayNum + 1
EndIf
Return $iNextWeekdayNum
EndSelect
EndFunc
Func _DateNextMonthNum($iMonthNum)
Select
Case Not StringIsInt($iMonthNum)
Return SetError(1, 0, 0)
Case Not __DateIsMonth($iMonthNum)
Return SetError(2, 0, 0)
Case Else
Local $iNextMonthNum
If $iMonthNum = 12 Then
$iNextMonthNum = 1
Else
$iNextMonthNum = $iMonthNum + 1
EndIf
$iNextMonthNum = StringFormat("%02d", $iNextMonthNum)
Return $iNextMonthNum
EndSelect
EndFunc
Func _DateNextMonthYear($iMonthNum, $iYear)
Select
Case Not StringIsInt($iMonthNum) Or Not StringIsInt($iYear)
Return SetError(1, 0, 0)
Case Not __DateIsMonth($iMonthNum)
Return SetError(2, 0, 0)
Case Else
Local $iNextYear
If $iMonthNum = 12 Then
$iNextYear = $iYear + 1
Else
$iNextYear = $iYear
EndIf
$iNextYear = StringFormat("%04d", $iNextYear)
Return $iNextYear
EndSelect
EndFunc
Func _DateTimeFormat($sDate, $sType)
Local $asDatePart[4], $asTimePart[4]
Local $sTempDate = "", $sTempTime = ""
Local $sAM, $sPM, $sTempString = ""
If Not _DateIsValid($sDate) Then
Return SetError(1, 0, "")
EndIf
If $sType < 0 Or $sType > 5 Or Not IsInt($sType) Then
Return SetError(2, 0, "")
EndIf
_DateTimeSplit($sDate, $asDatePart, $asTimePart)
Switch $sType
Case 0
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_SSHORTDATE)
If Not @error And Not ($sTempString = '') Then
$sTempDate = $sTempString
Else
$sTempDate = "M/d/yyyy"
EndIf
If $asTimePart[0] > 1 Then
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_STIMEFORMAT)
If Not @error And Not ($sTempString = '') Then
$sTempTime = $sTempString
Else
$sTempTime = "h:mm:ss tt"
EndIf
EndIf
Case 1
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_SLONGDATE)
If Not @error And Not ($sTempString = '') Then
$sTempDate = $sTempString
Else
$sTempDate = "dddd, MMMM dd, yyyy"
EndIf
Case 2
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_SSHORTDATE)
If Not @error And Not ($sTempString = '') Then
$sTempDate = $sTempString
Else
$sTempDate = "M/d/yyyy"
EndIf
Case 3
If $asTimePart[0] > 1 Then
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_STIMEFORMAT)
If Not @error And Not ($sTempString = '') Then
$sTempTime = $sTempString
Else
$sTempTime = "h:mm:ss tt"
EndIf
EndIf
Case 4
If $asTimePart[0] > 1 Then
$sTempTime = "hh:mm"
EndIf
Case 5
If $asTimePart[0] > 1 Then
$sTempTime = "hh:mm:ss"
EndIf
EndSwitch
If $sTempDate <> "" Then
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_SDATE)
If Not @error And Not ($sTempString = '') Then
$sTempDate = StringReplace($sTempDate, "/", $sTempString)
EndIf
Local $iWday = _DateToDayOfWeek($asDatePart[1], $asDatePart[2], $asDatePart[3])
$asDatePart[3] = StringRight("0" & $asDatePart[3], 2)
$asDatePart[2] = StringRight("0" & $asDatePart[2], 2)
$sTempDate = StringReplace($sTempDate, "d", "@")
$sTempDate = StringReplace($sTempDate, "m", "#")
$sTempDate = StringReplace($sTempDate, "y", "&")
$sTempDate = StringReplace($sTempDate, "@@@@", _DateDayOfWeek($iWday, 0))
$sTempDate = StringReplace($sTempDate, "@@@", _DateDayOfWeek($iWday, 1))
$sTempDate = StringReplace($sTempDate, "@@", $asDatePart[3])
$sTempDate = StringReplace($sTempDate, "@", StringReplace(StringLeft($asDatePart[3], 1), "0", "") & StringRight($asDatePart[3], 1))
$sTempDate = StringReplace($sTempDate, "####", _DateToMonth($asDatePart[2], 0))
$sTempDate = StringReplace($sTempDate, "###", _DateToMonth($asDatePart[2], 1))
$sTempDate = StringReplace($sTempDate, "##", $asDatePart[2])
$sTempDate = StringReplace($sTempDate, "#", StringReplace(StringLeft($asDatePart[2], 1), "0", "") & StringRight($asDatePart[2], 1))
$sTempDate = StringReplace($sTempDate, "&&&&", $asDatePart[1])
$sTempDate = StringReplace($sTempDate, "&&", StringRight($asDatePart[1], 2))
EndIf
If $sTempTime <> "" Then
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_S1159)
If Not @error And Not ($sTempString = '') Then
$sAM = $sTempString
Else
$sAM = "AM"
EndIf
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_S2359)
If Not @error And Not ($sTempString = '') Then
$sPM = $sTempString
Else
$sPM = "PM"
EndIf
$sTempString = _WinAPI_GetLocaleInfo($LOCALE_USER_DEFAULT, $LOCALE_STIME)
If Not @error And Not ($sTempString = '') Then
$sTempTime = StringReplace($sTempTime, ":", $sTempString)
EndIf
If StringInStr($sTempTime, "tt") Then
If $asTimePart[1] < 12 Then
$sTempTime = StringReplace($sTempTime, "tt", $sAM)
If $asTimePart[1] = 0 Then $asTimePart[1] = 12
Else
$sTempTime = StringReplace($sTempTime, "tt", $sPM)
If $asTimePart[1] > 12 Then $asTimePart[1] = $asTimePart[1] - 12
EndIf
EndIf
$asTimePart[1] = StringRight("0" & $asTimePart[1], 2)
$asTimePart[2] = StringRight("0" & $asTimePart[2], 2)
$asTimePart[3] = StringRight("0" & $asTimePart[3], 2)
$sTempTime = StringReplace($sTempTime, "hh", StringFormat("%02d", $asTimePart[1]))
$sTempTime = StringReplace($sTempTime, "h", StringReplace(StringLeft($asTimePart[1], 1), "0", "") & StringRight($asTimePart[1], 1))
$sTempTime = StringReplace($sTempTime, "mm", StringFormat("%02d", $asTimePart[2]))
$sTempTime = StringReplace($sTempTime, "ss", StringFormat("%02d", $asTimePart[3]))
$sTempDate = StringStripWS($sTempDate & " " & $sTempTime, $STR_STRIPLEADING + $STR_STRIPTRAILING)
EndIf
Return $sTempDate
EndFunc
Func _DateTimeSplit($sDate, ByRef $aDatePart, ByRef $iTimePart)
Local $sDateTime = StringSplit($sDate, " T")
If $sDateTime[0] > 0 Then $aDatePart = StringSplit($sDateTime[1], "/-.")
If $sDateTime[0] > 1 Then
$iTimePart = StringSplit($sDateTime[2], ":")
If UBound($iTimePart) < 4 Then ReDim $iTimePart[4]
Else
Dim $iTimePart[4]
EndIf
If UBound($aDatePart) < 4 Then ReDim $aDatePart[4]
For $x = 1 To 3
If StringIsInt($aDatePart[$x]) Then
$aDatePart[$x] = Int($aDatePart[$x])
Else
$aDatePart[$x] = -1
EndIf
If StringIsInt($iTimePart[$x]) Then
$iTimePart[$x] = Int($iTimePart[$x])
Else
$iTimePart[$x] = 0
EndIf
Next
Return 1
EndFunc
Func _DateToDayOfWeek($iYear, $iMonth, $iDay)
If Not _DateIsValid($iYear & "/" & $iMonth & "/" & $iDay) Then
Return SetError(1, 0, "")
EndIf
Local $i_FactorA = Int((14 - $iMonth) / 12)
Local $i_FactorY = $iYear - $i_FactorA
Local $i_FactorM = $iMonth + (12 * $i_FactorA) - 2
Local $i_FactorD = Mod($iDay + $i_FactorY + Int($i_FactorY / 4) - Int($i_FactorY / 100) + Int($i_FactorY / 400) + Int((31 * $i_FactorM) / 12), 7)
Return $i_FactorD + 1
EndFunc
Func _DateToDayOfWeekISO($iYear, $iMonth, $iDay)
Local $iDow = _DateToDayOfWeek($iYear, $iMonth, $iDay)
If @error Then
Return SetError(1, 0, "")
EndIf
If $iDow >= 2 Then Return $iDow - 1
Return 7
EndFunc
Func _DateToDayValue($iYear, $iMonth, $iDay)
If Not _DateIsValid(StringFormat("%04d/%02d/%02d", $iYear, $iMonth, $iDay)) Then
Return SetError(1, 0, "")
EndIf
If $iMonth < 3 Then
$iMonth = $iMonth + 12
$iYear = $iYear - 1
EndIf
Local $i_FactorA = Int($iYear / 100)
Local $i_FactorB = Int($i_FactorA / 4)
Local $i_FactorC = 2 - $i_FactorA + $i_FactorB
Local $i_FactorE = Int(1461 * ($iYear + 4716) / 4)
Local $i_FactorF = Int(153 * ($iMonth + 1) / 5)
Local $iJulianDate = $i_FactorC + $iDay + $i_FactorE + $i_FactorF - 1524.5
Return $iJulianDate
EndFunc
Func _DateToMonth($iMonNum, $iFormat = Default)
If $iFormat = Default Then $iFormat = 0
$iMonNum = Int($iMonNum)
If Not __DateIsMonth($iMonNum) Then Return SetError(1, 0, "")
Local $tSYSTEMTIME = DllStructCreate($tagSYSTEMTIME)
DllStructSetData($tSYSTEMTIME, "Year", @YEAR)
DllStructSetData($tSYSTEMTIME, "Month", $iMonNum)
DllStructSetData($tSYSTEMTIME, "Day", 1)
Return _WinAPI_GetDateFormat(BitAND($iFormat, $DMW_LOCALE_LONGNAME) ? $LOCALE_USER_DEFAULT : $LOCALE_INVARIANT, $tSYSTEMTIME, 0, BitAND($iFormat, $DMW_SHORTNAME) ? "MMM" : "MMMM")
EndFunc
Func _DayValueToDate($iJulianDate, ByRef $iYear, ByRef $iMonth, ByRef $iDay)
If $iJulianDate < 0 Or Not IsNumber($iJulianDate) Then
Return SetError(1, 0, 0)
EndIf
Local $i_FactorZ = Int($iJulianDate + 0.5)
Local $i_FactorW = Int(($i_FactorZ - 1867216.25) / 36524.25)
Local $i_FactorX = Int($i_FactorW / 4)
Local $i_FactorA = $i_FactorZ + 1 + $i_FactorW - $i_FactorX
Local $i_FactorB = $i_FactorA + 1524
Local $i_FactorC = Int(($i_FactorB - 122.1) / 365.25)
Local $i_FactorD = Int(365.25 * $i_FactorC)
Local $i_FactorE = Int(($i_FactorB - $i_FactorD) / 30.6001)
Local $i_FactorF = Int(30.6001 * $i_FactorE)
$iDay = $i_FactorB - $i_FactorD - $i_FactorF
If $i_FactorE - 1 < 13 Then
$iMonth = $i_FactorE - 1
Else
$iMonth = $i_FactorE - 13
EndIf
If $iMonth < 3 Then
$iYear = $i_FactorC - 4715
Else
$iYear = $i_FactorC - 4716
EndIf
$iYear = StringFormat("%04d", $iYear)
$iMonth = StringFormat("%02d", $iMonth)
$iDay = StringFormat("%02d", $iDay)
Return $iYear & "/" & $iMonth & "/" & $iDay
EndFunc
Func _Date_JulianDayNo($iYear, $iMonth, $iDay)
Local $sFullDate = StringFormat("%04d/%02d/%02d", $iYear, $iMonth, $iDay)
If Not _DateIsValid($sFullDate) Then
Return SetError(1, 0, "")
EndIf
Local $iJDay = 0
Local $aiDaysInMonth = _DaysInMonth($iYear)
For $iCntr = 1 To $iMonth - 1
$iJDay = $iJDay + $aiDaysInMonth[$iCntr]
Next
$iJDay = ($iYear * 1000) + ($iJDay + $iDay)
Return $iJDay
EndFunc
Func _JulianToDate($iJDay, $sSep = "/")
Local $iYear = Int($iJDay / 1000)
Local $iDays = Mod($iJDay, 1000)
Local $iMaxDays = 365
If _DateIsLeapYear($iYear) Then $iMaxDays = 366
If $iDays > $iMaxDays Then
Return SetError(1, 0, "")
EndIf
Local $aiDaysInMonth = _DaysInMonth($iYear)
Local $iMonth = 1
While $iDays > $aiDaysInMonth[$iMonth]
$iDays = $iDays - $aiDaysInMonth[$iMonth]
$iMonth = $iMonth + 1
WEnd
Return StringFormat("%04d%s%02d%s%02d", $iYear, $sSep, $iMonth, $sSep, $iDays)
EndFunc
Func _Now()
Return _DateTimeFormat(@YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC, 0)
EndFunc
Func _NowCalc()
Return @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC
EndFunc
Func _NowCalcDate()
Return @YEAR & "/" & @MON & "/" & @MDAY
EndFunc
Func _NowDate()
Return _DateTimeFormat(@YEAR & "/" & @MON & "/" & @MDAY, 0)
EndFunc
Func _NowTime($sType = 3)
If $sType < 3 Or $sType > 5 Then $sType = 3
Return _DateTimeFormat(@YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC, $sType)
EndFunc
Func _SetDate($iDay, $iMonth = 0, $iYear = 0)
If $iYear = 0 Then $iYear = @YEAR
If $iMonth = 0 Then $iMonth = @MON
If Not _DateIsValid($iYear & "/" & $iMonth & "/" & $iDay) Then Return 1
Local $tSYSTEMTIME = DllStructCreate($tagSYSTEMTIME)
DllCall("kernel32.dll", "none", "GetLocalTime", "struct*", $tSYSTEMTIME)
If @error Then Return SetError(@error, @extended, 0)
DllStructSetData($tSYSTEMTIME, "Day", $iDay)
If $iMonth > 0 Then DllStructSetData($tSYSTEMTIME, "Month", $iMonth)
If $iYear > 0 Then DllStructSetData($tSYSTEMTIME, "Year", $iYear)
Local $iReturn = _Date_Time_SetLocalTime($tSYSTEMTIME)
If @error Then Return SetError(@error + 10, @extended, 0)
Return Int($iReturn)
EndFunc
Func _SetTime($iHour, $iMinute, $iSecond = 0, $iMSeconds = 0)
If $iHour < 0 Or $iHour > 23 Then Return 1
If $iMinute < 0 Or $iMinute > 59 Then Return 1
If $iSecond < 0 Or $iSecond > 59 Then Return 1
If $iMSeconds < 0 Or $iMSeconds > 999 Then Return 1
Local $tSYSTEMTIME = DllStructCreate($tagSYSTEMTIME)
DllCall("kernel32.dll", "none", "GetLocalTime", "struct*", $tSYSTEMTIME)
If @error Then Return SetError(@error, @extended, 0)
DllStructSetData($tSYSTEMTIME, "Hour", $iHour)
DllStructSetData($tSYSTEMTIME, "Minute", $iMinute)
If $iSecond > 0 Then DllStructSetData($tSYSTEMTIME, "Second", $iSecond)
If $iMSeconds > 0 Then DllStructSetData($tSYSTEMTIME, "MSeconds", $iMSeconds)
Local $iReturn = _Date_Time_SetLocalTime($tSYSTEMTIME)
If @error Then Return SetError(@error + 10, @extended, 0)
Return Int($iReturn)
EndFunc
Func _TicksToTime($iTicks, ByRef $iHours, ByRef $iMins, ByRef $iSecs)
If Number($iTicks) > 0 Then
$iTicks = Int($iTicks / 1000)
$iHours = Int($iTicks / 3600)
$iTicks = Mod($iTicks, 3600)
$iMins = Int($iTicks / 60)
$iSecs = Mod($iTicks, 60)
Return 1
ElseIf Number($iTicks) = 0 Then
$iHours = 0
$iTicks = 0
$iMins = 0
$iSecs = 0
Return 1
Else
Return SetError(1, 0, 0)
EndIf
EndFunc
Func _TimeToTicks($iHours = @HOUR, $iMins = @MIN, $iSecs = @SEC)
If StringIsInt($iHours) And StringIsInt($iMins) And StringIsInt($iSecs) Then
Local $iTicks = 1000 * ((3600 * $iHours) + (60 * $iMins) + $iSecs)
Return $iTicks
Else
Return SetError(1, 0, 0)
EndIf
EndFunc
Func _WeekNumberISO($iYear = @YEAR, $iMonth = @MON, $iDay = @MDAY)
If $iDay > 31 Or $iDay < 1 Then
Return SetError(1, 0, -1)
ElseIf Not __DateIsMonth($iMonth) Then
Return SetError(2, 0, -1)
ElseIf $iYear < 1 Or $iYear > 2999 Then
Return SetError(3, 0, -1)
EndIf
Local $iDow = _DateToDayOfWeekISO($iYear, $iMonth, $iDay) - 1
Local $iDow0101 = _DateToDayOfWeekISO($iYear, 1, 1) - 1
If ($iMonth = 1 And 3 < $iDow0101 And $iDow0101 < 7 - ($iDay - 1)) Then
$iDow = $iDow0101 - 1
$iDow0101 = _DateToDayOfWeekISO($iYear - 1, 1, 1) - 1
$iMonth = 12
$iDay = 31
$iYear = $iYear - 1
ElseIf ($iMonth = 12 And 30 - ($iDay - 1) < _DateToDayOfWeekISO($iYear + 1, 1, 1) - 1 And _DateToDayOfWeekISO($iYear + 1, 1, 1) - 1 < 4) Then
Return 1
EndIf
Return Int((_DateToDayOfWeekISO($iYear, 1, 1) - 1 < 4) + 4 * ($iMonth - 1) + (2 * ($iMonth - 1) + ($iDay - 1) + $iDow0101 - $iDow + 6) * 36 / 256)
EndFunc
Func _WeekNumber($iYear = @YEAR, $iMonth = @MON, $iDay = @MDAY, $iWeekStart = 1)
If $iDay > 31 Or $iDay < 1 Then
Return SetError(1, 0, -1)
ElseIf Not __DateIsMonth($iMonth) Then
Return SetError(3, 0, -1)
ElseIf $iYear < 1 Or $iYear > 2999 Then
Return SetError(4, 0, -1)
ElseIf $iWeekStart < 1 Or $iWeekStart > 2 Then
Return SetError(2, 0, -1)
EndIf
Local $iStartWeek1, $iEndWeek1
Local $iDow0101 = _DateToDayOfWeekISO($iYear, 1, 1)
Local $iDate = $iYear & '/' & $iMonth & '/' & $iDay
If $iWeekStart = 1 Then
If $iDow0101 = 6 Then
$iStartWeek1 = 0
Else
$iStartWeek1 = -1 * $iDow0101 - 1
EndIf
$iEndWeek1 = $iStartWeek1 + 6
Else
$iStartWeek1 = $iDow0101 * -1
$iEndWeek1 = $iStartWeek1 + 6
EndIf
Local $iStartWeek1ny
Local $iEndWeek1Date = _DateAdd('d', $iEndWeek1, $iYear & '/01/01')
Local $iDow0101ny = _DateToDayOfWeekISO($iYear + 1, 1, 1)
If $iWeekStart = 1 Then
If $iDow0101ny = 6 Then
$iStartWeek1ny = 0
Else
$iStartWeek1ny = -1 * $iDow0101ny - 1
EndIf
Else
$iStartWeek1ny = $iDow0101ny * -1
EndIf
Local $iStartWeek1Dateny = _DateAdd('d', $iStartWeek1ny, $iYear + 1 & '/01/01')
Local $iCurrDateDiff = _DateDiff('d', $iEndWeek1Date, $iDate) - 1
Local $iCurrDateDiffny = _DateDiff('d', $iStartWeek1Dateny, $iDate)
If $iCurrDateDiff >= 0 And $iCurrDateDiffny < 0 Then Return 2 + Int($iCurrDateDiff / 7)
If $iCurrDateDiff < 0 Or $iCurrDateDiffny >= 0 Then Return 1
EndFunc
Func _DaysInMonth($iYear)
Local $aDays = [12, 31, (_DateIsLeapYear($iYear) ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
Return $aDays
EndFunc
Func __Date_Time_CloneSystemTime($pSystemTime)
Local $tSystemTime1 = DllStructCreate($tagSYSTEMTIME, $pSystemTime)
Local $tSystemTime2 = DllStructCreate($tagSYSTEMTIME)
DllStructSetData($tSystemTime2, "Month", DllStructGetData($tSystemTime1, "Month"))
DllStructSetData($tSystemTime2, "Day", DllStructGetData($tSystemTime1, "Day"))
DllStructSetData($tSystemTime2, "Year", DllStructGetData($tSystemTime1, "Year"))
DllStructSetData($tSystemTime2, "Hour", DllStructGetData($tSystemTime1, "Hour"))
DllStructSetData($tSystemTime2, "Minute", DllStructGetData($tSystemTime1, "Minute"))
DllStructSetData($tSystemTime2, "Second", DllStructGetData($tSystemTime1, "Second"))
DllStructSetData($tSystemTime2, "MSeconds", DllStructGetData($tSystemTime1, "MSeconds"))
DllStructSetData($tSystemTime2, "DOW", DllStructGetData($tSystemTime1, "DOW"))
Return $tSystemTime2
EndFunc
Func _Date_Time_CompareFileTime($tFileTime1, $tFileTime2)
Local $aResult = DllCall("kernel32.dll", "long", "CompareFileTime", "struct*", $tFileTime1, "struct*", $tFileTime2)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _Date_Time_DOSDateTimeToFileTime($iFatDate, $iFatTime)
Local $tTime = DllStructCreate($tagFILETIME)
Local $aResult = DllCall("kernel32.dll", "bool", "DosDateTimeToFileTime", "word", $iFatDate, "word", $iFatTime, "struct*", $tTime)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $tTime)
EndFunc
Func _Date_Time_DOSDateToArray($iDosDate)
Local $aDate[3]
$aDate[0] = BitAND($iDosDate, 0x1F)
$aDate[1] = BitAND(BitShift($iDosDate, 5), 0x0F)
$aDate[2] = BitAND(BitShift($iDosDate, 9), 0x3F) + 1980
Return $aDate
EndFunc
Func _Date_Time_DOSDateTimeToArray($iDosDate, $iDosTime)
Local $aDate[6]
$aDate[0] = BitAND($iDosDate, 0x1F)
$aDate[1] = BitAND(BitShift($iDosDate, 5), 0x0F)
$aDate[2] = BitAND(BitShift($iDosDate, 9), 0x3F) + 1980
$aDate[5] = BitAND($iDosTime, 0x1F) * 2
$aDate[4] = BitAND(BitShift($iDosTime, 5), 0x3F)
$aDate[3] = BitAND(BitShift($iDosTime, 11), 0x1F)
Return $aDate
EndFunc
Func _Date_Time_DOSDateTimeToStr($iDosDate, $iDosTime)
Local $aDate = _Date_Time_DOSDateTimeToArray($iDosDate, $iDosTime)
Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $aDate[0], $aDate[1], $aDate[2], $aDate[3], $aDate[4], $aDate[5])
EndFunc
Func _Date_Time_DOSDateToStr($iDosDate)
Local $aDate = _Date_Time_DOSDateToArray($iDosDate)
Return StringFormat("%02d/%02d/%04d", $aDate[0], $aDate[1], $aDate[2])
EndFunc
Func _Date_Time_DOSTimeToArray($iDosTime)
Local $aTime[3]
$aTime[2] = BitAND($iDosTime, 0x1F) * 2
$aTime[1] = BitAND(BitShift($iDosTime, 5), 0x3F)
$aTime[0] = BitAND(BitShift($iDosTime, 11), 0x1F)
Return $aTime
EndFunc
Func _Date_Time_DOSTimeToStr($iDosTime)
Local $aTime = _Date_Time_DOSTimeToArray($iDosTime)
Return StringFormat("%02d:%02d:%02d", $aTime[0], $aTime[1], $aTime[2])
EndFunc
Func _Date_Time_EncodeFileTime($iMonth, $iDay, $iYear, $iHour = 0, $iMinute = 0, $iSecond = 0, $iMSeconds = 0)
Local $tSYSTEMTIME = _Date_Time_EncodeSystemTime($iMonth, $iDay, $iYear, $iHour, $iMinute, $iSecond, $iMSeconds)
Return _Date_Time_SystemTimeToFileTime($tSYSTEMTIME)
EndFunc
Func _Date_Time_EncodeSystemTime($iMonth, $iDay, $iYear, $iHour = 0, $iMinute = 0, $iSecond = 0, $iMSeconds = 0)
Local $tSYSTEMTIME = DllStructCreate($tagSYSTEMTIME)
DllStructSetData($tSYSTEMTIME, "Month", $iMonth)
DllStructSetData($tSYSTEMTIME, "Day", $iDay)
DllStructSetData($tSYSTEMTIME, "Year", $iYear)
DllStructSetData($tSYSTEMTIME, "Hour", $iHour)
DllStructSetData($tSYSTEMTIME, "Minute", $iMinute)
DllStructSetData($tSYSTEMTIME, "Second", $iSecond)
DllStructSetData($tSYSTEMTIME, "MSeconds", $iMSeconds)
Return $tSYSTEMTIME
EndFunc
Func _Date_Time_FileTimeToArray(ByRef $tFileTime)
If ((DllStructGetData($tFileTime, 1) + DllStructGetData($tFileTime, 2)) = 0) Then Return SetError(10, 0, 0)
Local $tSYSTEMTIME = _Date_Time_FileTimeToSystemTime($tFileTime)
If @error Then Return SetError(@error, @extended, 0)
Return _Date_Time_SystemTimeToArray($tSYSTEMTIME)
EndFunc
Func _Date_Time_FileTimeToStr(ByRef $tFileTime, $iFmt = 0)
Local $aDate = _Date_Time_FileTimeToArray($tFileTime)
If @error Then Return SetError(@error, @extended, "")
If $iFmt Then
Return StringFormat("%04d/%02d/%02d %02d:%02d:%02d", $aDate[2], $aDate[0], $aDate[1], $aDate[3], $aDate[4], $aDate[5])
Else
Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $aDate[0], $aDate[1], $aDate[2], $aDate[3], $aDate[4], $aDate[5])
EndIf
EndFunc
Func _Date_Time_FileTimeToDOSDateTime($tFileTime)
Local $aDate[2]
Local $aResult = DllCall("kernel32.dll", "bool", "FileTimeToDosDateTime", "struct*", $tFileTime, "word*", 0, "word*", 0)
If @error Then Return SetError(@error, @extended, $aDate)
$aDate[0] = $aResult[2]
$aDate[1] = $aResult[3]
Return SetExtended($aResult[0], $aDate)
EndFunc
Func _Date_Time_FileTimeToLocalFileTime($tFileTime)
Local $tLocal = DllStructCreate($tagFILETIME)
Local $aResult = DllCall("kernel32.dll", "bool", "FileTimeToLocalFileTime", "struct*", $tFileTime, "struct*", $tLocal)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $tLocal)
EndFunc
Func _Date_Time_FileTimeToSystemTime($tFileTime)
Local $tSystTime = DllStructCreate($tagSYSTEMTIME)
Local $aResult = DllCall("kernel32.dll", "bool", "FileTimeToSystemTime", "struct*", $tFileTime, "struct*", $tSystTime)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $tSystTime)
EndFunc
Func _Date_Time_GetFileTime($hFile)
Local $aDate[3]
$aDate[0] = DllStructCreate($tagFILETIME)
$aDate[1] = DllStructCreate($tagFILETIME)
$aDate[2] = DllStructCreate($tagFILETIME)
Local $aResult = DllCall("kernel32.dll", "bool", "GetFileTime", "handle", $hFile, "struct*", $aDate[0], "struct*", $aDate[1], "struct*", $aDate[2])
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $aDate)
EndFunc
Func _Date_Time_GetLocalTime()
Local $tSystTime = DllStructCreate($tagSYSTEMTIME)
DllCall("kernel32.dll", "none", "GetLocalTime", "struct*", $tSystTime)
If @error Then Return SetError(@error, @extended, 0)
Return $tSystTime
EndFunc
Func _Date_Time_GetSystemTime()
Local $tSystTime = DllStructCreate($tagSYSTEMTIME)
DllCall("kernel32.dll", "none", "GetSystemTime", "struct*", $tSystTime)
If @error Then Return SetError(@error, @extended, 0)
Return $tSystTime
EndFunc
Func _Date_Time_GetSystemTimeAdjustment()
Local $aInfo[3]
Local $aResult = DllCall("kernel32.dll", "bool", "GetSystemTimeAdjustment", "dword*", 0, "dword*", 0, "bool*", 0)
If @error Then Return SetError(@error, @extended, 0)
$aInfo[0] = $aResult[1]
$aInfo[1] = $aResult[2]
$aInfo[2] = $aResult[3] <> 0
Return SetExtended($aResult[0], $aInfo)
EndFunc
Func _Date_Time_GetSystemTimeAsFileTime()
Local $tFileTime = DllStructCreate($tagFILETIME)
DllCall("kernel32.dll", "none", "GetSystemTimeAsFileTime", "struct*", $tFileTime)
If @error Then Return SetError(@error, @extended, 0)
Return $tFileTime
EndFunc
Func _Date_Time_GetSystemTimes()
Local $aInfo[3]
$aInfo[0] = DllStructCreate($tagFILETIME)
$aInfo[1] = DllStructCreate($tagFILETIME)
$aInfo[2] = DllStructCreate($tagFILETIME)
Local $aResult = DllCall("kernel32.dll", "bool", "GetSystemTimes", "struct*", $aInfo[0], "struct*", $aInfo[1], "struct*", $aInfo[2])
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $aInfo)
EndFunc
Func _Date_Time_GetTickCount()
Local $aResult = DllCall("kernel32.dll", "dword", "GetTickCount")
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _Date_Time_GetTimeZoneInformation()
Local $tTimeZone = DllStructCreate($tagTIME_ZONE_INFORMATION)
Local $aResult = DllCall("kernel32.dll", "dword", "GetTimeZoneInformation", "struct*", $tTimeZone)
If @error Or $aResult[0] = -1 Then Return SetError(@error, @extended, 0)
Local $aInfo[8]
$aInfo[0] = $aResult[0]
$aInfo[1] = DllStructGetData($tTimeZone, "Bias")
$aInfo[2] = DllStructGetData($tTimeZone, "StdName")
$aInfo[3] = __Date_Time_CloneSystemTime(DllStructGetPtr($tTimeZone, "StdDate"))
$aInfo[4] = DllStructGetData($tTimeZone, "StdBias")
$aInfo[5] = DllStructGetData($tTimeZone, "DayName")
$aInfo[6] = __Date_Time_CloneSystemTime(DllStructGetPtr($tTimeZone, "DayDate"))
$aInfo[7] = DllStructGetData($tTimeZone, "DayBias")
Return $aInfo
EndFunc
Func _Date_Time_LocalFileTimeToFileTime($tLocalTime)
Local $tFileTime = DllStructCreate($tagFILETIME)
Local $aResult = DllCall("kernel32.dll", "bool", "LocalFileTimeToFileTime", "struct*", $tLocalTime, "struct*", $tFileTime)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $tFileTime)
EndFunc
Func _Date_Time_SetFileTime($hFile, $tCreateTime, $tLastAccess, $tLastWrite)
Local $aResult = DllCall("kernel32.dll", "bool", "SetFileTime", "handle", $hFile, "struct*", $tCreateTime, "struct*", $tLastAccess, "struct*", $tLastWrite)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _Date_Time_SetLocalTime($tSYSTEMTIME)
Local $aResult = DllCall("kernel32.dll", "bool", "SetLocalTime", "struct*", $tSYSTEMTIME)
If @error Or Not $aResult[0] Then Return SetError(@error + 10, @extended, False)
$aResult = DllCall("kernel32.dll", "bool", "SetLocalTime", "struct*", $tSYSTEMTIME)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _Date_Time_SetSystemTime($tSYSTEMTIME)
Local $aResult = DllCall("kernel32.dll", "bool", "SetSystemTime", "struct*", $tSYSTEMTIME)
If @error Then Return SetError(@error, @extended, False)
Return $aResult[0]
EndFunc
Func _Date_Time_SetSystemTimeAdjustment($iAdjustment, $bDisabled)
Local $hToken = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
If @error Then Return SetError(@error + 10, @extended, False)
_Security__SetPrivilege($hToken, "SeSystemtimePrivilege", True)
Local $iError = @error
Local $iLastError = @extended
Local $bRet = False
If Not @error Then
Local $aResult = DllCall("kernel32.dll", "bool", "SetSystemTimeAdjustment", "dword", $iAdjustment, "bool", $bDisabled)
If @error Then
$iError = @error
$iLastError = @extended
ElseIf $aResult[0] Then
$bRet = True
Else
$iError = 20
$iLastError = _WinAPI_GetLastError()
EndIf
_Security__SetPrivilege($hToken, "SeSystemtimePrivilege", False)
If Not $iError And @error Then $iError = 22
EndIf
_WinAPI_CloseHandle($hToken)
Return SetError($iError, $iLastError, $bRet)
EndFunc
Func _Date_Time_SetTimeZoneInformation($iBias, $sStdName, $tStdDate, $iStdBias, $sDayName, $tDayDate, $iDayBias)
Local $tZoneInfo = DllStructCreate($tagTIME_ZONE_INFORMATION)
DllStructSetData($tZoneInfo, "Bias", $iBias)
DllStructSetData($tZoneInfo, "StdName", $sStdName)
_MemMoveMemory($tStdDate, DllStructGetPtr($tZoneInfo, "StdDate"), DllStructGetSize($tStdDate))
DllStructSetData($tZoneInfo, "StdBias", $iStdBias)
DllStructSetData($tZoneInfo, "DayName", $sDayName)
_MemMoveMemory($tDayDate, DllStructGetPtr($tZoneInfo, "DayDate"), DllStructGetSize($tDayDate))
DllStructSetData($tZoneInfo, "DayBias", $iDayBias)
Local $hToken = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
If @error Then Return SetError(@error + 10, @extended, False)
_Security__SetPrivilege($hToken, "SeTimeZonePrivilege", True)
Local $iError = @error
Local $iLastError = @extended
Local $bRet = False
If Not @error Then
Local $aResult = DllCall("kernel32.dll", "bool", "SetTimeZoneInformation", "struct*", $tZoneInfo)
If @error Then
$iError = @error
$iLastError = @extended
ElseIf $aResult[0] Then
$iLastError = 0
$bRet = True
Else
$iError = 20
$iLastError = _WinAPI_GetLastError()
EndIf
_Security__SetPrivilege($hToken, "SeTimeZonePrivilege", False)
If Not $iError And @error Then $iError = 22
EndIf
_WinAPI_CloseHandle($hToken)
Return SetError($iError, $iLastError, $bRet)
EndFunc
Func _Date_Time_SystemTimeToArray(ByRef $tSYSTEMTIME)
Local $aInfo[8]
$aInfo[0] = DllStructGetData($tSYSTEMTIME, "Month")
$aInfo[1] = DllStructGetData($tSYSTEMTIME, "Day")
$aInfo[2] = DllStructGetData($tSYSTEMTIME, "Year")
$aInfo[3] = DllStructGetData($tSYSTEMTIME, "Hour")
$aInfo[4] = DllStructGetData($tSYSTEMTIME, "Minute")
$aInfo[5] = DllStructGetData($tSYSTEMTIME, "Second")
$aInfo[6] = DllStructGetData($tSYSTEMTIME, "MSeconds")
$aInfo[7] = DllStructGetData($tSYSTEMTIME, "DOW")
Return $aInfo
EndFunc
Func _Date_Time_SystemTimeToDateStr(ByRef $tSYSTEMTIME, $iFmt = 0)
Local $aInfo = _Date_Time_SystemTimeToArray($tSYSTEMTIME)
If @error Then Return SetError(@error, @extended, "")
If $iFmt Then
Return StringFormat("%04d/%02d/%02d", $aInfo[2], $aInfo[0], $aInfo[1])
Else
Return StringFormat("%02d/%02d/%04d", $aInfo[0], $aInfo[1], $aInfo[2])
EndIf
EndFunc
Func _Date_Time_SystemTimeToDateTimeStr(ByRef $tSYSTEMTIME, $iFmt = 0)
Local $aInfo = _Date_Time_SystemTimeToArray($tSYSTEMTIME)
If @error Then Return SetError(@error, @extended, "")
If $iFmt Then
Return StringFormat("%04d/%02d/%02d %02d:%02d:%02d", $aInfo[2], $aInfo[0], $aInfo[1], $aInfo[3], $aInfo[4], $aInfo[5])
Else
Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $aInfo[0], $aInfo[1], $aInfo[2], $aInfo[3], $aInfo[4], $aInfo[5])
EndIf
EndFunc
Func _Date_Time_SystemTimeToFileTime($tSYSTEMTIME)
Local $tFileTime = DllStructCreate($tagFILETIME)
Local $aResult = DllCall("kernel32.dll", "bool", "SystemTimeToFileTime", "struct*", $tSYSTEMTIME, "struct*", $tFileTime)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $tFileTime)
EndFunc
Func _Date_Time_SystemTimeToTimeStr(ByRef $tSYSTEMTIME)
Local $aInfo = _Date_Time_SystemTimeToArray($tSYSTEMTIME)
Return StringFormat("%02d:%02d:%02d", $aInfo[3], $aInfo[4], $aInfo[5])
EndFunc
Func _Date_Time_SystemTimeToTzSpecificLocalTime($tUTC, $tTimeZone = 0)
Local $tLocalTime = DllStructCreate($tagSYSTEMTIME)
Local $aResult = DllCall("kernel32.dll", "bool", "SystemTimeToTzSpecificLocalTime", "struct*", $tTimeZone, "struct*", $tUTC, "struct*", $tLocalTime)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $tLocalTime)
EndFunc
Func _Date_Time_TzSpecificLocalTimeToSystemTime($tLocalTime, $tTimeZone = 0)
Local $tUTC = DllStructCreate($tagSYSTEMTIME)
Local $aResult = DllCall("kernel32.dll", "bool", "TzSpecificLocalTimeToSystemTime", "struct*", $tTimeZone, "struct*", $tLocalTime, "struct*", $tUTC)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aResult[0], $tUTC)
EndFunc
#Region
Global $g_sTimeCheck0 = _NowCalc()
Global $g_sTimeCheck1 = _NowCalc()
Global $g_sTimeCheck2 = _NowCalc()
Global $g_sTimeCheck3 = _NowCalc()
Global $g_sTimeCheck4 = _NowCalc()
Global Const $g_c_sServerEXE = "ConanSandboxServer-Win64-Test.exe"
Global Const $g_c_sPIDFile = @ScriptDir & "\ConanServerUtility_lastpid_tmp"
Global Const $g_c_sHwndFile = @ScriptDir & "\ConanServerUtility_lasthwnd_tmp"
Global Const $g_c_sMODIDFile = @ScriptDir & "\ConanServerUtility_modid2modname.ini"
Global Const $g_c_sLogFile = @ScriptDir & "\ConanServerUtility.log"
Global Const $g_c_sIniFile = @ScriptDir & "\ConanServerUtility.ini"
Global $g_iBeginDelayedShutdown = 0
Global $g_sServerSettingIniLoc = "\ConanSandbox\saved\Config\WindowsServer\ServerSettings.ini"
Global $aValidate = "no"
Global $aBotMsg = ""
#Region
Func ReadUini($sIniFile, $sLogFile)
Local $iIniFail = 0
Local $iniCheck = ""
Local $aChar[3]
For $i = 1 To 13
$aChar[0] = Chr(Random(97, 122, 1))
$aChar[1] = Chr(Random(48, 57, 1))
$iniCheck &= $aChar[Random(0, 1, 1)]
Next
Global $BindIP = IniRead($sIniFile, "Use MULTIHOME to Bind IP? Disable if having connection issues (yes/no)", "BindIP", $iniCheck)
Global $g_IP = IniRead($sIniFile, "Server Settings", "ListenIP", $iniCheck)
Global $GamePort = IniRead($sIniFile, "Server Settings", "GamePort", $iniCheck)
Global $QueryPort = IniRead($sIniFile, "Server Settings", "QueryPort", $iniCheck)
Global $ServerName = IniRead($sIniFile, "Server Settings", "ServerName", $iniCheck)
Global $ServerPass = IniRead($sIniFile, "Server Settings", "ServerPassword", $iniCheck)
Global $AdminPass = IniRead($sIniFile, "Server Settings", "AdminPassword", $iniCheck)
Global $MaxPlayers = IniRead($sIniFile, "Server Settings", "MaxPlayers", $iniCheck)
Global $serverdir = IniRead($sIniFile, "Server Settings", "ServerDirectory(NO_TRAILING_SLASH)", $iniCheck)
Global $UseSteamCMD = IniRead($sIniFile, "Use SteamCMD To Update Server? (yes/no)", "UseSteamCMD", $iniCheck)
Global $steamcmddir = IniRead($sIniFile, "SteamCMD Directory. NO TRAILING SLASH", "steamcmddir", $iniCheck)
Global $g_sSteamLoginName = IniRead($sIniFile, "SteamCMD Login Settings", "SteamLoginName (Leave blank for anonymous)", $iniCheck)
Global $g_sSteamLoginPassword = IniRead($sIniFile, "SteamCMD Login Settings", "SteamLoginPassword", $iniCheck)
Global $validategame = IniRead($sIniFile, "Validate Files Every Time SteamCMD Runs? (yes/no)", "validategame", $iniCheck)
Global $g_sRconEnabled = IniRead($sIniFile, "Server RCON Settings", "EnableRCON(yes/no)", $iniCheck)
Global $g_sRconPass = IniRead($sIniFile, "Server RCON Settings", "RCONPassword", $iniCheck)
Global $g_iRconPort = IniRead($sIniFile, "Server RCON Settings", "RCONPort", $iniCheck)
Global $UseRemoteRestart = IniRead($sIniFile, "Remote Restart Settings", "UseRemoteRestart(yes/no)", $iniCheck)
Global $g_Port = IniRead($sIniFile, "Remote Restart Settings", "ListenPort", $iniCheck)
Global $g_sRKey = IniRead($sIniFile, "Remote Restart Request Key ((http://IP:Port?KEY=user_pass)", "RemoteRestartRequestKey", $iniCheck)
Global $RestartCode = IniRead($sIniFile, "Remote Restart Settings", "RestartPassword", $iniCheck)
Global $sObfuscatePass = IniRead($sIniFile, "Hide Passwords in Log? (yes/no)", "ObfuscatePass", $iniCheck)
Global $CheckForUpdate = IniRead($sIniFile, "Check for Update Every X Minutes? (yes/no)", "CheckForUpdate", $iniCheck)
Global $UpdateInterval = IniRead($sIniFile, "Update Check Interval in Minutes 05-59", "UpdateInterval", $iniCheck)
Global $g_sUpdateMods = IniRead($sIniFile, "Install Mods and Check for Update? (yes/no)", "CheckForModUpdate", $iniCheck)
Global $g_sMods = IniRead($sIniFile, "Install Mods and Check for Update? (yes/no)", "ModList", $iniCheck)
Global $g_sRestartDaily = IniRead($sIniFile, "Restart Server Daily? (yes/no)", "RestartDaily", $iniCheck)
Global $g_sRestartDays = IniRead($sIniFile, "Daily Restart Hours Comma Seperated 0=Everyday Sunday=1 Saturday=7 0-7", "RestartDays", $iniCheck)
Global $g_sRestartHours = IniRead($sIniFile, "Daily Restart Hours Comma Seperated 00-23", "RestartHours", $iniCheck)
Global $g_sRestartMin = IniRead($sIniFile, "Daily Restart Minute 00-59", "RestartMinute", $iniCheck)
Global $ExMem = IniRead($sIniFile, "Excessive Memory Amount?", "ExMem", $iniCheck)
Global $ExMemRestart = IniRead($sIniFile, "Restart On Excessive Memory Use? (yes/no)", "ExMemRestart", $iniCheck)
Global $SteamFix = IniRead($sIniFile, "Running Server with Steam Open? (yes/no)", "SteamFix", $iniCheck)
Global $logRotate = IniRead($sIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logRotate", $iniCheck)
Global $logQuantity = IniRead($sIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logQuantity", $iniCheck)
Global $logHoursBetweenRotate = IniRead($sIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logHoursBetweenRotate", $iniCheck)
Global $aFullRestart = IniRead($sIniFile, "Restart Utility With Updates? (yes/no)", "restartutility", $iniCheck)
Global $sAnnounceScheduledMessage = IniRead($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceSCHEDULEDMessage", $iniCheck)
Global $sAnnounceServerUpdateMessage = IniRead($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceServerUPDATEMessage", $iniCheck)
Global $sAnnounceModUpdateMessage = IniRead($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceModUpdateMessage", $iniCheck)
Global $sAnnounceRemoteRestartMessage = IniRead($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceRemoteRestartMessage", $iniCheck)
Global $sAnnounceNotifyTime = IniRead($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceMinutesBeforeRestart", $iniCheck)
Global $g_sUseInGameScheduled = IniRead($sIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameSCHEDULED", $iniCheck)
Global $g_sUseInGameUpdate = IniRead($sIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameUPDATE", $iniCheck)
Global $g_sUseInGameRemoteRestart = IniRead($sIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameRemoteRestart", $iniCheck)
Global $sUseDiscordBotScheduled = IniRead($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotSCHEDULED", $iniCheck)
Global $sUseDiscordBotUpdate = IniRead($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotUPDATE", $iniCheck)
Global $sUseDiscordBotRemoteRestart = IniRead($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotRemoteRestart", $iniCheck)
Global $sDiscordWebHookURLs = IniRead($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordWebHookURL", $iniCheck)
Global $sDiscordBotName = IniRead($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotName", $iniCheck)
Global $bDiscordBotUseTTS = IniRead($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotUseTTS", $iniCheck)
Global $sDiscordBotAvatar = IniRead($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotAvatarLink", $iniCheck)
Global $sUseTwitchBotScheduled = IniRead($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotSCHEDULED", $iniCheck)
Global $sUseTwitchBotUpdate = IniRead($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotUPDATE", $iniCheck)
Global $sUseTwitchBotRemoteRestart = IniRead($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotRemoteRestart", $iniCheck)
Global $sTwitchNick = IniRead($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "TwitchNick", $iniCheck)
Global $sChatOAuth = IniRead($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "ChatOAuth", $iniCheck)
Global $sTwitchChannels = IniRead($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "TwitchChannels", $iniCheck)
Global $g_sEnableBuildingDmgSchedule = IniRead($sIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "EnableBuildingDamageSchedule", $iniCheck)
Global $g_sBuildingDmgEnabledTimes = IniRead($sIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "BuildingDmgEnabledSchedule", $iniCheck)
Global $g_sFlipBuildingDmgSchedule = IniRead($sIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "FlipBuildingDmgSchedule", $iniCheck)
Global $g_sEnableAvatarSchedule = IniRead($sIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "EnableAvatarSchedule", $iniCheck)
Global $g_sAvatarsDisabledTimes = IniRead($sIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "AvatarsDisabledSchedule", $iniCheck)
Global $g_sFlipAvatarSchedule = IniRead($sIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "FlipAvatarSchedule", $iniCheck)
Global $g_sIniOverwriteFix = IniRead($sIniFile, "Bug Fix - Copy from then Delete Default Server Settings INI? (yes/no)", "IniOverwriteFix", $iniCheck)
Global $g_sExtraServerCommands = IniRead($sIniFile, "Extra Command Line Options. Leave Blank if Not Using", "ExtraServerCommands", $iniCheck)
Global $g_sExecuteExternalScript = IniRead($sIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExecuteExternalScriptBeforeUpdate", $iniCheck)
Global $g_sExternalScriptDir = IniRead($sIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExternalScriptBeforeDirectory", $iniCheck)
Global $g_sExternalScriptName = IniRead($sIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExternalScriptBeforeFileName", $iniCheck)
Global $g_sExecuteExternalScriptValidate = IniRead($sIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExecuteExternalScriptAfterUpdate", $iniCheck)
Global $g_sExternalScriptDirValidate = IniRead($sIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExternalScriptAfterDirectory", $iniCheck)
Global $g_sExternalScriptNameValidate = IniRead($sIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExternalScriptAfterFileName", $iniCheck)
Global $g_sEnableDebug = IniRead($sIniFile, "Enable Debug to Output More Log Detail? (yes/no)", "EnableDebug", $iniCheck)
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
$bDiscordBotUseTTS = "yes"
$iIniFail += 1
EndIf
If $iniCheck = $sDiscordBotAvatar Then
$sDiscordBotAvatar = ""
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
iniFileCheck($sIniFile, $iIniFail)
EndIf
If $g_sRconEnabled = "yes" Then
Global $g_iRconEnabled = 1
Else
Global $g_iRconEnabled = 0
EndIf
If $iIniFail > 0 Then
iniFileCheck($sIniFile, $iIniFail)
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
Global $g_bIniOverwriteFix = True
Else
Global $g_bIniOverwriteFix = False
EndIf
If $g_sEnableDebug = "yes" Then
Global $g_bDebug = True
Else
Global $g_bDebug = False
EndIf
EndFunc
Func iniFileCheck($sIniFile, $iIniFail)
If FileExists($sIniFile) Then
Local $aMyDate, $aMyTime
_DateTimeSplit(_NowCalc(), $aMyDate, $aMyTime)
Local $iniDate = StringFormat("%04i.%02i.%02i.%02i%02i", $aMyDate[1], $aMyDate[2], $aMyDate[3], $aMyTime[1], $aMyTime[2])
FileMove($sIniFile, $sIniFile & "_" & $iniDate & ".bak", 1)
UpdateIni($sIniFile)
MsgBox(4096, "INI MISMATCH", "Found " & $iIniFail & " Missing Variables" & @CRLF & @CRLF & "Backup created and all existing settings transfered to new INI." & @CRLF & @CRLF & "Modify INI and restart.")
ShellExecute($sIniFile)
Exit
Else
UpdateIni($sIniFile)
MsgBox(4096, "Default INI File Created", "Please Modify Default Values and Restart Program.")
Exit
EndIf
EndFunc
Func UpdateIni($sIniFile)
IniWrite($sIniFile, "Use MULTIHOME to Bind IP? Disable if having connection issues (yes/no)", "BindIP", $BindIP)
IniWrite($sIniFile, "Server Settings", "ListenIP", $g_IP)
IniWrite($sIniFile, "Server Settings", "GamePort", $GamePort)
IniWrite($sIniFile, "Server Settings", "QueryPort", $QueryPort)
IniWrite($sIniFile, "Server Settings", "ServerName", $ServerName)
IniWrite($sIniFile, "Server Settings", "ServerPassword", $ServerPass)
IniWrite($sIniFile, "Server Settings", "AdminPassword", $AdminPass)
IniWrite($sIniFile, "Server Settings", "MaxPlayers", $MaxPlayers)
IniWrite($sIniFile, "Server Settings", "ServerDirectory(NO_TRAILING_SLASH)", $serverdir)
IniWrite($sIniFile, "Use SteamCMD To Update Server? (yes/no)", "UseSteamCMD", $UseSteamCMD)
IniWrite($sIniFile, "SteamCMD Directory. NO TRAILING SLASH", "steamcmddir", $steamcmddir)
IniWrite($sIniFile, "SteamCMD Login Settings", "SteamLoginName (Leave blank for anonymous)", $g_sSteamLoginName)
IniWrite($sIniFile, "SteamCMD Login Settings", "SteamLoginPassword", $g_sSteamLoginPassword)
IniWrite($sIniFile, "Validate Files Every Time SteamCMD Runs? (yes/no)", "validategame", $validategame)
IniWrite($sIniFile, "Server RCON Settings", "EnableRCON(yes/no)", $g_sRconEnabled)
IniWrite($sIniFile, "Server RCON Settings", "RCONPassword", $g_sRconPass)
IniWrite($sIniFile, "Server RCON Settings", "RCONPort", $g_iRconPort)
IniWrite($sIniFile, "Remote Restart Settings", "UseRemoteRestart(yes/no)", $UseRemoteRestart)
IniWrite($sIniFile, "Remote Restart Settings", "ListenPort", $g_Port)
IniWrite($sIniFile, "Remote Restart Settings", "RestartPassword", $RestartCode)
IniWrite($sIniFile, "Remote Restart Request Key ((http://IP:Port?KEY=user_pass)", "RemoteRestartRequestKey", $g_sRKey)
IniWrite($sIniFile, "Hide Passwords in Log? (yes/no)", "ObfuscatePass", $sObfuscatePass)
IniWrite($sIniFile, "Check for Update Every X Minutes? (yes/no)", "CheckForUpdate", $CheckForUpdate)
IniWrite($sIniFile, "Update Check Interval in Minutes 05-59", "UpdateInterval", $UpdateInterval)
IniWrite($sIniFile, "Install Mods and Check for Update? (yes/no)", "CheckForModUpdate", $g_sUpdateMods)
IniWrite($sIniFile, "Install Mods and Check for Update? (yes/no)", "ModList", $g_sMods)
IniWrite($sIniFile, "Restart Server Daily? (yes/no)", "RestartDaily", $g_sRestartDaily)
IniWrite($sIniFile, "Daily Restart Hours Comma Seperated 0=Everyday Sunday=1 Saturday=7 0-7", "RestartDays", $g_sRestartDays)
IniWrite($sIniFile, "Daily Restart Hours Comma Seperated 00-23", "RestartHours", $g_sRestartHours)
IniWrite($sIniFile, "Daily Restart Minute 00-59", "RestartMinute", $g_sRestartMin)
IniWrite($sIniFile, "Excessive Memory Amount?", "ExMem", $ExMem)
IniWrite($sIniFile, "Restart On Excessive Memory Use? (yes/no)", "ExMemRestart", $ExMemRestart)
IniWrite($sIniFile, "Running Server with Steam Open? (yes/no)", "SteamFix", $SteamFix)
IniWrite($sIniFile, "Restart Utility With Updates? (yes/no)", "restartutility", $aFullRestart)
IniWrite($sIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logRotate", $logRotate)
IniWrite($sIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logQuantity", $logQuantity)
IniWrite($sIniFile, "Rotate X Number of Logs every X Hours? (yes/no)", "logHoursBetweenRotate", $logHoursBetweenRotate)
IniWrite($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceSCHEDULEDMessage", $sAnnounceScheduledMessage)
IniWrite($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceServerUPDATEMessage", $sAnnounceServerUpdateMessage)
IniWrite($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceModUpdateMessage", $sAnnounceModUpdateMessage)
IniWrite($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceRemoteRestartMessage", $sAnnounceRemoteRestartMessage)
IniWrite($sIniFile, "Message to Announce Server Restarts on Discord and Twitch (if enabled)?", "AnnounceMinutesBeforeRestart", $sAnnounceNotifyTime)
IniWrite($sIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameSCHEDULED", $g_sUseInGameScheduled)
IniWrite($sIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameUPDATE", $g_sUseInGameUpdate)
IniWrite($sIniFile, "Send In Game Message to Announce Scheduled/Update Restarts? (yes/no)", "UseInGameRemoteRestart", $g_sUseInGameRemoteRestart)
IniWrite($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotSCHEDULED", $sUseDiscordBotScheduled)
IniWrite($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotUPDATE", $sUseDiscordBotUpdate)
IniWrite($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseDiscordBotRemoteRestart", $sUseDiscordBotRemoteRestart)
IniWrite($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordWebHookURL", $sDiscordWebHookURLs)
IniWrite($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotName", $sDiscordBotName)
IniWrite($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotUseTTS", $bDiscordBotUseTTS)
IniWrite($sIniFile, "Use Discord Bot to Announce Scheduled/Update Restarts? (yes/no)", "DiscordBotAvatarLink", $sDiscordBotAvatar)
IniWrite($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotSCHEDULED", $sUseTwitchBotScheduled)
IniWrite($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotUPDATE", $sUseTwitchBotUpdate)
IniWrite($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "UseTwitchBotRemoteRestart", $sUseTwitchBotRemoteRestart)
IniWrite($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "TwitchNick", $sTwitchNick)
IniWrite($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "ChatOAuth", $sChatOAuth)
IniWrite($sIniFile, "Use Twitch Bot to Announce Scheduled/Update Restarts? (yes/no)", "TwitchChannels", $sTwitchChannels)
IniWrite($sIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "EnableBuildingDamageSchedule", $g_sEnableBuildingDmgSchedule)
IniWrite($sIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "BuildingDmgEnabledSchedule", $g_sBuildingDmgEnabledTimes)
IniWrite($sIniFile, "Enable Building Damage by Scheduled Time? (yes/no)", "FlipBuildingDmgSchedule", $g_sFlipBuildingDmgSchedule)
IniWrite($sIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "EnableAvatarSchedule", $g_sEnableAvatarSchedule)
IniWrite($sIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "AvatarsDisabledSchedule", $g_sAvatarsDisabledTimes)
IniWrite($sIniFile, "Disable Avatars by Scheduled Time? (yes/no)", "FlipAvatarSchedule", $g_sFlipAvatarSchedule)
IniWrite($sIniFile, "Bug Fix - Copy from then Delete Default Server Settings INI? (yes/no)", "IniOverwriteFix", $g_sIniOverwriteFix)
IniWrite($sIniFile, "Extra Command Line Options. Leave Blank if Not Using", "ExtraServerCommands", $g_sExtraServerCommands)
IniWrite($sIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExecuteExternalScriptBeforeUpdate", $g_sExecuteExternalScript)
IniWrite($sIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExternalScriptBeforeDirectory", $g_sExternalScriptDir)
IniWrite($sIniFile, "Execute External Script Before SteamCMD Update and Server Start? (yes/no)", "ExternalScriptBeforeFileName", $g_sExternalScriptName)
IniWrite($sIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExecuteExternalScriptAfterUpdate", $g_sExecuteExternalScriptValidate)
IniWrite($sIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExternalScriptAfterDirectory", $g_sExternalScriptDirValidate)
IniWrite($sIniFile, "Execute External Script AFTER SteamCMD Update and BEFORE Server Start? (yes/no)", "ExternalScriptAfterFileName", $g_sExternalScriptNameValidate)
IniWrite($sIniFile, "Enable Debug to Output More Log Detail? (yes/no)", "EnableDebug", $g_sEnableDebug)
EndFunc
#EndRegion
#Region
Func _ExtractZip($sZipFile, $sFolderStructure, $sFile, $sDestinationFolder)
Local $i
Do
$i += 1
$sTempZipFolder = @TempDir & "\Temporary Directory " & $i & " for " & StringRegExpReplace($sZipFile, ".*\\", "")
Until Not FileExists($sTempZipFolder)
Local $oShell = ObjCreate("Shell.Application")
If Not IsObj($oShell) Then
Return SetError(1, 0, 0)
EndIf
Local $oDestinationFolder = $oShell.NameSpace($sDestinationFolder)
If Not IsObj($oDestinationFolder) Then
Return SetError(2, 0, 0)
EndIf
Local $oOriginFolder = $oShell.NameSpace($sZipFile & "\" & $sFolderStructure)
If Not IsObj($oOriginFolder) Then
Return SetError(3, 0, 0)
EndIf
Local $oOriginFile = $oOriginFolder.ParseName($sFile)
If Not IsObj($oOriginFile) Then
Return SetError(4, 0, 0)
EndIf
$oDestinationFolder.CopyHere($oOriginFile, 4)
DirRemove($sTempZipFolder, 1)
Return 1
EndFunc
#EndRegion
#Region
#Region
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
EndFunc
#EndRegion
#Region
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
EndFunc
#EndRegion
#Region
Func _TCP_Server_ClientIP($hSocket)
Local $pSocketAddress, $aReturn
$pSocketAddress = DllStructCreate("short;ushort;uint;char[8]")
$aReturn = DllCall("ws2_32.dll", "int", "getpeername", "int", $hSocket, "ptr", DllStructGetPtr($pSocketAddress), "int*", DllStructGetSize($pSocketAddress))
If @error Or $aReturn[0] <> 0 Then Return $hSocket
$aReturn = DllCall("ws2_32.dll", "str", "inet_ntoa", "int", DllStructGetData($pSocketAddress, 3))
If @error Then Return $hSocket
$pSocketAddress = 0
Return $aReturn[0]
EndFunc
#EndRegion
#Region
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
EndFunc
#EndRegion
#Region
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
EndFunc
#EndRegion
#Region
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
EndFunc
#EndRegion
#EndRegion
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
#EndRegion
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
EndFunc
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
EndFunc
#Region --- Restart Program ---
Func _RestartProgram()
$aRestart = True
If @Compiled = 1 Then
Run(FileGetShortName(@ScriptFullPath))
Else
Run(FileGetShortName(@AutoItExe) & " " & FileGetShortName(@ScriptFullPath))
EndIf
Exit
EndFunc
#EndRegion --- Restart Program ---
Func LogWrite($sString)
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] " & $sString)
EndFunc
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
EndFunc
Func RotateFile($sFile, $sBackupQty, $bDelOrig = True)
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
EndFunc
#Region
Func CheckRange($sTimeSpan)
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
$aReturn[0] = False
$aReturn[1] = False
$aReturn[2] = $aStartStop[$i]
ExitLoop
ElseIf (($aStart[1] = "0") Or ($aStop[1] = "0")) And ($iTime >= $aStart[2]) And ($iTime <= $aStop[2]) Then
$aReturn[0] = True
ExitLoop
ElseIf ($aStart[1] = $aStop[1]) And (((@WDAY = $aStart[1]) Or (@WDAY = $aStop[1])) And ($iTime >= $aStart[2]) And ($iTime <= $aStop[2])) Then
$aReturn[0] = True
ExitLoop
ElseIf ($aStop[1] > $aStart[1]) And ((@WDAY > $aStart[1]) And (@WDAY < $aStop[1])) Then
$aReturn[0] = True
ExitLoop
ElseIf ($aStop[1] < $aStart[1]) And ((@WDAY > $aStart[1]) Or (@WDAY < $aStop[1])) Then
$aReturn[0] = True
ExitLoop
ElseIf ($aStop[1] <> $aStart[1]) And ((@WDAY = $aStart[1] And $iTime >= $aStart[2]) Or (@WDAY = $aStop[1] And $iTime <= $aStop[2])) Then
$aReturn[0] = True
ExitLoop
Else
$aReturn[0] = False
EndIf
Else
$aReturn[1] = False
$aReturn[2] = $aStartStop[$i]
ExitLoop
EndIf
Next
Return $aReturn
EndFunc
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
EndFunc
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
EndFunc
Func CheckSetting($sTimesAllowed, $sCheckINI, $sCheckSec, $sCheckKey, $bFlipSetting = False)
Local $aReturn[3] = [False, False, False]
Local $aInRange = CheckRange($sTimesAllowed)
If $aInRange[1] Then
If $bFlipSetting Then
Local $sValforEnabled = "False"
Local $sValforDisabled = "True"
$aReturn[0] = True
Else
Local $sValforEnabled = "True"
Local $sValforDisabled = "False"
EndIf
Local $sCurrentSetting = IniRead($sCheckINI, $sCheckSec, $sCheckKey, "True")
If $aInRange[0] And $sCurrentSetting = $sValforDisabled Then
If $bFlipSetting Then
$aReturn[0] = False
Else
$aReturn[0] = True
EndIf
If ProcessExists($g_sConanPID) Then
$aReturn[1] = True
Else
Local $bSettingChanged = ChangeSetting($sCheckINI, $sCheckSec, $sCheckKey, $sValforEnabled)
If $bSettingChanged Then
$aReturn[2] = True
EndIf
EndIf
ElseIf Not $aInRange[0] And $sCurrentSetting = $sValforEnabled Then
If ProcessExists($g_sConanPID) Then
$aReturn[1] = True
Else
Local $bSettingChanged = ChangeSetting($sCheckINI, $sCheckSec, $sCheckKey, $sValforDisabled)
If $bSettingChanged Then
$aReturn[2] = True
EndIf
EndIf
EndIf
Else
FileWriteLine($g_c_sLogFile, _NowCalc() & "[" & $ServerName & "] [TIME FORMAT ERROR] Date Format Wrong. This was entered[ " & $aInRange[2] & " ]Proper Format is WDAY-HHMMtoWDAY-HHMM  (Sunday=1 Saturday=7 Everyday=0) It is currently " & @WDAY & "-" & @HOUR & @MIN & @CRLF)
EndIf
Return $aReturn
EndFunc
Func RaidCheck($bFlipSetting = False)
Local $sServerSettingsFile = $serverdir & $g_sServerSettingIniLoc
Local $aRaidCheck = CheckSetting($g_sBuildingDmgEnabledTimes, $sServerSettingsFile, "ServerSettings", "CanDamagePlayerOwnedStructures", $bFlipSetting)
If $aRaidCheck[1] Then
If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
$aBotMsg = $sAnnounceScheduledMessage
$g_iBeginDelayedShutdown = 1
Else
CloseServer()
EndIf
ElseIf $aRaidCheck[0] And $aRaidCheck[2] Then
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Player Owned Structure Damage Enabled!")
Local $sMessage = $ServerName & " Player Owned Structures Can be Damaged!"
If $sUseDiscordBotScheduled = "yes" Then
SendDiscordMsg($sDiscordWebHookURLs, $sMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
EndIf
If $sUseTwitchBotScheduled = "yes" Then
TwitchMsgLog($sMessage)
EndIf
ElseIf Not $aRaidCheck[0] And $aRaidCheck[2] Then
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Player Owned Structure Damage Disabled!")
Local $sMessage = $ServerName & " Player Owned Structures Can NOT be Damaged!"
If $sUseDiscordBotScheduled = "yes" Then
SendDiscordMsg($sDiscordWebHookURLs, $sMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
EndIf
If $sUseTwitchBotScheduled = "yes" Then
TwitchMsgLog($sMessage)
EndIf
EndIf
EndFunc
Func AvatarCheck($bFlipSetting = False)
Local $sServerSettingsFile = $serverdir & $g_sServerSettingIniLoc
Local $aAvatarCheck = CheckSetting($g_sAvatarsDisabledTimes, $sServerSettingsFile, "ServerSettings", "AvatarsDisabled", $bFlipSetting)
If $aAvatarCheck[1] Then
If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
$aBotMsg = $sAnnounceScheduledMessage
$g_iBeginDelayedShutdown = 1
Else
CloseServer()
EndIf
ElseIf $aAvatarCheck[0] And $aAvatarCheck[2] Then
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Avatars Disabled!")
Local $sMessage = $ServerName & " Avatars are now Disabled!"
If $sUseDiscordBotScheduled = "yes" Then
SendDiscordMsg($sDiscordWebHookURLs, $sMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
EndIf
If $sUseTwitchBotScheduled = "yes" Then
TwitchMsgLog($sMessage)
EndIf
ElseIf Not $aAvatarCheck[0] And $aAvatarCheck[2] Then
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & "] Avatars Enabled!")
Local $sMessage = $ServerName & " Avatars are now Enabled!"
If $sUseDiscordBotScheduled = "yes" Then
SendDiscordMsg($sDiscordWebHookURLs, $sMessage, $sDiscordBotName, $bDiscordBotUseTTS, $sDiscordBotAvatar)
EndIf
If $sUseTwitchBotScheduled = "yes" Then
TwitchMsgLog($sMessage)
EndIf
EndIf
EndFunc
#EndRegion
#Region
Func _Discord_ErrFunc($oError)
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Error: 0x" & Hex($oError.number) & " While Sending Discord Bot Message.")
EndFunc
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
EndFunc
#EndRegion
#Region
Opt("TCPTimeout", 500)
Func SendTwitchMsg($sT_Nick, $sT_OAuth, $sT_Channels, $sT_Message)
Local $aTwitchReturn[4] = [False, False, "", False]
Local $sTwitchIRC = TCPConnect(TCPNameToIP("irc.chat.twitch.tv"), 6667)
If @error Then
TCPCloseSocket($sTwitchIRC)
Return $aTwitchReturn
Else
$aTwitchReturn[0] = True
TCPSend($sTwitchIRC, "PASS " & StringLower($sT_OAuth) & @CRLF)
TCPSend($sTwitchIRC, "NICK " & StringLower($sT_Nick) & @CRLF)
Local $sTwitchReceive = ""
Local $iTimer1 = TimerInit()
While TimerDiff($iTimer1) < 1000
$sTwitchReceive &= TCPRecv($sTwitchIRC, 1)
If @error Then ExitLoop
WEnd
Local $aTwitchReceiveLines = StringSplit($sTwitchReceive, @CRLF, 1)
$aTwitchReturn[2] = $aTwitchReceiveLines[1]
If StringRegExp($aTwitchReceiveLines[$aTwitchReceiveLines[0] - 1], "(?i):tmi.twitch.tv 376 " & $sT_Nick & " :>") Then
$aTwitchReturn[1] = True
Local $aTwitchChannels = StringSplit($sT_Channels, ",")
For $i = 1 To $aTwitchChannels[0]
TCPSend($sTwitchIRC, "PRIVMSG #" & StringLower($aTwitchChannels[$i]) & " :" & $sT_Message & @CRLF)
If @error Then
TCPCloseSocket($sTwitchIRC)
$aTwitchReturn[3] = False
Return $aTwitchReturn
ExitLoop
Else
$aTwitchReturn[3] = True
If $aTwitchChannels[0] > 17 Then
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
EndFunc
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
EndFunc
#EndRegion
#Region
Func MCRCONcmd($l_sPath, $l_sIP, $l_sPort, $l_sPass, $l_sCommand, $l_sMessage = "")
If $l_sCommand = "broadcast" Then
RunWait($l_sPath & '\mcrcon.exe -c -s -H ' & $l_sIP & ' -P ' & $l_sPort & ' -p ' & $l_sPass & ' "broadcast ' & $l_sMessage & '"', $l_sPath, @SW_HIDE)
EndIf
EndFunc
#EndRegion
#Region
Func GetLatestVersion($sCmdDir)
Local $aReturn[2] = [False, ""]
If FileExists($sCmdDir & "\appcache") Then
DirRemove($sCmdDir & "\appcache", 1)
EndIf
If $g_sSteamLoginName = "" Then
Local $tCMD = '"' & @ComSpec & '" /c "' & $sCmdDir & '\steamcmd.exe" +login anonymous +app_info_update 1 +app_info_print 443030 +app_info_print 443030 +exit > app_info.tmp', $sCmdDir, @SW_HIDE
Else
Local $tCMD = '"' & @ComSpec & '" /c "' & $sCmdDir & '\steamcmd.exe" +login ' & $g_sSteamLoginName & " " & $g_sSteamLoginPassword & ' +app_info_update 1 +app_info_print 443030 +app_info_print 443030 +exit > app_info.tmp', $sCmdDir, @SW_HIDE
EndIf
RunWait($tCMD)
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
EndFunc
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
EndFunc
Func UpdateCheck()
If FileExists($steamcmddir & "\app_info.tmp") Then
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Delaying Update Check for 1 minute. | Found Existing " & $steamcmddir & "\app_info.tmp")
Sleep(60000)
If FileExists($steamcmddir & "\app_info.tmp") Then
FileDelete($steamcmddir & "\app_info.tmp")
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Deleted " & $steamcmddir & "\app_info.tmp")
EndIf
EndIf
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
EndFunc
#EndRegion
#Region
Func GetLatestModUpdateTime($sMod)
Local $aReturn[3] = [False, False, ""]
InetGet("http://steamcommunity.com/sharedfiles/filedetails/changelog/" & $sMod, @ScriptDir & "\mod_info.tmp", 1)
Local Const $sFilePath = @ScriptDir & "\mod_info.tmp"
Local $hFileOpen = FileOpen($sFilePath, 0)
If $hFileOpen = -1 Then
$aReturn[0] = False
Else
$aReturn[0] = True
Local $sFileRead = FileRead($hFileOpen)
Local $aAppInfo = StringSplit($sFileRead, 'Update:', 1)
If UBound($aAppInfo) >= 3 Then
$aAppInfo = StringSplit($aAppInfo[2], '">', 1)
EndIf
If UBound($aAppInfo) >= 2 Then
$aAppInfo = StringSplit($aAppInfo[1], 'id="', 1)
EndIf
If UBound($aAppInfo) >= 2 And StringRegExp($aAppInfo[2], '^\d+$') Then
$aReturn[1] = True
$aReturn[2] = $aAppInfo[2]
EndIf
FileClose($hFileOpen)
If FileExists($sFilePath) Then
FileDelete($sFilePath)
EndIf
EndIf
Return $aReturn
EndFunc
Func GetInstalledModUpdateTime($sServerDir, $sMod)
Local $aReturn[3] = [False, False, ""]
Local Const $sFilePath = $sServerDir & "\steamapps\workshop\appworkshop_440900.acf"
Local $hFileOpen = FileOpen($sFilePath, 0)
If $hFileOpen = -1 Then
$aReturn[0] = False
Else
$aReturn[0] = True
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
$aReturn[1] = True
$aReturn[2] = $aAppInfo[8]
EndIf
If FileExists($sFilePath) Then
FileClose($hFileOpen)
EndIf
EndIf
Return $aReturn
EndFunc
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
$bStopUpdate = UpdateMod($aMods[$i], $sSteamCmdDir, $sServerDir, 0)
If $bStopUpdate Then ExitLoop
ElseIf Not $aInstalledTime[1] Then
$bStopUpdate = UpdateMod($aMods[$i], $sSteamCmdDir, $sServerDir, 1)
If $bStopUpdate Then ExitLoop
ElseIf $aInstalledTime[1] And (StringCompare($aLatestTime[2], $aInstalledTime[2]) <> 0) Then
$bStopUpdate = UpdateMod($aMods[$i], $sSteamCmdDir, $sServerDir, 2)
If $bStopUpdate Then ExitLoop
EndIf
Next
WriteModList($sServerDir)
If Not $g_iBeginDelayedShutdown = 1 Then
LogWrite("Mods are Up to Date.")
EndIf
EndFunc
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
EndFunc
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
EndFunc
Func UpdateMod($sMod, $sSteamCmdDir, $sServerDir, $iReason)
Local $bReturn = False
If ProcessExists("steamcmd.exe") And FileExists($sSteamCmdDir & "\inuse.tmp") Then
LogWrite("A different Script is currently using SteamCMD in this directory. Skipping Mod " & $sMod & " Update for Now")
$bReturn = True
ElseIf ProcessExists($g_sConanPID) Then
LogWrite("Mod Update Found but Server is Currently Running.")
If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
$aBotMsg = $sAnnounceModUpdateMessage
$g_iBeginDelayedShutdown = 1
Else
CloseServer()
EndIf
$bReturn = True
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
Local $tCMD = "" & $sSteamCmdDir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +workshop_download_item 440900 " & $sMod & " +exit"
Else
Local $tCMD = "" & $sSteamCmdDir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login " & $g_sSteamLoginName & " " & $g_sSteamLoginPassword & " +workshop_download_item 440900 " & $sMod & " +exit"
EndIf
RunWait($tCMD)
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
$bReturn = False
Local $hTimeOutTimer = TimerInit()
While FileExists($sSteamCmdDir & "\inuse.tmp")
FileDelete($sSteamCmdDir & "\inuse.tmp")
If @error Then ExitLoop
If TimerDiff($hTimeOutTimer) > 10000 Then ExitLoop
WEnd
EndIf
Return $bReturn
EndFunc
#EndRegion
Func CloseEPointError($iWaitTime = 10)
WinWait("" & $g_c_sServerEXE & " - Entry Point Not Found", "", $iWaitTime)
While WinExists("" & $g_c_sServerEXE & " - Entry Point Not Found")
ControlSend("" & $g_c_sServerEXE & " - Entry Point Not Found", "", "", "{enter}")
WEnd
EndFunc
Func SteamcmdDelete($sCmdDir)
FileWriteLine($g_c_sLogFile, _NowCalc() & " [Update] Deleting SteamCMD package and steampps temp folders.")
DirRemove($sCmdDir & "\package", 1)
DirRemove($sCmdDir & "\steamapps", 1)
EndFunc
#Region
OnAutoItExitRegister("Gamercide")
SplashTextOn("ConanServerUtil", "ConanServerUtility_Phoenix125_Edition started.", 500, 50, -1, -1, $DLG_MOVEABLE, "")
FileWriteLine($g_c_sLogFile, _NowCalc() & " ============================ ConanServerUtility_Phoenix125-Edition Started ============================")
ReadUini($g_c_sIniFile, $g_c_sLogFile)
If $UseSteamCMD = "yes" Then
Local $sFileExists = FileExists($steamcmddir & "\steamcmd.exe")
If $sFileExists = 0 Then
InetGet("https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip", @ScriptDir & "\steamcmd.zip", 0)
DirCreate($steamcmddir)
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
Local $manifestFound = MsgBox(4100, "Warning", "Install manifest found at " & $steamcmddir & "\steamapps\appmanifest_443030.acf" & @CRLF & @CRLF & "Suggest moving file to " & $serverdir & "\steamapps\appmanifest_443030.acf before running SteamCMD" & @CRLF & @CRLF & "Would you like to Exit Now?", 20)
If $manifestFound = 6 Then
Exit
EndIf
EndIf
If $g_sUpdateMods = "yes" Then
Local Const $sModManifest = "\steamapps\workshop\appworkshop_440900.acf"
If FileExists($serverdir & $sModManifest) And Not FileExists($g_c_sMODIDFile) Then
Local $ModListNotFound = MsgBox(4100, "Warning", "Existing Mods found, but there is no Mod ID to Mod Name file. If you continue all of your mods will be downloaded again " & "so modlist.txt can be ordered properly. Exit and refer to README if you don't wish to download mods again." & @CRLF & @CRLF & "Continue? (Press No to Exit)")
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
DirCreate(@ScriptDir)
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
#EndRegion
SplashOff()
While True
#Region
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
#EndRegion
#Region
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
Local $tCMD = "" & $steamcmddir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir """ & $serverdir & """ +app_update 443030 validate +quit"
Else
Local $tCMD = "" & $steamcmddir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login " & $g_sSteamLoginName & " " & $g_sSteamLoginPassword & " +force_install_dir """ & $serverdir & """ +app_update 443030 validate +quit"
EndIf
If $g_bDebug Then
FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD with validate: " & $tCMD)
Else
FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD with validate.")
EndIf
RunWait($tCMD)
SplashOff()
Sleep(2000)
Else
If $g_sSteamLoginName = "" Then
Local $tCMD = "" & $steamcmddir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir """ & $serverdir & """ +app_update 443030 +quit"
Else
Local $tCMD = "" & $steamcmddir & "\steamcmd.exe +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login " & $g_sSteamLoginName & " " & $g_sSteamLoginPassword & " +force_install_dir """ & $serverdir & """ +app_update 443030 +quit"
EndIf
If $g_bDebug Then
FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD without validate: " & $tCMD)
Else
FileWriteLine($g_c_sLogFile, _NowCalc() & " Running SteamCMD without validate.")
EndIf
RunWait($tCMD)
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
Case $iMsgBoxAnswer = 4
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server Failed to Start. User Initiated a Restart Attempt.")
Case $iMsgBoxAnswer = 2
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Server Failed to Start - ConanServerUtility Shutdown - Intiated by User")
Exit
Case $iMsgBoxAnswer = -1
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
#EndRegion
#Region
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
#EndRegion
#Region
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
#EndRegion
#Region
If ((_DateDiff('n', $g_sTimeCheck3, _NowCalc())) >= 1) And ($g_iBeginDelayedShutdown = 0) Then
If $g_sEnableBuildingDmgSchedule = "yes" Then
RaidCheck($g_bFlipBuildingDmgSchedule)
EndIf
If $g_sEnableAvatarSchedule = "yes" Then
AvatarCheck($g_bFlipAvatarSchedule)
EndIf
$g_sTimeCheck3 = _NowCalc()
EndIf
#EndRegion
#Region
If ($sUseDiscordBotScheduled = "yes") Or ($sUseDiscordBotUpdate = "yes") Or ($sUseTwitchBotScheduled = "yes") Or ($sUseTwitchBotUpdate = "yes") Or ($g_sUseInGameScheduled = "yes") Or ($g_sUseInGameUpdate = "yes") Then
If $g_iBeginDelayedShutdown = 1 Then
FileWriteLine($g_c_sLogFile, _NowCalc() & " [" & $ServerName & " (PID: " & $g_sConanPID & ")] Bot in Use. Delaying Shutdown for " & $g_iDelayShutdownTime & " minutes. Notifying Channel")
Local $sShutdownMessage = $ServerName & ": " & $aBotMsg & " Server restarting in " & $g_iDelayShutdownTime & " minutes"
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
#EndRegion
#Region
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
#EndRegion
If $SteamFix = "yes" And WinExists("" & $g_c_sServerEXE & " - Entry Point Not Found") Then
CloseEPointError(15)
EndIf
Sleep(1000)
WEnd
