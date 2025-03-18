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
	'کتابخانه اصلی okhttp
	Public OkHttp As OkHttpClient
	'کتابخانه اصلی ادیوری
	Public Adivery As Adivery
	'متغییر نمایش تبلیغ بنری
	Public Banner As AdiveryBannerAd
	
	'متغییر نمایش تبلیغ بنری
	Public Banner As AdiveryBannerAd
	
	Public Panel_Player2_FinishGame As Panel
	Public ListView_Level_2 As ListView
	Public Label_Player2_FinishGame_Level As Label
	Public Label_Player2_FinishGame_IQ As Label
	Public Label_Player2_FinishGame_Information As Label
	Public Label_Player2_FinishGame_Home As Label
	Public Label_Player2_FinishGame_Home_Text As Label
	Public Label_Player2_FinishGame_Change As Label
	Public Label_Player2_FinishGame_Change_Text As Label
	Public Label_Player1_FinishGame_MyMoney As Label
	Public Label_Player2_FinishGame_InfoUser1_Name As Label
	Public ImageView_Player2_FinishGame_1_Avatar As ImageView
	Public Label_Player2_FinishGame_InfoUser2_Name As Label
	Public Label_Player2_FinishGame_AIMoney As Label
	Public ImageView_Player2_FinishGame_2_Avatar As ImageView
	Public Label_Player2_FinishGame_Risk As Label
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_Player2_FinishGame")
	LanguageSet
	ListView_Level_2.Initialize("ListView_Level_2")
	ImageView_Player2_FinishGame_1_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_1_Avatar )
	ImageView_Player2_FinishGame_2_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_2_Avatar )
			
	
	'نمایش آگهی میان صفحه ای
	Adivery.PrepareInterstitialAd(Starter.F_ADS.key_InterstitialPlacement)
			
	'نمایش آگهی بنر
	Start_ADS_Banner
End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub LanguageSet
	IQ_Level_Player2_FinishGame
	
	Label_Player2_FinishGame_Level.Text=Starter.L_Label_User_Level&" : "&Starter.L_Label_User_Level
	Label_Player2_FinishGame_InfoUser1_Name.text=Starter.UserName_1
	Label_Player2_FinishGame_InfoUser2_Name.text=Starter.UserName_2
	

	
	Starter.Label_Player2_FinishGame_Risk_text=Starter.L_Risk&" = "&" % " & Starter.UserName_2_Risk&Chr(10)&Starter.L_PriceRisk&" = "& NumberFormat(Starter.UserName_2_PriceRisk,0,3)&Chr(10)&Starter.L_Confirmed_Reward_Deposited_Into_Wallet

	Dim Typing As String
	For i = 0 To Starter.Label_Player2_FinishGame_Risk_text.Length-1
		Sleep(10)
		Typing=Typing&Starter.Label_Player2_FinishGame_Risk_text.CharAt(i)
		Label_Player2_FinishGame_Risk.text=Typing
	Next
	Label_Player2_FinishGame_Home_Text.Text=Starter.L_Label_Home_Text
	Label_Player2_FinishGame_Change_Text.Text = Starter.L_Label_Player2_AISearch_ChangeAI_Text
			
	
	If Starter.GameStatus="player2youwin" Then
		Label_Player2_FinishGame_Information.TextColor=Colors.Green
		Label_Player2_FinishGame_Information.Text = Starter.L_Label_FinishGame_Information_1
	
		Starter.UserName_1_Money=Starter.UserName_1_Money+(Starter.UserName_2_PriceRisk*2)
	Else If Starter.GameStatus="player2gameover" Then
		Label_Player2_FinishGame_Information.TextColor=Colors.Red
		Label_Player2_FinishGame_Information.Text = Starter.L_Label_FinishGame_Information_2
		
		Starter.UserName_2_Money=Starter.UserName_2_Money+(Starter.UserName_2_PriceRisk*2)
		
		Show_Interstitial_ADS
	End If

	
	Label_Player1_FinishGame_MyMoney.text=" : "&NumberFormat(Starter.UserName_1_Money,0,3)
	Label_Player2_FinishGame_AIMoney.text=" : "&NumberFormat(Starter.UserName_2_Money,0,3)
	
	
