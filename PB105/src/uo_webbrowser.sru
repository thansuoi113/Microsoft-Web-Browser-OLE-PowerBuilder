$PBExportHeader$uo_webbrowser.sru
forward
global type uo_webbrowser from olecustomcontrol
end type
end forward

global type uo_webbrowser from olecustomcontrol
integer width = 1655
integer height = 1032
integer taborder = 10
boolean border = false
string binarykey = "uo_webbrowser.udo"
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
event statustextchange ( string text )
event progresschange ( long progress,  long progressmax )
event commandstatechange ( long command,  boolean enable )
event downloadbegin ( )
event downloadcomplete ( )
event titlechange ( string text )
event propertychange ( string szproperty )
event beforenavigate2 ( oleobject pdisp,  any url,  any flags,  any targetframename,  any postdata,  any headers,  ref boolean bcancel )
event newwindow2 ( ref oleobject ppdisp,  ref boolean bcancel )
event navigatecomplete2 ( oleobject pdisp,  any url )
event documentcomplete ( oleobject pdisp,  any url )
event onquit ( )
event onvisible ( boolean ocx_visible )
event ontoolbar ( boolean toolbar )
event onmenubar ( boolean menubar )
event onstatusbar ( boolean statusbar )
event onfullscreen ( boolean fullscreen )
event ontheatermode ( boolean theatermode )
event windowsetresizable ( boolean resizable )
event windowsetleft ( long left )
event windowsettop ( long top )
event windowsetwidth ( long ocx_width )
event windowsetheight ( long ocx_height )
event windowclosing ( boolean ischildwindow,  ref boolean bcancel )
event clienttohostwindow ( ref long cx,  ref long cy )
event setsecurelockicon ( long securelockicon )
event filedownload ( boolean activedocument,  ref boolean bcancel )
event navigateerror ( oleobject pdisp,  any url,  any frame,  any statuscode,  ref boolean bcancel )
event printtemplateinstantiation ( oleobject pdisp )
event printtemplateteardown ( oleobject pdisp )
event updatepagestatus ( oleobject pdisp,  any npage,  any fdone )
event privacyimpactedstatechange ( boolean bimpacted )
event setphishingfilterstatus ( long phishingfilterstatus )
event newprocess ( long lcauseflag,  oleobject pwb2,  ref boolean bcancel )
event redirectxdomainblocked ( oleobject pdisp,  any starturl,  any redirecturl,  any frame,  any statuscode )
event beforescriptexecute ( oleobject pdispwindow )
end type
global uo_webbrowser uo_webbrowser

type prototypes
Function long ShellExecute ( &
	long hwindow, &
	string lpOperation, &
	string lpFile, &
	string lpParameters, &
	string lpDirectory, &
	long nShowCmd &
	) Library "shell32.dll" Alias for "ShellExecuteW"

Function long GetDesktopWindow ( &
	) Library "user32.dll"

Function ulong CreateFile ( &
	string lpFileName, &
	ulong dwDesiredAccess, &
	ulong dwShareMode, &
	ulong lpSecurityAttributes, &
	ulong dwCreationDisposition, &
	ulong dwFlagsAndAttributes, &
	ulong hTemplateFile &
	) Library "kernel32.dll" Alias For "CreateFileW"

Function boolean ReadFile ( &
	ulong hFile, &
	Ref blob lpBuffer, &
	ulong nNumberOfBytesToRead, &
	Ref ulong lpNumberOfBytesRead, &
	ulong lpOverlapped &
	) Library "kernel32.dll"

Function boolean WriteFile ( &
	ulong hFile, &
	blob lpBuffer, &
	ulong nNumberOfBytesToWrite, &
	Ref ulong lpNumberOfBytesWritten, &
	ulong lpOverlapped &
	) Library "kernel32.dll"

Function boolean CloseHandle ( &
	ulong hObject &
	) Library "kernel32.dll"
	
Function ULong GetModuleFileName (ULong hinstModule, Ref String lpszPath, ULong cchPath ) Library "kernel32.dll"  Alias For "GetModuleFileNameA;ansi" 

end prototypes

type variables
// constants for CreateFile API function
Constant ULong INVALID_HANDLE_VALUE = -1
Constant ULong GENERIC_READ     = 2147483648
Constant ULong GENERIC_WRITE    = 1073741824
Constant ULong FILE_SHARE_READ  = 1
Constant ULong FILE_SHARE_WRITE = 2
Constant ULong CREATE_NEW			 = 1
Constant ULong CREATE_ALWAYS		 = 2
Constant ULong OPEN_EXISTING		 = 3
Constant ULong OPEN_ALWAYS			 = 4
Constant ULong TRUNCATE_EXISTING = 5

