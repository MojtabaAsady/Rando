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
	'---Layout_Help.bal {
	Public ScrollView_Help As ScrollView
	Public Label_Title_Help As Label
	Public Label_Wallet_Help As Label
	Public Label_Wallet_Help_Text As Label
	Public Label_About_Help_Text As Label
	Public Label_About_Help As Label
	Public Label_Shop_Help As Label
	Public Label_Shop_Help_Text As Label
	Public Label_Home_Help As Label
	Public Label_Home_Help_Text As Label
	'---Layout_Help.bal }
	'---Layout_Help_SubPage.bal {
	Public Label_Help_Object_Text_1 As Label
	Public Label_Help_Object_Text_2 As Label
	Public Label_Help_Object_Text_3 As Label
	Public Label_Help_Object_Text_4 As Label
	Public Label_Help_Object_Text_5 As Label
	Public Label_Help_Object_Text_6 As Label
	Public Label_Help_Object_Text_7 As Label
	Public Label_Help_Object_Text_8 As Label
	Public Label_Help_Object_Text_9 As Label
	Public Label_Help_Object_Text_10 As Label
	Public Label_Help_Object_Text_11 As Label
	Public Label_Help_Object_Text_12 As Label
	Public Label_Help_Object_Text_13 As Label
	Public Label_Help_Object_Text_14 As Label
	Public Label_Help_Object_Text_15 As Label
	Public Label_Help_Object_Text_16 As Label
	Public Label_Help_Object_Text_17 As Label

	'---Layout_Help_SubPage.bal }
End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
End Sub

Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_Help")
	ScrollView_Help.panel.LoadLayout("Layout_Help_SubPage")
	ScrollView_Help.Panel.Height = ScrollView_Help.Height + 2000dip
	LanguageSet
End Sub

Sub LanguageSet
	'---Layout_Help.bal {
	Label_Title_Help.Text = Starter.L_Label_Title_Help
	Label_Wallet_Help_Text.Text = Starter.L_Label_MoneyBag
	Label_About_Help_Text.Text = Starter.L_Label_About_Help_Text
	Label_Shop_Help_Text.Text = Starter.L_Label_Shop_Help_Text
	Label_Home_Help_Text.Text = Starter.L_Label_Home_Help_Text
	'---Layout_Help.bal }
	
	'---Layout_Help_SubPage.bal {
	Label_Help_Object_Text_1.Text = Starter.L_Label_Help_Object_Text_1 
	Label_Help_Object_Text_2.Text = Starter.L_Label_Help_Object_Text_2 
	Label_Help_Object_Text_3.Text = Starter.L_Label_Help_Object_Text_3 
	Label_Help_Object_Text_4.Text = Starter.L_Label_Help_Object_Text_4 
	Label_Help_Object_Text_5.Text = Starter.L_Label_Help_Object_Text_5 
	Label_Help_Object_Text_6.Text = Starter.L_Label_Help_Object_Text_6 
	Label_Help_Object_Text_7.Text = Starter.L_Label_Help_Object_Text_7 
	Label_Help_Object_Text_8.Text = Starter.L_Label_Help_Object_Text_8 
	Label_Help_Object_Text_9.Text = Starter.L_Label_Help_Object_Text_9 
	Label_Help_Object_Text_10.Text = Starter.L_Label_Help_Object_Text_10 
	Label_Help_Object_Text_11.Text = Starter.L_Label_Help_Object_Text_11 
	Label_Help_Object_Text_12.Text = Starter.L_Label_Help_Object_Text_12 
	Label_Help_Object_Text_13.Text = Starter.L_Label_Help_Object_Text_13 
	Label_Help_Object_Text_14.Text = Starter.L_Label_Help_Object_Text_14 
	Label_Help_Object_Text_15.Text = Starter.L_Label_Help_Object_Text_15 
	Label_Help_Object_Text_16.Text = Starter.L_Label_Help_Object_Text_16 
	Label_Help_Object_Text_17.Text = Starter.L_Label_Help_Object_Text_17 

	'---Layout_Help_SubPage.bal }
End Sub

Private Sub Label_Home_Help_Click
	Starter.F_Sound.MP_EF("",False)
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub

Private Sub Label_Shop_Help_Click
	Starter.F_Sound.MP_EF("",False)
	Starter.GotoTAB=4
	StartActivity(Activity_Menu)
    Activity.Finish
End Sub

Private Sub Label_About_Help_Click
	Starter.F_Sound.MP_EF("",False)
	StartActivity(Activity_About)
	Activity.Finish
End Sub

Private Sub Label_Wallet_Help_Click
	Starter.F_Sound.MP_EF("",False)
	Starter.GotoTAB=4
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub