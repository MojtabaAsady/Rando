B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=12.8
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: False
#End Region

Sub Process_Globals
End Sub

Sub Globals
	'---Layout_Splash.bal {

	Public ProgressBar_Loading_Splash As ProgressBar
	Public Label_BlackBoard As Label
	Public Label_Application_Version As Label
	Public Label_Application_Name As Label
	Public Label_Programmers As Label
	'---Layout_Splash.bal }

	Private Label_AI As Label
	Private Label_Application_github As Label
End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_splash")
	Starter.F_SaveLoadRestart.LoadGame
	Label_Application_Name.Text=Application.LabelName.SubString2(0, 4)
	Label_Application_Version.Text="Ver : "&Application.VersionName
	Label_Programmers.Text="Powered by Asady Software development team"
	Starter.F_Sound.MP_EF("loadingstart.wav",False)
	For i = 1 To Rnd(12,15)
		Dim a,b,c,d As Int
		Dim e,f As String
		Dim Typing As String
		a=Rnd(1,99)
		b=Rnd(1,99)
		d=Rnd(1,4)
		If d=1 Then
			e=" + "
			c=a+b
		else if d=2 Then
			e=" - "
			c=a-b
		else if d=3 Then
			e=" X "
			c=a*b
		else if d=4 Then
			e=" / "
			c=a/b
		End If
		f=a&e&b&" = "&c
			For i = 0 To f.Length-1
				Sleep(100)
				Typing=Typing&f.CharAt(i)
				Label_BlackBoard.Text=Typing
			Next
		Label_Application_Name.TextColor=Colors.RGB(Rnd(0,255),Rnd(0,255),Rnd(0,255))
		Label_AI.TextColor=Colors.RGB(Rnd(0,255),Rnd(0,255),Rnd(0,255))
		Sleep(1500)
	Next
	Starter.GotoTAB=1
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub


Private Sub Label_Application_github_Click
	Starter.F_Master.URL = "https://github.com/mojtabaasady/Rando"
	Starter.F_Master.OpenLinkWebsite
End Sub