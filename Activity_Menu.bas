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
	Public xui As XUI

End Sub

Sub Globals

	'کتابخانه اصلی okhttp
	Public OkHttp As OkHttpClient
	'کتابخانه اصلی ادیوری
	Public Adivery As Adivery
	'متغییر نمایش تبلیغ بنری
	Public Banner As AdiveryBannerAd

	'---MessageExit {
	Public Panel_MessageExit_Hide As Panel	
	Public Panel_MessageExit As Panel
	Public ImageView_MessageExit_Icon As ImageView
	Public Label_MessageExit_Text As Label
	Public Label_MessageExit_Close As Label
	Public Label_MessageExit_Confirm As Label
	'---MessageExit }


	'---Layout_Menu.bal {
	
	Public Label_Application_MaxLevel_Menu As Label
	Public Panel_User_Color_Menu As Panel
	Public ImageView_User_Avatar_Menu As ImageView
	Public Label_User_Level_Menu As Label
	Public Label_Player_1_IQ_Text_Menu As Label
	Public Label_UserName_Menu As Label
	Public Label_User_Wallet_MoneyBag_MyMoney_Menu As Label
	Public Label_User_Wallet_MoneyBag_MyMoney_Note_Menu As Label
     '---
	Public TabHost_Menu As TabHost	
	Public Label_Application_Name_Menu As Label
	Public Label_Tab_1 As Label
	Public Label_Tab_2 As Label
	Public Label_Tab_3 As Label
	Public Label_Tab_4 As Label
	Public Label_Exit As Label
	Public Label_Exit_Text As Label	
	Public Label_1_Player As Label	
	Public Label_1_Player_Text As Label	
	Public Label_2_Player As Label
	Public Label_2_Player_Text As Label
	Public Label_3_Player As Label
	Public Label_3_Player_Text As Label
	'---Layout_Menu.bal }
	
	'---Layout_Tab1_Level.bal {
	Public Label_Title_Level As Label
	Public ListView_Level_1 As ListView
	Public ListView_Level_2 As ListView
	Public ListView_Level_3 As ListView
	Public Label1_ShowLevels_1 As Label
	Public Label1_ShowLevels_2 As Label
	Public Label1_ShowLevels_3 As Label
	'---Layout_Tab1_Level.bal }

	'---Layout_Tab2_Setting.bal {
	Public Label_Title_Setting As Label
	Public ScrollView_Setting As ScrollView
	'---Layout_Tab2_Setting.bal {
	
	'---Layout_Tab2_Setting_SubPage.bal {
	Public Label_Setting_MusicBackground As Label
	Public ToggleButton_Setting_MusicBackground As ToggleButton
	Public Label_Setting_MusicEffect As Label
	Public ToggleButton_Setting_MusicEffect As ToggleButton
	Public Label_Setting_Language As Label
	Public Spinner_Setting_Language As Spinner
	Public Label_ResponsiveSpeed As Label
	Public Spinner_ResponsiveSpeed As Spinner
	Public Label_Setting_RestartGame As Label
	Public Button_Setting_RestartGame As Button
	Public Label_QuestionTypeSettings_Title As Label
	Public Label_QuestionTypeSettings As Label
	Public Spinner_QuestionTypeSettings As Spinner
	Public Label_Setting_Help As Label
	Public Button_Setting_Help As Button
	Public Label_Setting_About As Label
	Public Button_Setting_About As Button
	'---Layout_Tab2_Setting_SubPage.bal }
	
	'---Layout_Tab3_User.bal {
	Public Label_Title_UserInformation As Label
	Public ScrollView_User As ScrollView
	'---Layout_Tab3_User.bal }
	
	'---Layout_Tab3_User_SubPage.bal {
	Public Label_Player_1_IQ_Text As Label
	Public Label_User_Level_1 As Label
	Public ProgressBar_UserName_Color_R As ProgressBar
	Public ProgressBar_UserName_Color_G As ProgressBar
	Public ProgressBar_UserName_Color_B As ProgressBar
	Public ImageView_User_Avatar As ImageView
	Public EditText_UserName As EditText
	Public Panel_User_Color As Panel
	Public Label_Tool_Thunder_Text As Label
	Public Label_Tool_Eye_Text As Label
	Public Label_Tool_Time_Text As Label
	Public Label_Tool_Number_Thunder As Label
	Public Label_Tool_Number_Eye As Label
	Public Label_Tool_Number_Time As Label
	Public ImageView_User_Wallet As ImageView
	Public Label_User_Wallet_MoneyBag_MyMoney As Label
	Public Label_User_Wallet_MoneyBag_MyMoney_Note As Label
	Public SeekBar_UserName_Color_R As SeekBar
	Public SeekBar_UserName_Color_G As SeekBar
	Public SeekBar_UserName_Color_B As SeekBar
	'---Layout_Tab3_User_SubPage.bal }
'	
'	'---Layout_Avatar {

'	'---Layout_Avatar }
	
	'---Layout_Tab4_ShopingCenter.bal { 88888888888888
	Public ScrollView_ShopingCenter_Shop As ScrollView	
	Public ScrollView_ShopingCenter_Wallet As ScrollView	
	Public Label_Title_ShopingCenter As Label
	Public Label_Title_ShopingCenter_TAB_Shop As Label
	Public Label_Title_ShopingCenter_TAB_Wallet As Label
	'---Layout_Tab4_ShopingCenter.bal }

	'---Layout_Tab4_ShopingCenter_SubPage_Wallet.bal {

	Public Panel_ShopingCenter_Wallet As Panel
	Public Label_ShopingCenter_Wallet_MoneyBag_MyMoney_Note As Label
	Public Label_ShopingCenter_Wallet_MoneyBag_MyMoney As Label
	Public ImageView_ShopingCenter_Wallet As ImageView
	Public Panel_ShopingCenter_Wallet_Ads As Panel
	Public Label_ShopingCenter_Wallet_Ads_Note1 As Label
	Public Label_ShopingCenter_Wallet_Ads_Play As Label
	Public Label_ShopingCenter_Wallet_Ads_Note2 As Label
	Public Panel_ShopingCenter_Wallet_PAY As Panel
	Public Label_ShopingCenter_Wallet_PAY_Note1 As Label
	Public Label_ShopingCenter_Wallet_PAY_Note2 As Label
	Public Label_ShopingCenter_Wallet_StartPAY_100000 As Label
	Public Label_ShopingCenter_Wallet_StartPAY_250000 As Label
	Public Label_ShopingCenter_Wallet_StartPAY_500000 As Label
	Public Label_ShopingCenter_Wallet_StartPAY_1000000 As Label
	Public ImageView_ShopingCenter_Wallet_StartPAY_100000 As ImageView
	Public ImageView_ShopingCenter_Wallet_StartPAY_250000 As ImageView
	Public ImageView_ShopingCenter_Wallet_StartPAY_500000 As ImageView
	Public ImageView_ShopingCenter_Wallet_StartPAY_1000000 As ImageView
	Public Panel_ShopingCenter_Wallet_Chance As Panel
	Public Label_ShopingCenter_Wallet_Chance_Note1 As Label
	Public Label_ShopingCenter_Wallet_Chance_Note2 As Label
	Public ProgressBar_ShopingCenter_Wallet_Chance_Play As ProgressBar
	Public Label_ShopingCenter_Wallet_Chance_RandomPrice As Label
	Public Label_ShopingCenter_Wallet_Chance_RandomPrice_Key As Label
	'---Layout_Tab4_ShopingCenter_SubPage_Wallet.bal }

	'---Layout_Tab4_ShopingCenter_SubPage_Shop.bal {
	Public Panel_ShopingCenter_Shop As Panel
	Public Label_ShopingCenter_Shop_MoneyBag_MyMoney_Note As Label
	Public Label_ShopingCenter_Shop_MoneyBag_MyMoney As Label
	Public ImageView_ShopingCenter_Shop As ImageView
	Public Panel_ShopingCenter_Shop_Information As Panel
	Public Label_ShopingCenter_Shop_Information As Label
	Public Panel_ShopingCenter_PriceTime As Panel
	Public Label_ShopingCenter_PriceTime_Information As Label
	Public Label_ShopingCenter_PriceTime_Icon As Label
	Public Label_ShopingCenter_PriceTime As Label
	Public Label_ShopingCenter_PriceTime_MAX As Label
	Public Label_ShopingCenter_PriceTime_MINE As Label
	Public Panel_ShopingCenter_PriceEye As Panel
	Public Label_ShopingCenter_PriceEye_Information As Label
	Public Label_ShopingCenter_PriceEye_Icon As Label
	Public Label_ShopingCenter_PriceEye As Label
	Public Label_ShopingCenter_PriceEye_MAX As Label
	Public Label_ShopingCenter_PriceEye_MINE As Label
	Public Panel_ShopingCenter_PriceThunder As Panel
	Public Label_ShopingCenter_PriceThunder_Information As Label
	Public Label_ShopingCenter_PriceThunder_Icon As Label
	Public Label_ShopingCenter_PriceThunder As Label
	Public Label_ShopingCenter_PriceThunder_MAX As Label
	Public Label_ShopingCenter_PriceThunder_MINE As Label
	Public Label_ShopingCenter_PriceThunder_Number As Label
	Public Label_ShopingCenter_PriceEye_Number As Label
	Public Label_ShopingCenter_PriceTime_Number As Label
	'---Layout_Tab4_ShopingCenter_SubPage_Shop.bal }

End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
	LanguageSet
	
	
	If Starter.GotoTAB=1 Then
		Label_Tab_1_Click
	Else If Starter.GotoTAB=2 Then
		Label_Tab_2_Click
	Else If Starter.GotoTAB=3 Then
		Label_Tab_3_Click
	Else If Starter.GotoTAB=4 Then
		Label_Tab_4_Click
	End If

	If Starter.GotoSubTAB=1 Then
		Label1_ShowLevels_1_Click
	Else if Starter.GotoSubTAB=2 Then
		Label1_ShowLevels_2_Click
	Else if Starter.GotoSubTAB=3 Then
		Label1_ShowLevels_3_Click
	Else if Starter.GotoSubTAB=4 Then
		Label_Title_ShopingCenter_TAB_Wallet_Click
	Else if Starter.GotoSubTAB=5 Then
		Label_Title_ShopingCenter_TAB_Shop_Click
	End If
	Load_Level

End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Initialize
	Panel_MessageExit_Hide.Visible=False
	Starter.WalletChance=0
	
	Starter.F_ADS.Class_Globals
	ConfigurationApp
	Load_Level
	EditText_UserName.Text=Starter.UserName_1
	Panel_User_Color.Color=	Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	
	
	If Starter.MusicBackground="True" Then
		ToggleButton_Setting_MusicBackground.Checked=True
		ToggleButton_Setting_MusicBackground_CheckedChange(True)
	Else
		ToggleButton_Setting_MusicBackground.Checked=False
		ToggleButton_Setting_MusicBackground_CheckedChange(False)
	End If
	
	If Starter.MusicEffect="True" Then
		ToggleButton_Setting_MusicEffect.Checked=True
		ToggleButton_Setting_MusicEffect_CheckedChange(True)
	Else
		ToggleButton_Setting_MusicEffect.Checked=False
		ToggleButton_Setting_MusicEffect_CheckedChange(False)
	End If
	
	
	If CheckNetworkStatus = False Then
		ToastMessageShow(Starter.L_InternetError, True)
	Else
'		ToastMessageShow("اتصال به اینترنت برقرار است", True)
	End If
	
	'نمایش آگهی بنر
	Start_ADS_Banner
End Sub

Sub CheckNetworkStatus As Boolean
	Dim jo As JavaObject
	jo.InitializeContext
	Dim cm As JavaObject = jo.RunMethod("getSystemService", Array("connectivity"))
	Dim activeNetwork As JavaObject = cm.RunMethod("getActiveNetworkInfo", Null)
    
	If activeNetwork.IsInitialized Then
		If activeNetwork.RunMethod("isConnected", Null) Then
			Return True ' شبکه متصل است
		End If
	End If
    
	Return False ' شبکه متصل نیست
End Sub

Sub Initialize
	'---MessageExit {
	Panel_MessageExit_Hide.Initialize("Panel_MessageExit")
	Panel_MessageExit.Initialize("Panel_MessageExit")
	ImageView_MessageExit_Icon.Initialize("ImageView_MessageExit_Icon")
	Label_MessageExit_Text.Initialize("Label_MessageExit_Text")
	Label_MessageExit_Close.Initialize("Label_MessageExit_Close")
	Label_MessageExit_Confirm.Initialize("Label_MessageExit_Confirm")
	'---MessageExit }
	
	'---Layout_Tab1_Level.bal {
	Activity.LoadLayout("Layout_Menu")
	Label_Title_Level.Initialize("Label_Title_Level")
	ListView_Level_1.Initialize("ListView_Level_1")
	ListView_Level_2.Initialize("ListView_Level_2")
	ListView_Level_3.Initialize("ListView_Level_3")
	'---Layout_Tab1_Level.bal }
	
	'---Layout_Tab2_Setting.bal {
	Label_Title_Setting.Initialize("Label_Title_Setting")
	'---Layout_Tab2_Setting.bal }
	
	'---Layout_Tab2_Setting_SubPage.bal {
	Label_Setting_MusicBackground.Initialize("Label_Setting_MusicBackground")
	ToggleButton_Setting_MusicBackground.Initialize("ToggleButton_Setting_MusicBackground")
	Label_Setting_MusicEffect.Initialize("Label_Setting_MusicEffect")
	ToggleButton_Setting_MusicEffect.Initialize("ToggleButton_Setting_MusicEffect")
	Label_Setting_Language.Initialize("Label_Setting_Language")
	Spinner_Setting_Language.Initialize("Spinner_Setting_Language")
	Label_ResponsiveSpeed.Initialize("Label_ResponsiveSpeed")
	Spinner_ResponsiveSpeed.Initialize("Spinner_ResponsiveSpeed")
	Label_Setting_RestartGame.Initialize("Label_Setting_RestartGame")
	Button_Setting_RestartGame.Initialize("Button_Setting_RestartGame")
	Label_Setting_Help.Initialize("Label_Setting_Help")
	Button_Setting_Help.Initialize("Button_Setting_Help")
	Label_Setting_About.Initialize("Label_Setting_About")
	Button_Setting_About.Initialize("Button_Setting_About")
	'---Layout_Tab2_Setting_SubPage.bal }
	
	'---Layout_Tab3_User.bal {
	Label_Title_UserInformation.Initialize("Label_Title_UserInformation")
	'---Layout_Tab3_User.bal }
	
	'---Layout_Tab3_User_SubPage.bal {
	Label_Player_1_IQ_Text .Initialize("Label_Player_1_IQ_Text")
	Label_User_Level_1 .Initialize("Label_User_Level_1")
	EditText_UserName .Initialize("EditText_UserName")
	Panel_User_Color.Initialize("Panel_User_Color")
	ProgressBar_UserName_Color_R .Initialize("ProgressBar_UserName_Color_R")
	ProgressBar_UserName_Color_G .Initialize("ProgressBar_UserName_Color_G")
	ProgressBar_UserName_Color_B .Initialize("ProgressBar_UserName_Color_B")
	Label_Tool_Thunder_Text .Initialize("Label_Tool_Thunder_Text")
	Label_Tool_Eye_Text .Initialize("Label_Tool_Eye_Text")
	Label_Tool_Time_Text .Initialize("Label_Tool_Time_Text")
	Label_Tool_Number_Thunder .Initialize("Label_Tool_Number_Thunder")
	Label_Tool_Number_Eye .Initialize("Label_Tool_Number_Eye")
	Label_Tool_Number_Time .Initialize("Label_Tool_Number_Time")
	ImageView_User_Wallet  .Initialize("ImageView_User_Wallet")
	Label_User_Wallet_MoneyBag_MyMoney .Initialize("Label_User_Wallet_MoneyBag_MyMoney")
	Label_User_Wallet_MoneyBag_MyMoney_Note .Initialize("Label_User_Wallet_MoneyBag_MyMoney_Note")

	'---Layout_Tab3_User_SubPage.bal }
	
	'---Layout_Avatar {
	
	'---Layout_Avatar }
	
	'---Layout_Tab4_ShopingCenter.bal {
	Label_Title_ShopingCenter.Initialize("Label_Title_ShopingCenter")
	Label_Title_ShopingCenter.Initialize("Label_Title_ShopingCenter")
	Label_Title_ShopingCenter_TAB_Shop.Initialize("Label_Title_ShopingCenter_TAB_Shop")
	Label_Title_ShopingCenter_TAB_Wallet.Initialize("Label_Title_ShopingCenter_TAB_Wallet")
	'---Layout_Tab4_ShopingCenter.bal }

	'---Layout_Tab4_ShopingCenter_SubPage_Wallet.bal {
	Panel_ShopingCenter_Wallet.Initialize("Panel_ShopingCenter_Wallet")
	Label_ShopingCenter_Wallet_MoneyBag_MyMoney_Note.Initialize("Label_ShopingCenter_Wallet_MoneyBag_MyMoney_Note")
	Label_ShopingCenter_Wallet_MoneyBag_MyMoney.Initialize("Label_ShopingCenter_Wallet_MoneyBag_MyMoney")
	ImageView_ShopingCenter_Wallet.Initialize("ImageView_ShopingCenter_Wallet")
	Panel_ShopingCenter_Wallet_Ads.Initialize("Panel_ShopingCenter_Wallet_Ads")
	Label_ShopingCenter_Wallet_Ads_Note1.Initialize("Label_ShopingCenter_Wallet_Ads_Note1")
	Label_ShopingCenter_Wallet_Ads_Play.Initialize("Label_ShopingCenter_Wallet_Ads_Play")
	Label_ShopingCenter_Wallet_Ads_Note2.Initialize("Label_ShopingCenter_Wallet_Ads_Note2")
	Panel_ShopingCenter_Wallet_PAY.Initialize("Panel_ShopingCenter_Wallet_PAY")
	Label_ShopingCenter_Wallet_PAY_Note1.Initialize("Label_ShopingCenter_Wallet_PAY_Note1")
	Label_ShopingCenter_Wallet_PAY_Note2.Initialize("Label_ShopingCenter_Wallet_PAY_Note2")
	Label_ShopingCenter_Wallet_StartPAY_100000.Initialize("Label_ShopingCenter_Wallet_StartPAY_100000")
	Label_ShopingCenter_Wallet_StartPAY_250000.Initialize("Label_ShopingCenter_Wallet_StartPAY_250000")
	Label_ShopingCenter_Wallet_StartPAY_500000.Initialize("Label_ShopingCenter_Wallet_StartPAY_500000")
	Label_ShopingCenter_Wallet_StartPAY_1000000.Initialize("Label_ShopingCenter_Wallet_StartPAY_1000000")
	ImageView_ShopingCenter_Wallet_StartPAY_100000.Initialize("ImageView_ShopingCenter_Wallet_StartPAY_100000")
	ImageView_ShopingCenter_Wallet_StartPAY_250000.Initialize("ImageView_ShopingCenter_Wallet_StartPAY_250000")
	ImageView_ShopingCenter_Wallet_StartPAY_500000.Initialize("ImageView_ShopingCenter_Wallet_StartPAY_500000")
	ImageView_ShopingCenter_Wallet_StartPAY_1000000.Initialize("ImageView_ShopingCenter_Wallet_StartPAY_1000000")
	Panel_ShopingCenter_Wallet_Chance.Initialize("Panel_ShopingCenter_Wallet_Chance")
	Label_ShopingCenter_Wallet_Chance_Note1.Initialize("Label_ShopingCenter_Wallet_Chance_Note1")
	Label_ShopingCenter_Wallet_Chance_Note2.Initialize("Label_ShopingCenter_Wallet_Chance_Note2")
	ProgressBar_ShopingCenter_Wallet_Chance_Play.Initialize("ProgressBar_ShopingCenter_Wallet_Chance_Play")
	Label_ShopingCenter_Wallet_Chance_RandomPrice.Initialize("Label_ShopingCenter_Wallet_Chance_RandomPrice")
	Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Initialize("Label_ShopingCenter_Wallet_Chance_RandomPrice_Key")
	OkHttp.Initialize("Starter.F_ADS.OkHttp")
	Adivery.Initialize(Starter.F_ADS.key_Master)
	Adivery.SetLoggingEnabled(True)
	Adivery.PrepareRewardedAd(Starter.F_ADS.key_RewardedPlacement)
	'---Layout_Tab4_ShopingCenter_SubPage_Wallet.bal }
	
	'---Layout_Tab4_ShopingCenter_SubPage_Shop.bal {
	Panel_ShopingCenter_Shop.Initialize("Panel_ShopingCenter_Shop")
	Label_ShopingCenter_Shop_MoneyBag_MyMoney_Note.Initialize("Label_ShopingCenter_Shop_MoneyBag_MyMoney_Note")
	Label_ShopingCenter_Shop_MoneyBag_MyMoney.Initialize("Label_ShopingCenter_Shop_MoneyBag_MyMoney")
	ImageView_ShopingCenter_Shop.Initialize("ImageView_ShopingCenter_Shop")
	Panel_ShopingCenter_Shop_Information.Initialize("Panel_ShopingCenter_Shop_Information")
	Label_ShopingCenter_Shop_Information.Initialize("Label_ShopingCenter_Shop_Information")
	Panel_ShopingCenter_PriceTime.Initialize("Panel_ShopingCenter_PriceTime")
	Label_ShopingCenter_PriceTime_Information.Initialize("Label_ShopingCenter_PriceTime_Information")
	Label_ShopingCenter_PriceTime_Icon.Initialize("Label_ShopingCenter_PriceTime_Icon")
	Label_ShopingCenter_PriceTime.Initialize("Label_ShopingCenter_PriceTime")
	Label_ShopingCenter_PriceTime_MAX.Initialize("Label_ShopingCenter_PriceTime_MAX")
	Label_ShopingCenter_PriceTime_MINE.Initialize("Label_ShopingCenter_PriceTime_MINE")
	Panel_ShopingCenter_PriceEye.Initialize("Panel_ShopingCenter_PriceEye")
	Label_ShopingCenter_PriceEye_Information.Initialize("Label_ShopingCenter_PriceEye_Information")
	Label_ShopingCenter_PriceEye_Icon.Initialize("Label_ShopingCenter_PriceEye_Icon")
	Label_ShopingCenter_PriceEye.Initialize("Label_ShopingCenter_PriceEye")
	Label_ShopingCenter_PriceEye_MAX.Initialize("Label_ShopingCenter_PriceEye_MAX")
	Label_ShopingCenter_PriceEye_MINE.Initialize("Label_ShopingCenter_PriceEye_MINE")
	Panel_ShopingCenter_PriceThunder.Initialize("Panel_ShopingCenter_PriceThunder")
	Label_ShopingCenter_PriceThunder_Information.Initialize("Label_ShopingCenter_PriceThunder_Information")
	Label_ShopingCenter_PriceThunder_Icon.Initialize("Label_ShopingCenter_PriceThunder_Icon")
	Label_ShopingCenter_PriceThunder.Initialize("Label_ShopingCenter_PriceThunder")
	Label_ShopingCenter_PriceThunder_MAX.Initialize("Label_ShopingCenter_PriceThunder_MAX")
	Label_ShopingCenter_PriceThunder_MINE.Initialize("Label_ShopingCenter_PriceThunder_MINE")
	Label_ShopingCenter_PriceThunder_Number .Initialize("Label_ShopingCenter_PriceThunder_Number")
	Label_ShopingCenter_PriceEye_Number .Initialize("Label_ShopingCenter_PriceEye_Number")
	Label_ShopingCenter_PriceTime_Number .Initialize("Label_ShopingCenter_PriceTime_Number")
	'---Layout_Tab4_ShopingCenter_SubPage_Shop.bal }
End Sub