Integer OLECMDEXECOPT_DODEFAULT			 = 0
Integer OLECMDEXECOPT_PROMPTUSER		 = 1
Integer OLECMDEXECOPT_DONTPROMPTUSER	 = 2
Integer OLECMDEXECOPT_SHOWHELP			 = 3

Integer OLECMDID_OPEN					 	= 1
Integer OLECMDID_NEW						 = 2
Integer OLECMDID_SAVE					 	= 3
Integer OLECMDID_SAVEAS					 = 4
Integer OLECMDID_SAVECOPYAS			 = 5
Integer OLECMDID_PRINT					 = 6
Integer OLECMDID_PRINTPREVIEW		 = 7
Integer OLECMDID_PAGESETUP			= 8
Integer OLECMDID_SPELL					 = 9
Integer OLECMDID_PROPERTIES			 = 10
Integer OLECMDID_CUT						 = 11
Integer OLECMDID_COPY						 = 12
Integer OLECMDID_PASTE					 = 13
Integer OLECMDID_PASTESPECIAL		= 14
Integer OLECMDID_UNDO					 = 15
Integer OLECMDID_REDO					 = 16
Integer OLECMDID_SELECTALL				 = 17
Integer OLECMDID_CLEARSELECTION		 = 18
Integer OLECMDID_ZOOM					 = 19
Integer OLECMDID_GETZOOMRANGE			= 20
Integer OLECMDID_UPDATECOMMANDS		 = 21
Integer OLECMDID_REFRESH				 	= 22
Integer OLECMDID_STOP					 	= 23
Integer OLECMDID_HIDETOOLBARS			 = 24
Integer OLECMDID_SETPROGRESSMAX		 = 25
Integer OLECMDID_SETPROGRESSPOS		 = 26
Integer OLECMDID_SETPROGRESSTEXT		 = 27
Integer OLECMDID_SETTITLE				 	= 28
Integer OLECMDID_SETDOWNLOADSTATE	 = 29
Integer OLECMDID_STOPDOWNLOAD			 = 30
Integer OLECMDID_ONTOOLBARACTIVATED	 = 31
Integer OLECMDID_FIND					 		= 32
Integer OLECMDID_DELETE					 	= 33
Integer OLECMDID_HTTPEQUIV				 	= 34
Integer OLECMDID_HTTPEQUIV_DONE		 = 35
Integer OLECMDID_ENABLE_INTERACTION	 = 36
Integer OLECMDID_ONUNLOAD				 	= 37
Integer OLECMDID_PROPERTYBAG2			 = 38
Integer OLECMDID_PREREFRESH			 	= 39
Integer OLECMDID_SHOWSCRIPTERROR       = 40
Integer OLECMDID_SHOWMESSAGE            = 41
Integer OLECMDID_SHOWFIND               	= 42
Integer OLECMDID_SHOWPAGESETUP          = 43
Integer OLECMDID_SHOWPRINT              	= 44
Integer OLECMDID_CLOSE                  		= 45
Integer OLECMDID_ALLOWUILESSSAVEAS      = 46
Integer OLECMDID_DONTDOWNLOADCSS        = 47
Integer OLECMDID_UPDATEPAGESTATUS       = 48
Integer OLECMDID_PRINT2                 		= 49
Integer OLECMDID_PRINTPREVIEW2          = 50
Integer OLECMDID_SETPRINTTEMPLATE       = 51
Integer OLECMDID_GETPRINTTEMPLATE       = 52
Integer OLECMDID_PAGEACTIONBLOCKED      = 55
Integer OLECMDID_PAGEACTIONUIQUERY      = 56
Integer OLECMDID_FOCUSVIEWCONTROLS      = 57
Integer OLECMDID_FOCUSVIEWCONTROLSQUERY = 58
Integer OLECMDID_SHOWPAGEACTIONMENU     = 59
Integer OLECMDID_ADDTRAVELENTRY         = 60
Integer OLECMDID_UPDATETRAVELENTRY      = 61
Integer OLECMDID_UPDATEBACKFORWARDSTATE = 62
Integer OLECMDID_OPTICAL_ZOOM           = 63
Integer OLECMDID_OPTICAL_GETZOOMRANGE   = 64
Integer OLECMDID_WINDOWSTATECHANGED     = 65
Integer OLECMDID_ACTIVEXINSTALLSCOPE    = 66


end variables

