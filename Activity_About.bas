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
	'---Layout_About.bal {
	Public Label_About_Home_Text As Label
	Public Label_About_Wallet As Label
	Public Label_About_Wallet_Text As Label
	Public Label_About_Shop As Label
	Public Label_About_Shop_Text As Label
	Public Label_About_Home As Label
	Public Label_About_Text As Label
	Public Label_About_Title As Label
	Public Panel_About_Bottom_Menu As Panel
	Public Panel_About As Panel
	Public Label_About_Help As Label
	Public Label_About_Help_Text As Label
	'---Layout_About.bal }	
	
	'---Layout_About_SubPage.bal {
	Public ScrollView_About As ScrollView
	'---Layout_About_SubPage.bal }
	Private Panel_About_Label_Application_github As Label
End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_About")
	
	ScrollView_About.Panel.LoadLayout("Layout_About_SubPage")
	ScrollView_About.Panel.Height = ScrollView_About.Height + 500dip
	LanguageSet
	
End Sub
Sub LanguageSet
	Label_About_Title.Text = Starter.L_Label_About_Title
	Label_About_Help_Text.text= Starter.L_Label_Help_Help_Text
	Label_About_Wallet_Text.Text = Starter.L_Label_MoneyBag
	Label_About_Shop_Text.Text = Starter.L_Label_About_Shop_Text
	Label_About_Home_Text.Text = Starter.L_Label_About_Home_Text	
	Dim Typing As String
	Sleep(1000)
	Starter.F_Sound.MP_EF("TypeSound.wav",True)
	For i = 0 To Starter.L_Label_About_Text.Length-1
		
		Sleep(10)
		Typing=Typing&Starter.L_Label_About_Text.CharAt(i)
		Label_About_Text.text=Typing
	Next
	Starter.MediaPlayerEF.Stop
End Sub

Private Sub Panel_About_Label_Application_github_Click
	
	Starter.F_Master.URL = "https://github.com/mojtabaasady/Rando"
	Starter.F_Master.OpenLinkWebsite
End Sub

Private Sub Label_About_Home_Click
	Starter.F_Sound.MP_EF("",False)
	Starter.GotoTAB=1
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub

Private Sub Label_About_Shop_Click
	Starter.F_Sound.MP_EF("",False)
	StartActivity(Activity_Menu)
	Starter.GotoTAB=3
	Activity.Finish
End Sub

Private Sub Label_About_Help_Click
	Starter.F_Sound.MP_EF("",False)
	StartActivity(Activity_Help)
	Activity.Finish
End Sub

Private Sub Label_About_Wallet_Click
	Starter.F_Sound.MP_EF("",False)
	Starter.GotoTAB=4
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub

Private Sub Label_About_Text_Click
	Starter.Crack=Starter.Crack+1
	If Starter.Crack > 14 Then
		Starter.UserName_1_Money=Starter.UserName_1_Money+100000
		ToastMessageShow("Programmer :"&Chr(10)&" mojtaba_asady@yahoo.com",False)
		Starter.Crack=0
	End If
	Log("Crack:"&Starter.Crack)
End Sub