Sub LanguageSet
	Sleep(500)
	Label1_ShowLevels_1_Click
	
	Label_MessageExit_Text.Text=Starter.L_TitleMSGExit
	'---Layout_Menu.bal {
	Label_Application_Name_Menu.Text=Starter.L_Label_Application_Name_Menu

	If Starter.StarWinnerNumber= 0 Then
		Label_Application_MaxLevel_Menu.Text=""
	else if  Starter.StarWinnerNumber= 1 Then
		Label_Application_MaxLevel_Menu.Text=""
	else if  Starter.StarWinnerNumber= 2 Then
		Label_Application_MaxLevel_Menu.Text=""
	else if  Starter.StarWinnerNumber= 3 Then
		Label_Application_MaxLevel_Menu.Text=""
	else if  Starter.StarWinnerNumber= 4 Then
		Label_Application_MaxLevel_Menu.Text=""
	else if  Starter.StarWinnerNumber= 5 Then
		Label_Application_MaxLevel_Menu.Text=""
	else if  Starter.StarWinnerNumber= 6 Then
		Label_Application_MaxLevel_Menu.Text=""
	else if  Starter.StarWinnerNumber= 7 Then
		Label_Application_MaxLevel_Menu.Text=""
	else if  Starter.StarWinnerNumber> 7 Then
		Label_Application_MaxLevel_Menu.Text=""
	End If
	Label_Tab_1.Text = Starter.L_Label_Tab_1
	Label_Tab_2.Text = Starter.L_Label_Tab_2
	Label_Tab_3.Text = Starter.L_Label_Tab_3
	Label_Tab_4.Text = Starter.L_Label_Tab_4
	Label_Exit_Text.Text = Starter.L_Label_Exit_Text

	Label_1_Player_Text.Text = Starter.L_Label_1_Player_Text	
	Label_2_Player_Text.Text = Starter.L_Label_2_Player_Text
	Label_3_Player_Text.Text = Starter.L_Label_3_Player_Text
	
	If Starter.UserName_1_Speed=500 Then
		Spinner_ResponsiveSpeed.SelectedIndex=0
		Starter.iQ_CHAR_STAR=""
	Else If Starter.UserName_1_Speed=250 Then
		Spinner_ResponsiveSpeed.SelectedIndex=1
		Starter.iQ_CHAR_STAR=""
	Else If Starter.UserName_1_Speed=125 Then
		Spinner_ResponsiveSpeed.SelectedIndex=2
		Starter.iQ_CHAR_STAR=""
	End If
	'---Layout_Menu.bal }


	Label_Application_MaxLevel_Menu.text=Label_Application_MaxLevel_Menu.Text
	Panel_User_Color_Menu.Color=Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	ImageView_User_Avatar_Menu.Bitmap = LoadBitmap(File.DirAssets, Starter.UserName_1_Avatar)
	Label_User_Level_Menu.Text=Starter.L_Label_User_Level & " : "&(Starter.UserName_1_Level-1)
	Label_Player_1_IQ_Text_Menu.text=Label_Player_1_IQ_Text.Text
	Label_UserName_Menu.text=Starter.UserName_1	
	Label_User_Wallet_MoneyBag_MyMoney_Menu .Text = NumberFormat(Starter.UserName_1_Money,0,3)	
	Label_User_Wallet_MoneyBag_MyMoney_Note_Menu .Text = Starter.L_Label_ShopingCenter_Wallet_MoneyBag_MyMoney_Note


	'---Layout_Tab1_Level.bal {
	Label_Title_Level.Text = Starter.L_Label_Title_Level
	'---Layout_Tab1_Level.bal }

	'---Layout_Tab2_Setting.bal {
	Spinner_ResponsiveSpeed.Clear
	Spinner_ResponsiveSpeed.AddAll(Array As String(Starter.L_Spinner_ResponsiveSpeed_Easy,Starter.L_Spinner_ResponsiveSpeed_Normal,Starter.L_Spinner_ResponsiveSpeed_Hard))
	Label_Title_Setting.Text = Starter.L_Label_Title_Setting
	'---Layout_Tab2_Setting.bal }

	'---Layout_Tab2_Setting_SubPage.bal {
	Label_Setting_MusicBackground.Text = Starter.L_Label_Setting_MusicBackground & Chr(9) & Starter.MusicNameRandomSelect_GamePlay
	Label_Setting_MusicEffect.Text = Starter.L_Label_Setting_MusicEffect
	Label_Setting_Language.Text = Starter.L_Label_Setting_Language
	Spinner_Setting_Language.Clear
	Spinner_Setting_Language.AddAll(Array As String(Starter.L_Spinner_Setting_Language_English,Starter.L_Spinner_Setting_Language_Persian))

	Label_ResponsiveSpeed.Text = Starter.L_Label_ResponsiveSpeed
	Label_Setting_RestartGame.Text = Starter.L_Label_Setting_RestartGame
	Label_Setting_Help.Text = Starter.L_Label_Setting_Help
	Label_Setting_About.Text = Starter.L_Label_Setting_About
	Label_QuestionTypeSettings_Title.Text = Starter.L_Question_type_settings_Title
	Spinner_QuestionTypeSettings.Clear
	Spinner_QuestionTypeSettings.AddAll(Array As String(Starter.L_Random_question,Starter.L_sum_of_numbers,Starter.L_Subtraction_of_numbers,Starter.L_Multiply_numbers,Starter.L_Dividing_numbers))
	
	'---Layout_Tab2_Setting_SubPage.bal }

	'---Layout_Tab3_User.bal {
	Label_Title_UserInformation.Text = Starter.L_Label_Title_UserInformation
	'---Layout_Tab3_User.bal }

	'---Layout_Tab3_User_SubPage.bal {
	
'	ImageView_User_Avatar.SetBackgroundImage(LoadBitmap(File.DirAssets, Starter.UserName_1_Avatar))

	'---Layout_Tab3_User_SubPage.bal }

	'---Layout_Tab4_ShopingCenter.bal {
	Label_Title_ShopingCenter.Text = Starter.L_Label_Title_ShopingCenter
	'---Layout_Tab4_ShopingCenter.bal }

	'---Layout_Tab4_ShopingCenter.bal {
	Label_Title_ShopingCenter.text=Starter.L_Label_Title_ShopingCenter
	'---Layout_Tab4_ShopingCenter.bal }

	'---Layout_Tab4_ShopingCenter_SubPage_Wallet.bal {
	Label_ShopingCenter_Wallet_MoneyBag_MyMoney_Note.text=Starter.L_Label_ShopingCenter_Wallet_MoneyBag_MyMoney_Note
	Label_ShopingCenter_Wallet_MoneyBag_MyMoney.text=NumberFormat(Starter.UserName_1_Money,0,3)
	Label_ShopingCenter_Wallet_Ads_Note1.text=Starter.L_Label_ShopingCenter_Wallet_Ads_Note1
	Label_ShopingCenter_Wallet_Ads_Note2.text=Starter.L_Label_ShopingCenter_Wallet_Ads_Note2
	Label_ShopingCenter_Wallet_PAY_Note1.text=Starter.L_Label_ShopingCenter_Wallet_PAY_Note1
	Label_ShopingCenter_Wallet_PAY_Note2.text=Starter.L_Label_ShopingCenter_Wallet_PAY_Note2
	Label_ShopingCenter_Wallet_Chance_Note1.text=Starter.L_Label_ShopingCenter_Wallet_Chance_Note1
	Label_ShopingCenter_Wallet_Chance_Note2.text=Starter.L_Label_ShopingCenter_Wallet_Chance_Note2
'	Label_ShopingCenter_Wallet_Chance_RandomPrice.text=Starter.Chance_RandomPrice
	
	Label_ShopingCenter_Wallet_Chance_RandomPrice.text=Starter.L_Label_ShopingCenter_Wallet_Chance_RandomPrice
	'---Layout_Tab4_ShopingCenter_SubPage_Wallet.bal }
	
	'---Layout_Tab4_ShopingCenter_SubPage_Shop.bal {
	Label_ShopingCenter_Shop_MoneyBag_MyMoney_Note.text=Starter.L_Label_ShopingCenter_Shop_MoneyBag_MyMoney_Note
	Label_ShopingCenter_Shop_MoneyBag_MyMoney.text=NumberFormat(Starter.UserName_1_Money,0,3)
	Starter.Shop_Information = Starter.L_ShopingCenter_Shop_Information_Message_1
	Label_ShopingCenter_Shop_Information.text=Starter.Shop_Information
	
	Label_ShopingCenter_PriceTime_Information.text=Starter.L_Label_ShopingCenter_PriceTime_Information
'	Label_ShopingCenter_PriceTime_Number .text=Starter.UserName_1_Data_Tool_1	
	Label_ShopingCenter_PriceTime.text=Starter.L_Label_ShopingCenter_PriceTime

	Label_ShopingCenter_PriceEye_Information.text=Starter.L_Label_ShopingCenter_PriceEye_Information
'	Label_ShopingCenter_PriceEye_Number .text=Starter.UserName_1_Data_Tool_2	
	Label_ShopingCenter_PriceEye.text=Starter.L_Label_ShopingCenter_PriceEye

	Label_ShopingCenter_PriceThunder_Information.text=Starter.L_Label_ShopingCenter_PriceThunder_Information
'	Label_ShopingCenter_PriceThunder_Number .text=Starter.UserName_1_Data_Tool_3
	Label_ShopingCenter_PriceThunder.text=Starter.L_Label_ShopingCenter_PriceThunder

	'---Layout_Tab4_ShopingCenter_SubPage_Shop.bal }

	
	