forward prototypes
public subroutine of_goback ()
public subroutine of_goforward ()
public subroutine of_gohome ()
public subroutine of_refresh ()
public subroutine of_gosearch ()
public subroutine of_stop ()
public subroutine of_execwb (integer command_id, integer execution_option)
public subroutine of_navigate (string as_url)
public subroutine of_execwb_saveas ()
public subroutine of_execwb_save ()
public subroutine of_execwb_print (boolean ab_prompt)
public subroutine of_resize (integer ai_newwidth, integer ai_newheight)
public subroutine of_designmode ()
public subroutine of_controlpanel (string as_control_app)
public function string of_getsource ()
public function string of_geturl ()
public subroutine of_setsource (string as_source)
public subroutine of_execwb_printpreview ()
public subroutine of_execwb_pagesetup ()
public subroutine of_documentcommand (string as_command)
public subroutine of_documentcommand (string as_command, boolean ab_userinterface)
public subroutine of_toggle_property (string as_propname)
public function boolean of_ispropertyset (string as_propname)
public subroutine of_inserthtml (string as_html)
public subroutine of_documentcommand (string as_command, string as_value)
public function window of_parentwindow ()
public function integer of_writefile (string as_filename, string as_filecontents)
public function unsignedlong of_readfile (string as_filename, ref string as_filecontents)
public subroutine of_execscript (integer as_script)
public function encoding of_getencoding (string as_filename)
public subroutine of_silentmode (boolean ab_silent)
public function unsignedlong of_getbrowserversion ()
public subroutine of_setbrowserfeaturecontrol ()
public function string of_get_appname ()
end prototypes

public subroutine of_goback ();// go back one page
This.Object.goBack()


end subroutine

public subroutine of_goforward ();// go forward one page
This.Object.goForward()


end subroutine

public subroutine of_gohome ();// go to home page
This.Object.goHome()


end subroutine

public subroutine of_refresh ();// refresh current page
This.Object.Refresh()


end subroutine

public subroutine of_gosearch ();// go to search page
This.Object.goSearch()


end subroutine

public subroutine of_stop ();// stop current navigate
This.Object.Stop()


end subroutine

public subroutine of_execwb (integer command_id, integer execution_option);// execute web browser command
This.Object.ExecWB(command_id, execution_option, AsStatement!)


end subroutine

public subroutine of_navigate (string as_url);//====================================================================
// Function: uo_webbrowser.of_navigate()
//--------------------------------------------------------------------
// Description: go to specified file\webpage
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_url	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/10/15
//--------------------------------------------------------------------
// Usage: uo_webbrowser.of_navigate ( string as_url )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Constant Long navOpenInNewWindow = 1
Constant Long navNoHistory = 2
Constant Long navNoReadFromCache = 4
Constant Long navNoWriteToCache = 8
Constant Long navAllowAutosearch = 16
Constant Long navBrowserBar = 32
Constant Long navHyperlink = 64
Constant Long navEnforceRestricted = 128
Constant Long navNewWindowsManaged = 256
Constant Long navUntrustedForDownload = 512
Constant Long navTrustedForActiveX = 1024
Constant Long navOpenInNewTab = 2048
Constant Long navOpenInBackgroundTab = 4096
Constant Long navKeepWordWheelText = 8192
Constant Long navVirtualTab = 16384
Constant Long navBlockRedirectsXDomain = 32768
Constant Long navOpenNewForegroundTab = 65536

SetPointer(HourGlass!)

this.object.Navigate(as_url, navNoHistory, "", "", "")

end subroutine

public subroutine of_execwb_saveas ();// open saveas dialog
//this.of_execwb(OLECMDID_SAVEAS, OLECMDEXECOPT_DODEFAULT)
This.of_execwb(OLECMDID_SAVEAS, OLECMDEXECOPT_PROMPTUSER)


end subroutine

public subroutine of_execwb_save ();// save the current document
This.of_execwb(OLECMDID_SAVE, OLECMDEXECOPT_DODEFAULT)


end subroutine

public subroutine of_execwb_print (boolean ab_prompt);// open print dialog
If ab_prompt Then
	This.of_execwb(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER)
Else
	This.of_execwb(OLECMDID_PRINT, OLECMDEXECOPT_DODEFAULT)
End If


end subroutine

public subroutine of_resize (integer ai_newwidth, integer ai_newheight);// resize the control
This.Resize(ai_newwidth, ai_newheight)

// adjust object size to match control size
This.SetRedraw(False)
This.Object.Width = UnitsToPixels(ai_newwidth, XUnitsToPixels!)
This.Object.Height = UnitsToPixels(ai_newheight, YUnitsToPixels!)
This.SetRedraw(True)


end subroutine

public subroutine of_designmode ();// turn on design mode
This.Object.Document.designMode = "On"


end subroutine

public subroutine of_controlpanel (string as_control_app);// this function launches a Control Panel app

String ls_null

SetNull(ls_null)

ShellExecute(GetDesktopWindow(), ls_null, "rundll32.exe", "shell32.dll,Control_RunDLL " + as_control_app + ",", ls_null, 0)

end subroutine