End Sub

Public Sub Label_Player2_FinishGame_Home_Click
	Starter.F_Sound.MP_EF("",False)
	Starter.GotoTAB=1
	Starter.GotoSubTAB=2
	SaveGame_Player2
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub
Public Sub Label_Player2_FinishGame_Change_Click
	SaveGame_Player2
	StartActivity(Activity_Player2_AISearch)
	Activity.Finish
End Sub

Sub IQ_Level_Player2_FinishGame''Chr(42)
	If Starter.UserName_2_IQ= 2 Then
		Starter.F_Sound.MP_EF("star1-reward.wav",False)
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
		Label_Player2_FinishGame_IQ.Text=Starter.UserName_2_IQ_Text
	Else If Starter.UserName_2_IQ= 2 Then
		Starter.F_Sound.MP_EF("star2-reward.wav",False)
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
		Label_Player2_FinishGame_IQ.Text=Starter.UserName_2_IQ_Text
	Else If Starter.UserName_2_IQ = 1 Then
		Starter.F_Sound.MP_EF("star3-reward.wav",False)
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR
		Label_Player2_FinishGame_IQ.Text=Starter.UserName_2_IQ_Text
	End If
End Sub

Sub SaveGame_Player2
	If Starter.GameStatus="player2youwin" Then
		Starter.ListSaveGame_Player2_LINE_0.Add(Starter.UserName_2_Avatar)
		Starter.ListSaveGame_Player2_LINE_1.Add(Starter.L_Username_Challenger&Starter.UserName_2)
		Starter.ListSaveGame_Player2_LINE_2.Add(Starter.L_Label_FinishGame_Information_1&Chr(10)&Starter.L_Label_Level_IQ_Text_AI&" : "&Starter.UserName_1_IQ&Starter.L_IQ_Started&Chr(10)&Starter.L_Price&" : "&NumberFormat(Starter.UserName_2_PriceRisk,0,3)&Chr(10)&Starter.L_Risk&" : "&Starter.UserName_2_Risk&" %"&Chr(10)&Starter.L_Label_ResponsiveSpeed&" : "&Starter.Spinner_ResponsiveSpeed_text)
	Else
		Starter.ListSaveGame_Player2_LINE_0.Add(Starter.UserName_2_Avatar)
		Starter.ListSaveGame_Player2_LINE_1.Add(Starter.L_Username_Challenger&Starter.UserName_2)
		Starter.ListSaveGame_Player2_LINE_2.Add(Starter.L_Label_FinishGame_Information_2&Chr(10)&Starter.L_Label_Level_IQ_Text_AI&" : "&Starter.UserName_1_IQ&Starter.L_IQ_Started&Chr(10)&Starter.L_Price&" : "&NumberFormat(Starter.UserName_2_PriceRisk,0,3)&Chr(10)&Starter.L_Risk&" : "&Starter.UserName_2_Risk&" %"&Chr(10)&Starter.L_Label_ResponsiveSpeed&" : "&Starter.Spinner_ResponsiveSpeed_text)
	End If
End Sub

#Region MyBanner ADS
'نمایش تبلیغ بنری
Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Panel_Player2_FinishGame.AddView(Banner, 9.5%x,72.5%y, 100%x, 20%y)
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

#Region InterstitialPlacement ADS
'نمایش تبلیغ میان‌صفحه‌ای
Sub Show_Interstitial_ADS
	If Adivery.IsLoaded(Starter.F_ADS.key_InterstitialPlacement) Then
		Adivery.Show(Starter.F_ADS.key_InterstitialPlacement)
	End If
End Sub

Sub On_Interstitial_Ad_Loaded(placement As String)
	Log("Interstitial loaded")
End Sub

Sub On_Interstitial_Ad_Clicked(placement As String)
	Log("Interstitial clicked")
End Sub

Sub On_Error(placementId As String, error As String)
	Log("Error > key_InterstitialPlacement : "&error)
End Sub

Sub On_Interstitial_Ad_Closed(placement As String)
	Log("Interstitial closed")
End Sub

Sub On_Interstitial_Ad_Shown(placement As String)
	Log("Interstitial shown")
End Sub
#End Region