End Sub
Sub ConfigurationApp

	
	Starter.FontName1 = Starter.FontName1.LoadFromAssets("FarsiFont_1.TTF")
	Starter.FontName2 = Starter.FontName2.LoadFromAssets("EnglishFont_2.TTF")

	TabHost_Menu.AddTab(" ", "Layout_Tab1_Level.bal")
	TabHost_Menu.AddTab(" ", "Layout_Tab2_Setting.bal")
	TabHost_Menu.AddTab(" ", "Layout_Tab3_User.bal")
	TabHost_Menu.AddTab(" ", "Layout_Tab4_ShopingCenter.bal")
	ListView_Level_1.TwoLinesAndBitmap.ItemHeight = 5%y + ListView_Level_1.TwoLinesAndBitmap.ItemHeight
	ListView_Level_2.TwoLinesAndBitmap.ItemHeight = 5%y + ListView_Level_2.TwoLinesAndBitmap.ItemHeight
	ListView_Level_3.TwoLinesAndBitmap.ItemHeight = 5%y + ListView_Level_3.TwoLinesAndBitmap.ItemHeight
	
	ScrollView_Setting.Panel.LoadLayout("Layout_Tab2_Setting_SubPage")
	ScrollView_Setting.Panel.Height = ScrollView_Setting.Height + 150dip
	ScrollView_User.Panel.LoadLayout("Layout_Tab3_User_SubPage")
	ScrollView_User.Panel.Height = ScrollView_User.Height + 500dip

	
	ImageView_User_Avatar.SetBackgroundImage(LoadBitmap(File.DirAssets, Starter.UserName_1_Avatar))

	ScrollView_ShopingCenter_Wallet.Panel.LoadLayout("Layout_Tab4_ShopingCenter_SubPage_Wallet")
	ScrollView_ShopingCenter_Wallet.Panel.Height = ScrollView_ShopingCenter_Wallet.Height + 500dip
	ScrollView_ShopingCenter_Shop.Panel.LoadLayout("Layout_Tab4_ShopingCenter_SubPage_Shop")
	ScrollView_ShopingCenter_Shop.Panel.Height = ScrollView_ShopingCenter_Shop.Height +  500dip
'	---
	ListView_Level_1.TwoLinesAndBitmap.ImageView.Left=0
	ListView_Level_1.TwoLinesAndBitmap.ImageView.Top=10dip
	ListView_Level_1.TwoLinesAndBitmap.ImageView.Width=90dip
	ListView_Level_1.TwoLinesAndBitmap.ImageView.Height=90dip
	
	ListView_Level_1.TwoLinesAndBitmap.Label.Gravity = Bit.Or(Gravity.CENTER, Gravity.TOP)
	ListView_Level_1.TwoLinesAndBitmap.Label.Typeface = Starter.FontName1
	ListView_Level_1.TwoLinesAndBitmap.Label.TextSize = 17
	ListView_Level_1.TwoLinesAndBitmap.Label.TextColor = Colors.White
	ListView_Level_1.TwoLinesAndBitmap.Label.SetLayout(5%x,5dip, 90%x, 25dip)
	'---
	ListView_Level_1.TwoLinesAndBitmap.SecondLabel.Gravity = Bit.Or(Gravity.CENTER, Gravity.CENTER_HORIZONTAL)
	ListView_Level_1.TwoLinesAndBitmap.SecondLabel.Typeface = Starter.FontName1
	ListView_Level_1.TwoLinesAndBitmap.SecondLabel.TextSize = 14
	ListView_Level_1.TwoLinesAndBitmap.SecondLabel.TextColor = Colors.Black
	ListView_Level_1.TwoLinesAndBitmap.SecondLabel.SetLayout(5%x,26dip, 95%x, 90dip)
	'---
	ListView_Level_1.TwoLinesAndBitmap.ItemHeight = 110dip '+ ListView_Level_1.TwoLinesAndBitmap.ItemHeight
	'---------------------------------------------------------------------------
	ListView_Level_2.TwoLinesAndBitmap.ImageView.Left=0
	ListView_Level_2.TwoLinesAndBitmap.ImageView.Top=10dip
	ListView_Level_2.TwoLinesAndBitmap.ImageView.Width=90dip
	ListView_Level_2.TwoLinesAndBitmap.ImageView.Height=90dip
	'---
	ListView_Level_2.TwoLinesAndBitmap.Label.Gravity = Bit.Or(Gravity.CENTER, Gravity.TOP)
	ListView_Level_2.TwoLinesAndBitmap.Label.Typeface = Starter.FontName1
	ListView_Level_2.TwoLinesAndBitmap.Label.TextSize = 17
	ListView_Level_2.TwoLinesAndBitmap.Label.TextColor = Colors.White
	ListView_Level_2.TwoLinesAndBitmap.Label.SetLayout(5%x,5dip, 90%x, 25dip)
	'---
	ListView_Level_2.TwoLinesAndBitmap.SecondLabel.Gravity = Bit.Or(Gravity.CENTER, Gravity.CENTER_HORIZONTAL)
	ListView_Level_2.TwoLinesAndBitmap.SecondLabel.Typeface = Starter.FontName1
	ListView_Level_2.TwoLinesAndBitmap.SecondLabel.TextSize = 14
	ListView_Level_2.TwoLinesAndBitmap.SecondLabel.TextColor = Colors.Black
	ListView_Level_2.TwoLinesAndBitmap.SecondLabel.SetLayout(5%x,26dip, 95%x, 90dip)
	'---
	ListView_Level_2.TwoLinesAndBitmap.ItemHeight = 110dip '+ ListView_Level_2.TwoLinesAndBitmap.ItemHeight
	'---------------------------------------------------------------------------
	ListView_Level_3.TwoLinesAndBitmap.ImageView.Left=0
	ListView_Level_3.TwoLinesAndBitmap.ImageView.Top=10dip
	ListView_Level_3.TwoLinesAndBitmap.ImageView.Width=90dip
	ListView_Level_3.TwoLinesAndBitmap.ImageView.Height=90dip
	'---
	ListView_Level_3.TwoLinesAndBitmap.Label.Gravity = Bit.Or(Gravity.CENTER, Gravity.TOP)
	ListView_Level_3.TwoLinesAndBitmap.Label.Typeface = Starter.FontName1
	ListView_Level_3.TwoLinesAndBitmap.Label.TextSize = 17
	ListView_Level_3.TwoLinesAndBitmap.Label.TextColor = Colors.White
	ListView_Level_3.TwoLinesAndBitmap.Label.SetLayout(5%x,5dip, 85%x, 25dip)
	'---
	ListView_Level_3.TwoLinesAndBitmap.SecondLabel.Gravity = Bit.Or(Gravity.CENTER, Gravity.CENTER_HORIZONTAL)
	ListView_Level_3.TwoLinesAndBitmap.SecondLabel.Typeface = Starter.FontName1
	ListView_Level_3.TwoLinesAndBitmap.SecondLabel.TextSize = 14
	ListView_Level_3.TwoLinesAndBitmap.SecondLabel.TextColor = Colors.Black
	ListView_Level_3.TwoLinesAndBitmap.SecondLabel.SetLayout(5%x,26dip, 95%x, 90dip)
	'---
	ListView_Level_3.TwoLinesAndBitmap.ItemHeight = 110dip '+ ListView_Level_3.TwoLinesAndBitmap.ItemHeight
	   
	

	   
	'Spinner_QuestionTypeSettings
	'Spinner_ResponsiveSpeed.
	'EditText_Pae.Typeface=FontName2
	'EditText_Page.TextSize=15
	'EditText_Page.TextColor= Colors.Black
	'EditText_Page.SetLayout( 5%y, 5%y, 83.5%x, 83.5%y)

End Sub