public function string of_getsource ();// return the webpage HTML source
Return This.Object.Document.documentElement.innerHTML


end function

public function string of_geturl ();// return the current URL
Return This.Object.LocationURL


end function

public subroutine of_setsource (string as_source);// set the webpage HTML source
This.Object.Document.body.innerHTML = as_source


end subroutine

public subroutine of_execwb_printpreview ();// Open Print Preview window
This.of_execwb(OLECMDID_PRINTPREVIEW, OLECMDEXECOPT_PROMPTUSER)


end subroutine

public subroutine of_execwb_pagesetup ();// Open Page Setup window
This.of_execwb(OLECMDID_PAGESETUP, OLECMDEXECOPT_PROMPTUSER)


end subroutine

public subroutine of_documentcommand (string as_command);// Execute document command

String ls_Null

SetNull(ls_Null)

This.Object.Document.ExecCommand(as_Command, False, ls_Null)


end subroutine

public subroutine of_documentcommand (string as_command, boolean ab_userinterface);// Execute document command with choice of popup/nopopup

String ls_Null

SetNull(ls_Null)

This.Object.Document.ExecCommand(as_Command, ab_UserInterface, ls_Null)


end subroutine

public subroutine of_toggle_property (string as_propname);// Toggle a property such as Bold, Italic or Underline

// This is actually done as a command
of_DocumentCommand(as_PropName)


end subroutine

public function boolean of_ispropertyset (string as_propname);// Query a boolean property of the document, e.g. Bold, Italic, or Underline

Return This.Object.Document.queryCommandState(as_PropName)


end function

public subroutine of_inserthtml (string as_html);// insert passed HTML into the selected range

OleObject range

range = This.Object.Document.selection.createRange()

range.pasteHTML(as_Html)

range.collapse(False)

range.Select()


end subroutine

public subroutine of_documentcommand (string as_command, string as_value);// Execute document command with value

This.Object.Document.ExecCommand(as_Command, False, as_Value)


end subroutine

public function window of_parentwindow ();PowerObject	lpo_parent
Window lw_window

// loop thru parents until a window is found
lpo_parent = This.GetParent()
Do While lpo_parent.TypeOf() <> Window! And IsValid (lpo_parent)
	lpo_parent = lpo_parent.GetParent()
Loop

// set return to the window or null if not found
If IsValid (lpo_parent) Then
	lw_window = lpo_parent
Else
	SetNull(lw_window)
End If

Return lw_window


end function

public function integer of_writefile (string as_filename, string as_filecontents);// -----------------------------------------------------------------------------
// SCRIPT:     u_web_browser.of_WriteFile
//
// PURPOSE:    This function writes a file to disk.
//
// ARGUMENTS:  as_filename			- Name of the file to write
//					as_filecontents	- Contents of the file
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 9/18/2008	RolandS		Initial Coding
// -----------------------------------------------------------------------------

ULong lul_file, lul_length, lul_written
Blob lblob_filecontents
Boolean lb_result

lul_file = CreateFile(as_filename, GENERIC_WRITE, FILE_SHARE_WRITE, 0, CREATE_ALWAYS, 0, 0)
If lul_file = INVALID_HANDLE_VALUE Then
	Return -999
End If

lblob_filecontents = Blob(as_filecontents)
lul_length = Len(lblob_filecontents)

lb_result = WriteFile(lul_file, lblob_filecontents, lul_length, lul_written, 0)

CloseHandle(lul_file)

Return 0


end function

public function unsignedlong of_readfile (string as_filename, ref string as_filecontents);// -----------------------------------------------------------------------------
// SCRIPT:     u_web_browser.of_ReadFile
//
// PURPOSE:    This function reads a file from disk.
//
// ARGUMENTS:  as_filename			- Name of the file to read
//					as_filecontents	- Contents of the file ( by ref )
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 9/18/2008	RolandS		Initial Coding
// -----------------------------------------------------------------------------

ULong lul_file, lul_bytes, lul_length
Blob lblob_contents
Boolean lb_result
Encoding lEncoding

lul_file = CreateFile(as_filename, GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, 0, 0)
If lul_file = INVALID_HANDLE_VALUE Then
	Return -1
End If

lEncoding = of_GetEncoding(as_filename)

lul_length = FileLength(as_filename)
lblob_contents = Blob(Space(lul_length))

lb_result = ReadFile(lul_file, lblob_contents, &
	lul_length, lul_bytes, 0)

lblob_contents = BlobMid(lblob_contents, 1, lul_length)

CloseHandle(lul_file)

as_filecontents = String(lblob_contents, lEncoding)

Return lul_bytes


end function

public subroutine of_execscript (integer as_script);// execute a script within the document
This.Object.Document.ParentWindow.ExecScript(as_script)


end subroutine