Sub Load_Level
	Label_Tool_Number_Time.Text=Starter.UserName_1_Data_Tool_1
	Label_ShopingCenter_PriceTime_Number .text=Starter.UserName_1_Data_Tool_1
	Label_Tool_Time_Text.Text = Starter.L_Label_Tool_Time_Text
	
	Label_Tool_Number_Eye.Text=Starter.UserName_1_Data_Tool_2
	Label_ShopingCenter_PriceEye_Number .text=Starter.UserName_1_Data_Tool_2
	Label_Tool_Eye_Text.Text = Starter.L_Label_Tool_Eye_Text
	
	Label_Tool_Number_Thunder.Text=Starter.UserName_1_Data_Tool_3
	Label_ShopingCenter_PriceThunder_Number .text=Starter.UserName_1_Data_Tool_3	
	Label_Tool_Thunder_Text.Text = Starter.L_Label_Tool_Thunder_Text	


	Label_ShopingCenter_Shop_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
	Label_ShopingCenter_Wallet_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
	
	ImageView_User_Avatar.Bitmap = LoadBitmap(File.DirAssets, Starter.UserName_1_Avatar)
	
	SeekBar_UserName_Color_R_ValueChanged(Starter.UserName_1_Color_R,False)
	SeekBar_UserName_Color_G_ValueChanged(Starter.UserName_1_Color_G,False)
	SeekBar_UserName_Color_B_ValueChanged(Starter.UserName_1_Color_B,False)
	Panel_User_Color.Color=Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	
	EditText_UserName.Text=Starter.UserName_1
	
	Label_User_Wallet_MoneyBag_MyMoney .Text = NumberFormat(Starter.UserName_1_Money,0,3)
	
	Label_User_Wallet_MoneyBag_MyMoney_Note .Text = Starter.L_Label_ShopingCenter_Wallet_MoneyBag_MyMoney_Note
	
	Label_User_Level_1.Text=Starter.L_Label_User_Level & " : "&(Starter.UserName_1_Level-1)
	
	If Starter.UserName_1_Speed=500 Then
		Spinner_ResponsiveSpeed.SelectedIndex=0
		Starter.iQ_CHAR_STAR=""
				Starter.Spinner_ResponsiveSpeed_text=Starter.L_Spinner_ResponsiveSpeed_Easy
	Else If Starter.UserName_1_Speed=250 Then
			Spinner_ResponsiveSpeed.SelectedIndex=1
		Starter.iQ_CHAR_STAR=""
				Starter.Spinner_ResponsiveSpeed_text=Starter.L_Spinner_ResponsiveSpeed_Normal
	Else If Starter.UserName_1_Speed=125 Then
		Spinner_ResponsiveSpeed.SelectedIndex=2
		Starter.iQ_CHAR_STAR=""
				Starter.Spinner_ResponsiveSpeed_text=Starter.L_Spinner_ResponsiveSpeed_Hard
	End If
	
	If Starter.Iq_Iq_Level = 0.0 Then
		Label_Player_1_IQ_Text.Text=Starter.L_Label_Level_IQ_Text&" : "
	else if Starter.Iq_Iq_Level =1.0 Or Starter.Iq_Iq_Level <2.0 Then
		Label_Player_1_IQ_Text.Text=Starter.L_Label_Level_IQ_Text&" : "&Starter.iQ_CHAR_STAR
	else if Starter.Iq_Iq_Level =2.0 Or Starter.Iq_Iq_Level <3.0 Then
		Label_Player_1_IQ_Text.Text=Starter.L_Label_Level_IQ_Text&" : "&Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
	else if Starter.Iq_Iq_Level =3.0 Or Starter.Iq_Iq_Level >3.0 Then
		Label_Player_1_IQ_Text.Text=Starter.L_Label_Level_IQ_Text&" : "&Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
	End If

	If Starter.UserName_1_Money >100 Then
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_4
	Else
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_5
	End If
	
	ListView_Level_1.Visible=True
	ListView_Level_1.Clear
	
	For i = 0 To Starter.ListSaveGame_Player1_LINE_1.Size-1
		ListView_Level_1.AddTwoLinesAndBitmap(Starter.ListSaveGame_Player1_LINE_1.Get(i), Starter.ListSaveGame_Player1_LINE_2.Get(i), LoadBitmap(File.DirAssets, Starter.ListSaveGame_Player1_LINE_0.Get(i)))
	Next
	ListView_Level_1.Visible=False
	
	ListView_Level_2.Visible=True
	ListView_Level_2.Clear
	For i = 0 To Starter.ListSaveGame_Player2_LINE_1.Size-1
		ListView_Level_2.AddTwoLinesAndBitmap(Starter.ListSaveGame_Player2_LINE_1.Get(i), Starter.ListSaveGame_Player2_LINE_2.Get(i), LoadBitmap(File.DirAssets, Starter.ListSaveGame_Player2_LINE_0.Get(i)))
	Next
	ListView_Level_2.Visible=False
	
	ListView_Level_3.Visible=True
	ListView_Level_3.Clear
	For i = 0 To Starter.ListSaveGame_Player3_LINE_1.Size-1
		ListView_Level_3.AddTwoLinesAndBitmap(Starter.ListSaveGame_Player3_LINE_1.Get(i), Starter.ListSaveGame_Player3_LINE_2.Get(i), LoadBitmap(File.DirAssets, Starter.ListSaveGame_Player3_LINE_0.Get(i)))
	Next
	ListView_Level_3.Visible=False

	'************** منوی تنظیمات
	
	If Starter.QuestionTypeSelect=0 Then
		Spinner_QuestionTypeSettings.SelectedIndex=0
	Else If Starter.QuestionTypeSelect=1 Then
		Spinner_QuestionTypeSettings.SelectedIndex=1
	Else If Starter.QuestionTypeSelect=2 Then
		Spinner_QuestionTypeSettings.SelectedIndex=2
	Else If Starter.QuestionTypeSelect=3 Then
		Spinner_QuestionTypeSettings.SelectedIndex=3
	Else If Starter.QuestionTypeSelect=4 Then
		Spinner_QuestionTypeSettings.SelectedIndex=4
	End If
	

	If Starter.Language="en" Then
		Spinner_Setting_Language.SelectedIndex=0
		Starter.F_Language.ChangeLanguage("en")
		LanguageSet
	else if Starter.Language="fa" Then
		Spinner_Setting_Language.SelectedIndex=1
		Starter.F_Language.ChangeLanguage("fa")
		LanguageSet
	End If




End Sub

Private Sub Label_Tab_1_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	TabHost_Menu.CurrentTab=0
	Label_Tab_1.TextColor=Colors.Black
	Label_Tab_2.TextColor=Colors.RGB(75,0,130)
	Label_Tab_3.TextColor=Colors.RGB(75,0,130)
	Label_Tab_4.TextColor=Colors.RGB(75,0,130)
	Load_Level
End Sub
Private Sub Label_Tab_2_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	Label_Tab_1.TextColor=Colors.RGB(75,0,130)
	Label_Tab_2.TextColor=Colors.Black
	Label_Tab_3.TextColor=Colors.RGB(75,0,130)
	Label_Tab_4.TextColor=Colors.RGB(75,0,130)
	TabHost_Menu.CurrentTab=1
	Load_Level
End Sub
Private Sub Label_Tab_3_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	Label_Tab_1.TextColor=Colors.RGB(75,0,130)
	Label_Tab_2.TextColor=Colors.RGB(75,0,130)
	Label_Tab_3.TextColor=Colors.Black
	Label_Tab_4.TextColor=Colors.RGB(75,0,130)
	TabHost_Menu.CurrentTab=2
	Load_Level
End Sub
Private Sub Label_Tab_4_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	Label_Tab_1.TextColor=Colors.RGB(75,0,130)
	Label_Tab_2.TextColor=Colors.RGB(75,0,130)
	Label_Tab_3.TextColor=Colors.RGB(75,0,130)
	Label_Tab_4.TextColor=Colors.Black
	TabHost_Menu.CurrentTab=3
	Load_Level
End Sub

Private Sub Label1_ShowLevels_1_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	Label1_ShowLevels_1.TextColor=Colors.Black
	Label1_ShowLevels_2.TextColor=Colors.RGB(75,0,130)
	Label1_ShowLevels_3.TextColor=Colors.RGB(75,0,130)
	ListView_Level_1.Visible=True
	ListView_Level_2.Visible=False
	ListView_Level_3.Visible=False
End Sub
Private Sub Label1_ShowLevels_2_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	Label1_ShowLevels_1.TextColor=Colors.RGB(75,0,130)
	Label1_ShowLevels_2.TextColor=Colors.Black
	Label1_ShowLevels_3.TextColor=Colors.RGB(75,0,130)
	ListView_Level_1.Visible=False
	ListView_Level_2.Visible=True
	ListView_Level_3.Visible=False
End Sub
Private Sub Label1_ShowLevels_3_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	Label1_ShowLevels_1.TextColor=Colors.RGB(75,0,130)
	Label1_ShowLevels_2.TextColor=Colors.RGB(75,0,130)
	Label1_ShowLevels_3.TextColor=Colors.Black
	ListView_Level_1.Visible=False
	ListView_Level_2.Visible=False
	ListView_Level_3.Visible=True
End Sub

Public Sub Label_Title_ShopingCenter_TAB_Shop_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	Label_Title_ShopingCenter_TAB_Shop.TextColor=Colors.Black
	Label_Title_ShopingCenter_TAB_Wallet.TextColor=Colors.RGB(75,0,130)
	ScrollView_ShopingCenter_Wallet.Visible=False
	ScrollView_ShopingCenter_Shop.Visible=True
	Load_Level
End Sub
Public Sub Label_Title_ShopingCenter_TAB_Wallet_Click
	Starter.F_Sound.MP_EF("seqund.wav",False)
	Label_Title_ShopingCenter_TAB_Wallet.TextColor=Colors.Black
	Label_Title_ShopingCenter_TAB_Shop.TextColor=Colors.RGB(75,0,130)
	ScrollView_ShopingCenter_Wallet.Visible=True
	ScrollView_ShopingCenter_Shop.Visible=False
	Load_Level
End Sub

Private Sub Label_1_Player_Click
	Starter.F_Sound.MP_EF("StartGamePlay.wav",False)
	StartActivity(Activity_GamePlay_1)
End Sub

Private Sub Label_2_Player_Click
	Starter.F_Sound.MP_EF("StartGamePlay.wav",False)
	StartActivity(Activity_Player2_AISearch)
End Sub

Private Sub Label_3_Player_Click
	Starter.F_Sound.MP_EF("StartGamePlay.wav",False)
	StartActivity(Activity_Player3_AIChallengeSearch)
End Sub

Private Sub Label_Help_Click
	Starter.F_Sound.MP_EF("true.wav",False)
	StartActivity(Activity_Help)
End Sub

Public Sub Label_Exit_Click
	
	Panel_MessageExit_Hide.Visible=True
End Sub
Private Sub Label_MessageExit_Close_Click
	Panel_MessageExit_Hide.Visible=False
End Sub
Private Sub Label_MessageExit_Confirm_Click
	Panel_MessageExit_Hide.Visible=False
	ExitApplication
End Sub

Public Sub Spinner_ResponsiveSpeed_ItemClick (Position As Int, Value As Object)
	If Position=0 Then
		Starter.UserName_1_Speed=500
		Starter.iQ_CHAR_STAR=""
		Starter.Spinner_ResponsiveSpeed_text=Starter.L_Spinner_ResponsiveSpeed_Easy
	else if Position=1 Then
		Starter.UserName_1_Speed=250
		Starter.iQ_CHAR_STAR=""
		Starter.Spinner_ResponsiveSpeed_text=Starter.L_Spinner_ResponsiveSpeed_Normal
	else if Position=2 Then
		Starter.UserName_1_Speed=125
		Starter.iQ_CHAR_STAR=""
		Starter.Spinner_ResponsiveSpeed_text=Starter.L_Spinner_ResponsiveSpeed_Hard
	End If
	
End Sub

Private Sub Spinner_QuestionTypeSettings_ItemClick (Position As Int, Value As Object)
	Starter.QuestionTypeSelect=Position
End Sub

Private Sub ToggleButton_Setting_MusicBackground_CheckedChange(Checked As Boolean)
	If Checked=True Then
		Starter.MusicBackground="True"
	Else
		Starter.MusicBackground="False"
	End If
	Starter.F_Sound.MP_BG
	Label_Setting_MusicBackground.Text = Starter.L_Label_Setting_MusicBackground & Chr(9) & Starter.MusicNameRandomSelect_GamePlay
End Sub

Private Sub ToggleButton_Setting_MusicEffect_CheckedChange(Checked As Boolean)
	If Checked=True Then
		Starter.MusicEffect="True"
	Else
		Starter.MusicEffect="False"
	End If
	Starter.F_Sound.MP_EF("true.wav",False)
End Sub

Private Sub Spinner_Setting_Language_ItemClick (Position As Int, Value As Object)
	Starter.F_Sound.MP_EF("true.wav",False)
	If Position=0 Then
		Starter.F_Language.ChangeLanguage("en")
		LanguageSet
	else if Position=1 Then
		Starter.F_Language.ChangeLanguage("fa")
		LanguageSet
	End If
End Sub

Private Sub Button_Setting_RestartGame_Click
	Starter.F_Sound.MP_EF("true.wav",False)
	Dim sf As Object = xui.Msgbox2Async(Starter.L_Titlemsg_RestartGame,Starter.L_Textmsg_RestartGame,Starter.L_Yes,Starter.L_No,"", Application.Icon)
	Wait For (sf) Msgbox_Result (Result As Int)
	If Result = xui.DialogResponse_Positive Then
		Starter.F_SaveLoadRestart.Restart_Game
		Load_Level
		LanguageSet
		Starter.F_Sound.MP_EF("loadingstart.wav",False)
	End If
	
End Sub

Private Sub Button_Setting_Help_Click
	Starter.F_Sound.MP_EF("true.wav",False)
	StartActivity(Activity_Help)
End Sub

Private Sub Button_Setting_About_Click
	Starter.F_Sound.MP_EF("true.wav",False)
	StartActivity(Activity_About)
End Sub

public Sub ImageView_User_Avatar_Click
	StartActivity(Activity_Avatar)
End Sub

Private Sub EditText_UserName_TextChanged (Old As String, New As String)
	Starter.UserName_1=New
End Sub

Private Sub SeekBar_UserName_Color_R_ValueChanged (Value As Int, UserChanged As Boolean)
	
	Panel_User_Color.Color=Colors.RGB(Value,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	Starter.UserName_1_Color_R=Value
End Sub

Private Sub SeekBar_UserName_Color_G_ValueChanged (Value As Int, UserChanged As Boolean)
	Panel_User_Color.Color=Colors.RGB(Starter.UserName_1_Color_R,Value,Starter.UserName_1_Color_B)
	Starter.UserName_1_Color_G=Value
End Sub

Private Sub SeekBar_UserName_Color_B_ValueChanged (Value As Int, UserChanged As Boolean)
	Panel_User_Color.Color=Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Value)
	Starter.UserName_1_Color_B=Value
End Sub

#Region Chance_RandomPrice

Private Sub Label_ShopingCenter_Wallet_Chance_RandomPrice_Key_Click
	Starter.SourceADS="Chance"
	Starter.F_Sound.MP_EF("loadingstart.wav",False)
	Label_ShopingCenter_Wallet_Chance_RandomPrice.Enabled=False
	Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Enabled=True
	Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Visible=True
	ProgressBar_ShopingCenter_Wallet_Chance_Play.Visible=True
	For i = 1 To 7
		Sleep(200)
		Starter.WalletChance=Rnd(100,500)
		Label_ShopingCenter_Wallet_Chance_RandomPrice.Text=Starter.WalletChance
		Label_ShopingCenter_Wallet_Chance_RandomPrice.TextSize=Rnd(20,25)
		Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.TextSize=Rnd(20,25)
		Label_ShopingCenter_Wallet_Chance_RandomPrice.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
		Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
		Label_ShopingCenter_Wallet_Chance_RandomPrice.Visible=True
	Next
	Label_ShopingCenter_Wallet_Chance_RandomPrice.Enabled=True
	Label_ShopingCenter_Wallet_Chance_RandomPrice.Visible=True
	Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Enabled=False
	Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Visible=False
	ProgressBar_ShopingCenter_Wallet_Chance_Play.Visible=False
	Label_ShopingCenter_Wallet_Chance_Note2.Text=Starter.L_Label_ShopingCenter_Wallet_Chance_RandomPrice_AddMoney
	Starter.F_Sound.MP_EF("loadingend.wav",False)

End Sub


Private Sub Label_ShopingCenter_Wallet_Chance_RandomPrice_Click
	Starter.SourceADS="Chance"
	Start_ADS_RewardedPlacement
End Sub

#End Region

Private Sub Label_ShopingCenter_Wallet_Ads_Play_Click
	Starter.SourceADS="Standard"
	Start_ADS_RewardedPlacement
End Sub

#Region ShopingCenter
Private Sub Label_ShopingCenter_PriceTime_MAX_Click
	If Starter.UserName_1_Money <200 Then
		Starter.F_Sound.MP_EF("product_1-2.wav",False)
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_5
	Else
		Starter.F_Sound.MP_EF("BUY.wav",False)
		Starter.UserName_1_Money=Starter.UserName_1_Money-200
		Label_ShopingCenter_Shop_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
		Starter.UserName_1_Data_Tool_1=Starter.UserName_1_Data_Tool_1+1
		Label_ShopingCenter_PriceTime_Number.text=Starter.UserName_1_Data_Tool_1
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_2
	End If
End Sub
Private Sub Label_ShopingCenter_PriceTime_MINE_Click
	If Starter.UserName_1_Money <200  Or Label_ShopingCenter_PriceTime_Number.Text<1  Then
		Starter.F_Sound.MP_EF("product_1-2.wav",False)
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_5
	Else
		Starter.F_Sound.MP_EF("CELL.wav",False)
		Starter.UserName_1_Money=Starter.UserName_1_Money+200
		Label_ShopingCenter_Shop_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
		Starter.UserName_1_Data_Tool_1=Starter.UserName_1_Data_Tool_1-1
		Label_ShopingCenter_PriceTime_Number.text=Starter.UserName_1_Data_Tool_1
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_3
	End If
End Sub