public function encoding of_getencoding (string as_filename);// This function determines a blob's string encoding.

Integer li_fnum, li_bom1, li_bom2, li_bom3
Long ll_length, ll_bytes
Blob lblob_contents

li_fnum = FileOpen(as_filename, StreamMode!, Read!, Shared!)
If li_fnum = -1 Then
	Return EncodingAnsi!
End If

ll_length = 3
lblob_contents = Blob(Space(ll_length), EncodingAnsi!)

ll_bytes = FileReadEx(li_fnum, lblob_contents, ll_length)
FileClose(li_fnum)

li_bom1 = AscA(String(BlobMid(lblob_contents, 1, 1), EncodingAnsi!))
li_bom2 = AscA(String(BlobMid(lblob_contents, 2, 1), EncodingAnsi!))
li_bom3 = AscA(String(BlobMid(lblob_contents, 3, 1), EncodingAnsi!))

If li_bom1 = 255 And li_bom2 = 254 Then
	Return EncodingUTF16LE!
Else
	If li_bom1 = 254 And li_bom2 = 255 Then
		Return EncodingUTF16BE!
	Else
		If li_bom1 = 239 And li_bom2 = 187 And li_bom3 = 191 Then
			Return EncodingUTF8!
		End If
	End If
End If

Return EncodingAnsi!


end function

public subroutine of_silentmode (boolean ab_silent);// This function toggles the Silent property which represents the
// property ScriptErrorsSuppressed of the underlying IE browser.

If ab_silent Then
	This.Object.Silent = True
Else
	This.Object.Silent = False
End If


end subroutine

public function unsignedlong of_getbrowserversion ();//====================================================================
// Function: ou_iam_browser.of_getbrowserversion()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/29
//--------------------------------------------------------------------
// Usage: ou_iam_browser.of_getbrowserversion ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_version

/*
11001 (0x2AF9) - Internet Explorer 11. Webpages are displayed in IE11 edge mode, regardless of the !DOCTYPE directive.
11000 (0x2AF8) - Internet Explorer 11. Webpages containing standards-based !DOCTYPE directives are displayed in IE11 edge mode. Default value for IE11.
10001 (0x2711)- Internet Explorer 10. Webpages are displayed in IE10 Standards mode, regardless of the !DOCTYPE directive.
10000 (0x2710)- Internet Explorer 10. Webpages containing standards-based !DOCTYPE directives are displayed in IE10 Standards mode. Default value for Internet Explorer 10.
9999 (0x270F) - Internet Explorer 9. Webpages are displayed in IE9 Standards mode, regardless of the !DOCTYPE directive.
9000 (0x2328) - Internet Explorer 9. Webpages containing standards-based !DOCTYPE directives are displayed in IE9 mode.
8888 (0x22B8) - Webpages are displayed in IE8 Standards mode, regardless of the !DOCTYPE directive.
8000 (0x1F40) - Webpages containing standards-based !DOCTYPE directives are displayed in IE8 mode.
7000 (0x1B58) - Webpages containing standards-based !DOCTYPE directives are displayed in IE7 Standards mode.
*/