Private Sub Label_ShopingCenter_PriceEye_MAX_Click
	If Starter.UserName_1_Money <300 Then
		Starter.F_Sound.MP_EF("product_2-2.wav",False)
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_5
	Else
		Starter.F_Sound.MP_EF("BUY.wav",False)
		Starter.UserName_1_Money=Starter.UserName_1_Money-300
		Label_ShopingCenter_Shop_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
		Starter.UserName_1_Data_Tool_2=Starter.UserName_1_Data_Tool_2+1
		Label_ShopingCenter_PriceEye_Number.text=Starter.UserName_1_Data_Tool_2
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_2
	End If
End Sub
Private Sub Label_ShopingCenter_PriceEye_MINE_Click
	If Starter.UserName_1_Money <300 Or Label_ShopingCenter_PriceEye_Number.text<1 Then
		Starter.F_Sound.MP_EF("product_2-2.wav",False)
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_5
	Else
		Starter.F_Sound.MP_EF("CELL.wav",False)
		Starter.UserName_1_Money=Starter.UserName_1_Money+300
		Label_ShopingCenter_Shop_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
		Starter.UserName_1_Data_Tool_2=Starter.UserName_1_Data_Tool_2-1
		Label_ShopingCenter_PriceEye_Number.text=Starter.UserName_1_Data_Tool_2
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_3
	End If
End Sub


Private Sub Label_ShopingCenter_PriceThunder_MAX_Click
	If Starter.UserName_1_Money <150 Then
		Starter.F_Sound.MP_EF("product_3-1.wav",False)
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_5
	Else
		Starter.F_Sound.MP_EF("BUY.wav",False)
		Starter.UserName_1_Money=Starter.UserName_1_Money-150
		Label_ShopingCenter_Shop_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
		Starter.UserName_1_Data_Tool_3=Starter.UserName_1_Data_Tool_3+1
		Label_ShopingCenter_PriceThunder_Number.text=Starter.UserName_1_Data_Tool_3
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_2
	End If
End Sub

Private Sub Label_ShopingCenter_PriceThunder_MINE_Click
	If Starter.UserName_1_Money <150 Or Label_ShopingCenter_PriceThunder_Number.text<1 Then
		Starter.F_Sound.MP_EF("product_3-1.wav",False)
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_5
	Else
		Starter.F_Sound.MP_EF("CELL.wav",False)
		Starter.UserName_1_Money=Starter.UserName_1_Money+150
		Label_ShopingCenter_Shop_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
		Starter.UserName_1_Data_Tool_3=Starter.UserName_1_Data_Tool_3-1
		Label_ShopingCenter_PriceThunder_Number.text=Starter.UserName_1_Data_Tool_3
		Label_ShopingCenter_Shop_Information.Text=Starter.L_ShopingCenter_Shop_Information_Message_3
	End If
End Sub

#End Region


Public Sub ImageView_User_Avatar_Menu_Click
	Start_ADS_Banner
	'MsgboxAsync(Start_ADS_Banner,":"&Start_ADS_Banner)
End Sub

#Region Adivery ADS

 'رویداد تبلیغ جایزه‌ای

Public Sub Start_ADS_RewardedPlacement
	'رویداد تبلیغ جایزه‌ای
	OkHttp.Initialize("OkHttp")
	Adivery.Initialize(Starter.F_ADS.key_Master)
	Adivery.Show(Starter.F_ADS.key_RewardedPlacement)
	Label_ShopingCenter_Wallet_Ads_Note2.Text=Starter.L_StartAds
End Sub

Sub On_Rewarded_Ad_Loaded(placement As String)
	Starter.F_Sound.MP_EF("Ad_Loaded.wav",False)
	Label_ShopingCenter_Wallet_Ads_Note2.Text=Starter.L_Rewarded_loaded
End Sub

Sub On_Rewarded_Ad_Clicked(placement As String)
	Label_ShopingCenter_Wallet_Ads_Note2.Text=Starter.L_Rewarded_clicked
End Sub

Sub On_Rewarded_Ad_Closed(placement As String, rewarded As Boolean)
	Starter.GotoTAB=4
	Starter.GotoSubTAB=2
	Label_ShopingCenter_Wallet_Chance_RandomPrice.TextColor=Colors.Black
	Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.TextColor=Colors.Black
	Label_ShopingCenter_Wallet_Chance_RandomPrice.TextSize=17
	Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.TextSize=35
	If rewarded Then
		Starter.ADS_Reward_Recive="True"
		'//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		If Starter.SourceADS="Standard" Then
			Starter.F_Sound.MP_EF("GemChance.wav",False)
			For i=0 To 100
				Starter.UserName_1_Money=Starter.UserName_1_Money+1
				Sleep(10)
				Label_ShopingCenter_Wallet_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
				Label_ShopingCenter_Wallet_Ads_Note2.Text=Starter.L_Rewarded&" 100 /"&i
			Next
		else if Starter.SourceADS="Chance" Then
			'//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			Starter.F_Sound.MP_EF("RandomPriceOK.ogg",False)
			For i = 0 To Starter.WalletChance
				Sleep(10)
				Starter.UserName_1_Money=Starter.UserName_1_Money+1
				Label_ShopingCenter_Wallet_Chance_RandomPrice.Text=NumberFormat(Starter.WalletChance,0,3)
				Label_ShopingCenter_Wallet_MoneyBag_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
				Starter.WalletChance=Starter.WalletChance-1
			Next
			Starter.loopChanceTime=Starter.StartGameTimeChance
			For i =  0 To  Starter.StartGameTimeChance
				Starter.loopChanceTime=Starter.loopChanceTime-1
				Sleep(1000)
				Label_ShopingCenter_Wallet_Chance_RandomPrice.text=Starter.L_Label_ShopingCenter_Wallet_Chance_RandomPrice
				Label_ShopingCenter_Wallet_Chance_RandomPrice.Enabled=False
				Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Visible=True
				Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.text=ConvertSecondsToTime(Starter.loopChanceTime)
				Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Enabled=False
				If Starter.loopChanceTime=0 Then
					Label_ShopingCenter_Wallet_Chance_RandomPrice.Enabled=True
					Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Enabled=True
					Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.text=""
					Starter.StartGameTime=Rnd(100,1000)        '86400  '24 Hure
					Starter.StartGameTimeChance=Rnd(100,1000)  '86400  '24 Hure
					Exit
				End If
			Next
		else if Starter.SourceADS="MoreGem" Then
			
		End If
	Else
		Starter.ADS_Reward_Recive="False"
		Starter.F_Sound.MP_EF("ADS_NO.ogg",False)
		Label_ShopingCenter_Wallet_Chance_RandomPrice.text=Starter.StartGameTimeChance
		Label_ShopingCenter_Wallet_Chance_RandomPrice.Enabled=True
		Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.Enabled=True
		Label_ShopingCenter_Wallet_Chance_RandomPrice_Key.text=""
		Label_ShopingCenter_Wallet_Ads_Note2.Text=Starter.L_Rewarded_no
	End If
End Sub

Sub ConvertSecondsToTime(seconds As Int) As String
	Dim hours As Int = seconds / 3600
	Dim remainingSeconds As Int = seconds Mod 3600
	Dim minutes As Int = remainingSeconds / 60
	Dim finalSeconds As Int = remainingSeconds Mod 60
	Return NumberFormat(hours, 1, 0) & ":" & NumberFormat(minutes, 2, 0) & ":" & NumberFormat(finalSeconds, 2, 0)
End Sub



Sub On_Rewarded_Ad_Shown(placement As String)
	Label_ShopingCenter_Wallet_Ads_Note2.Text=Starter.L_Rewarded_shown
End Sub

	'رویداد خطا نمایش آگهی   
Sub On_Error(placementId As String, error As String)
	If error="com.adivery.sdk.l: Network error" Then
		Label_ShopingCenter_Wallet_Ads_Note2.Text=Starter.L_Error&Starter.L_InternetError
	Else
		Label_ShopingCenter_Wallet_Ads_Note2.Text=Starter.L_Error&error
	End If
End Sub

#END Region

#Region MyBanner ADS
'نمایش تبلیغ بنری
Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Banner.RemoveView
	Activity.AddView(Banner, 12%x,80%y, 100%x, 20%y)
	Banner.BringToFront
End Sub

Sub MyBanner_Ad_Loaded
	Log("Banner loaded | بنر لود شد")
End Sub

Sub MyBanner_Ad_Clicked
	Log("Banner clicked  | بنر کلیک شد >>>")
End Sub

Sub MyBanner_Ad_Error(error As String)
	Log(" خطا : بنر لود نشد "&error)
End Sub

#End Region