//Get the installed Internet Explorer version
// check svcVersion first
RegistryGet( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer",  "svcVersion", RegString!, ls_version)
// use Version if svcVersion is not set
If IsNull(ls_version) Or Len(Trim(ls_version)) = 0 Then
	RegistryGet( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer",  "Version", RegString!, ls_version)
End If

If IsNull(ls_version) Or Len(Trim(ls_version)) = 0 Then
	Return 11000
End If

If ls_version > "11" Then
	Return 11001
End If

If ls_version > "10.9" Then
	Return 11000
End If

If ls_version >= "10" Then
	Return 10001
End If

If ls_version >= "9" Then
	Return 9999
End If

If ls_version >= "8" Then
	Return 8888
End If

If ls_version >= "7" Then
	Return 7000
End If

Return 11000
end function

public subroutine of_setbrowserfeaturecontrol ();//====================================================================
// Function: uo_webbrowser.of_setbrowserfeaturecontrol()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/10/18
//--------------------------------------------------------------------
// Usage: uo_webbrowser.of_setbrowserfeaturecontrol ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Constant ULong COMPRESSED_CONTENT_RESPECTS_SSL_CACHING_SETTING = 1 //1=Enable,0=Disable
Constant ULong FEATURE_ACTIVEX_REPURPOSEDETECTION = 1 //1=Enable,0=Disable
Constant ULong FEATURE_ADDON_MANAGEMENT = 1 //1=Enable,0=Disable
Constant ULong FEATURE_ALLOW_EXPANDURI_BYPASS = 1
Constant ULong FEATURE_BEHAVIORS = 1
Constant ULong FEATURE_BLOCK_INPUT_PROMPTS = 1 //1=Enable,0=Disable
Constant ULong FEATURE_BLOCK_LMZ_IMG = 1 //1=Enable,0=Disable
Constant ULong FEATURE_BLOCK_LMZ_OBJECT = 1
Constant ULong FEATURE_BLOCK_LMZ_SCRIPT = 1
Constant ULong FEATURE_BLOCK_SETCAPTURE_XDOMAIN = 1
Constant ULong FEATURE_BUFFERBREAKING_818408 = 0
Constant ULong FEATURE_CFSTR_INETURLW_DRAGDROP_FORMAT = 1
Constant ULong FEATURE_CLEANUP_AT_FLS = 0
Constant ULong FEATURE_CONSULT_MIME_KILLBIT_KB905915 = 1
Constant ULong FEATURE_CONTENT_ADVISOR_FRAME_ABOUT_BLANK_SSL_KB827259 = 0
Constant ULong FEATURE_CONVERT_A3A0INGB2312 = 1
Constant ULong FEATURE_CREATE_URL_MONIKER_DISABLE_LEGACY_COMPAT = 1
Constant ULong FEATURE_CrossDomain_Fix_KB867801 = 1 //1=Enable,0=Disable
Constant ULong FEATURE_CSS_DATA_RESPECTS_XSS_ZONE_SETTING_KB912120 = 1
Constant ULong FEATURE_CUSTOM_IMAGE_MIME_TYPES_KB910561 = 0
Constant ULong FEATURE_DELETE_ABORTED_COMPRESSED_FILES_KB834224 = 0
Constant ULong FEATURE_DIGEST_NO_EXTRAS_IN_URI = 0
Constant ULong FEATURE_DISABLE_LEGACY_COMPRESSION = 1
Constant ULong FEATURE_DISABLE_MK_PROTOCOL = 1
Constant ULong FEATURE_DISABLE_NAVIGATION_SOUNDS = 1
Constant ULong FEATURE_DISABLE_TELNET_PROTOCOL = 1 //1=Enable,0=Disable
Constant ULong FEATURE_DISABLE_UNICODE_HANDLE_CLOSING_CALLBACK = 0
Constant ULong FEATURE_DISPLAY_NODE_ADVISE_KB833311 = 1
Constant ULong FEATURE_DOCTYPE_FOCUS_SCROLLBAR_KB838386 = 0
Constant ULong FEATURE_DOWNLOAD_PROMPT_META_CONTROL = 1
Constant ULong FEATURE_DRAGDROP_KB834707 = 1
Constant ULong FEATURE_ENABLE_ACTIVEX_INACTIVATE_MODE = 1 //1=Enable,0=Disable
Constant ULong Feature_Enable_Compat_Logging = 0
Constant ULong FEATURE_Enable_IE_Compression = 0
Constant ULong FEATURE_Enable_MixContent_Goldbar = 0
Constant ULong FEATURE_ENABLE_SCRIPT_PASTE_URLACTION_IF_PROMPT = 1 //1=Enable,0=Disable
Constant ULong FEATURE_ENHANCED_IMAGE_DRAGDROP_SECURITY_KB867282 = 1 //1=Enable,0=Disable
Constant ULong FEATURE_FEEDS = 1 //1=Enable,0=Disable
Constant ULong FEATURE_FORCE_ADDR_AND_STATUS = 1 //1=Enable,0=Disable
Constant ULong FEATURE_GET_URL_DOM_FILEPATH_UNENCODED = 1
Constant ULong FEATURE_HIGH_CONTRAST_BACKGROUND_IMAGES = 0
Constant ULong FEATURE_HTTP_USERNAME_PASSWORD_DISABLE = 1 //1=Enable,0=Disable
Constant ULong FEATURE_IE6_Default_Frame_Navigation_Behavior = 0
Constant ULong FEATURE_IEDDE_REGISTER_PROTOCOL = 0
Constant ULong FEATURE_IEDDE_REGISTER_URLECHO = 0
Constant ULong FEATURE_IGNORE_MAPPINGS_FOR_CREDPOLICY = 1
Constant ULong FEATURE_IGNORE_POLICIES_ZONEMAP_IF_ESC_ENABLED_KB918915 = 0
Constant ULong FEATURE_IGNORE_XML_PROLOG = 1
Constant ULong FEATURE_IMAGING_USE_ART = 0
Constant ULong FEATURE_INCLUDE_PORT_IN_SPN_KB908209 = 0
Constant ULong FEATURE_INTERNET_SHELL_FOLDERS = 1
Constant ULong FEATURE_LEGACY_DISPPARAMS = 1 //1=Enable,0=Disable
Constant ULong FEATURE_LIMIT_MONIKERS = 1
Constant ULong FEATURE_LOCALMACHINE_LOCKDOWN = 1 //1=Enable,0=Disable
Constant ULong FEATURE_MIME_HANDLING = 1 //1=Enable,0=Disable
Constant ULong FEATURE_MIME_SNIFFING = 1 //1=Enable,0=Disable
Constant ULong FEATURE_NO_FIEF_UI = 0
Constant ULong FEATURE_Not_Terminate_WorkerThread = 1
Constant ULong FEATURE_OBJECT_CACHING = 1
Constant ULong FEATURE_PAGINATION_REDUCTION_KB834158 = 0
Constant ULong FEATURE_PERFORMANCE_ISSUE_KB843268 = 0
Constant ULong FEATURE_PERMIT_CACHE_FOR_AUTHENTICATED_FTP_KB910274 = 0
Constant ULong FEATURE_PRIVATE_FONT_SETTING = 1
Constant ULong FEATURE_PROTOCOL_LOCKDOWN = 0
Constant ULong FEATURE_READ_ZONE_STRINGS_FROM_REGISTRY = 0
Constant ULong FEATURE_RESPECT_OBJECTSAFETY_POLICY_KB905547 = 0
Constant ULong FEATURE_RESTRICT_ACTIVEXINSTALL = 1 //1=Enable,0=Disable
Constant ULong FEATURE_RESTRICT_CDL = 1
Constant ULong FEATURE_RESTRICT_FILEDOWNLOAD = 1 //1=Enable,0=Disable
Constant ULong FEATURE_RESTRICT_RES_TO_LMZ = 1 //1=Enable,0=Disable
Constant ULong FEATURE_RESTRICTED_ZONE_WHEN_FILE_NOT_FOUND = 0
Constant ULong FEATURE_SAFE_BINDTOOBJECT = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SANITIZE_DRAGDROP_DATA_KB867282 = 0
Constant ULong FEATURE_SCRIPTINITIATED_DRAGDROP_HITTEST_SECURITY_KB867282 = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SCRIPTINITIATED_DRAGDROP_RESPECTS_URLACTION_KB867282 = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SCRIPTINITIATED_DRAGDROP_SECURITY_KB867282 = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SCRIPTURL_MITIGATION = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SECURITYBAND = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SECURE_ANCHORCLICKBEHAVIOR_KB867282 = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SHIM_MSHELP_COMBINE = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SKIP_LEAK_CLEANUP_AT_SHUTDOWN_KB835183 = 0
Constant ULong FEATURE_SKIP_POST_RETRY_ON_INTERNETWRITEFILE_KB895954 = 0
Constant ULong FEATURE_SSLUX = 1 //1=Enable,0=Disable
Constant ULong FEATURE_SUBDOWNLOAD_LOCKDOWN = 0
Constant ULong FEATURE_TABBED_BROWSING = 1 //1=Enable,0=Disable
Constant ULong FEATURE_UNC_SAVEDFILECHECK = 1 //1=Enable,0=Disable
Constant ULong FEATURE_USE_CNAME_FOR_SPN_KB911149 = 0
Constant ULong FEATURE_USE_WINDOWEDSELECTCONTROL = 0
Constant ULong FEATURE_VALIDATE_NAVIGATE_URL = 1 //1=Enable,0=Disable
//Constant String FEATURE_VALIDATE_URLHOSTNAME
Constant ULong FEATURE_WARN_ON_SEC_CERT_REV_FAILED = 0
Constant ULong FEATURE_WEBOC_MOVESIZECHILD = 0
Constant ULong FEATURE_WEBOC_POPUPMANAGEMENT = 1 //1=Enable,0=Disable
Constant ULong FEATURE_WINDOW_RESTRICTIONS = 1 //1=Enable,0=Disable
Constant ULong FEATURE_XMLHTTP = 1
Constant ULong FEATURE_ZONE_ELEVATION = 1 //1=Enable,0=Disable
Constant ULong IMAGING_EMF_USE_RCLFRAMESIZE_KB905299 = 0
Constant ULong KB895948_DISABLE_MAIL_SUBDOWNLOAD_LOCKDOWN = 0
Constant ULong KB890923_ANCHORCLICKBEHAVIOR_POPUP_FIX = 1 //1=Enable,0=Disable
Constant ULong RETRY_HEADERONLYPOST_ONCONNECTIONRESET = 0
Constant ULong SELECT_KEY_KB818614 = 0


ULong lul_oldver, lul_ver
String ls_appname

ls_appname = of_get_appname( )

//set Browser Version
lul_ver = of_getBrowserVersion()
RegistryGet("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION", ls_appname, ReguLong!, lul_oldver)
If lul_ver > 0 And lul_ver > lul_oldver Then
	RegistrySet("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION", ls_appname, ReguLong!, lul_ver)
End If

//Feature Control Browser
RegistrySet("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_USE_WINDOWEDSELECTCONTROL", ls_appname, ReguLong!, 1)
RegistrySet("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_TABBED_BROWSING", ls_appname, ReguLong!, 1)



//RegistrySet("HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_USE_WINDOWEDSELECTCONTROL",  ls_appname, RegULong!, 1)
//RegistrySet("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_USE_WINDOWEDSELECTCONTROL",  ls_appname, RegULong!, 1)
//RegistrySet("HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_TABBED_BROWSING",  ls_appname, RegULong!, 1)
//RegistrySet("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_TABBED_BROWSING",  ls_appname, RegULong!, 1)
end subroutine

public function string of_get_appname ();//====================================================================
// Function: ou_iam_browser.of_get_appname()
//--------------------------------------------------------------------
// Description: Get App Name
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/29
//--------------------------------------------------------------------
// Usage: ou_iam_browser.of_get_appname ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String	ls_FullPath
String	ls_Exe
Int	li_Ret
Int	li_Pos = 0
ULong lul_handle, lul_length = 1024
String ls_version

ls_FullPath = Space (1024)
ls_Exe = ""

//string[] pbexeArray = { "pb60.exe", "pb60.exe", "pb70.exe", "pb80.exe", "pb90.exe", "pb100.exe", "pb105.exe", "pb110.exe", "pb115.exe", "pb120.exe"  , "pb125.exe", "pb126.exe", "pb150.exe", "pb170.exe","pb170.exe" ,"pb170.exe" ,"pb180.exe","pb190.exe","pb190.exe","pb190.exe" ,"pb210.exe" };
//string[] pbverArray = { "6.0", "6.5", "7.0", "8.0", "9.0", "10.0", "10.5", "11.0", "11.5", "12.0", "12.5", "12.6", "15.0", "17.0", "17.0", "17.0", "18.0", "19.0", "19.0", "19.0", "21.0" };
If Handle(GetApplication()) = 0 Then
	// running from the IDE
	contextinformation lcx_key
	GetContextService ( "ContextInformation", lcx_key)
	lcx_key.GetVersionName ( ls_version )
	If Pos(ls_version, "10.5") > 0 Then
		ls_Exe = "PB105.EXE"
	ElseIf Pos(ls_version, "10.") > 0  Then
		ls_Exe = "PB100.EXE"
	Else
		ls_Exe = ""
	End If
Else
	// running from EXE
	lul_handle = Handle( GetApplication() )
	ls_FullPath = Space(lul_length)
	li_Ret = GetModuleFilename( lul_handle, ls_FullPath, lul_length )
	If li_Ret > 0 Then
		Do While (Pos (ls_FullPath, "\", li_Pos + 1) > 0)
			li_Pos = Pos (ls_FullPath, "\", li_Pos + 1)
		Loop
		ls_Exe = Mid (ls_FullPath, li_Pos + 1)
	End If
End If

Return ls_Exe






end function

event externalexception;action = ExceptionIgnore!

end event

event error;action = ExceptionIgnore!

end event

on uo_webbrowser.create
end on

on uo_webbrowser.destroy
end on


Start of PowerBuilder Binary Data Section : Do NOT Edit
0Cuo_webbrowser.bin 
2D00000a00e011cfd0e11ab1a1000000000000000000000000000000000003003e0009fffe000000060000000000000000000000010000000100000000000010000000000200000001fffffffe0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfffffffefffffffefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff006f00520074006f004500200074006e00790072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050016ffffffffffffffff000000010000000000000000000000000000000000000000000000000000000011dae8d001d7c41700000003000001800000000000500003004f0042005800430054005300450052004d0041000000000000000000000000000000000000000000000000000000000000000000000000000000000102001affffffff00000002ffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c00000000004200500043004f00530058004f00540041005200450047000000000000000000000000000000000000000000000000000000000000000000000000000000000001001affffffffffffffff000000038856f96111d0340ac0006ba9a205d74f0000000011dae8d001d7c41711dae8d001d7c417000000000000000000000000004f00430054004e004e00450053005400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001020012ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000030000009c000000000000000100000002fffffffe0000000400000005fffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
20ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000004c0000256a00001aaa0000000000000000000000000000000000000000000000000000004c0000000000000000000000010057d0e011cf3573000869ae62122e2b00000008000000000000004c0002140100000000000000c0460000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c0000256a00001aaa0000000000000000000000000000000000000000000000000000004c0000000000000000000000010057d0e011cf3573000869ae62122e2b00000008000000000000004c0002140100000000000000c0460000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1Cuo_webbrowser.bin 
End of PowerBuilder Binary Data Section : No Source Expected After This Point
