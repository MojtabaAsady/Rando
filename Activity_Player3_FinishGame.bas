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
	
	Public Panel_Player3_AIChallenge As Panel
	Public ListView_Level_3 As ListView
	Public Label_Player3_AIChallenge_Information As Label
	Public Label_Player3_AIChallenge_Text As Label
	Public Label_Player3_AIChallenge_FinishGame_Home As Label
	Public Label_Player3_AIChallenge_FinishGame_Change As Label
	Public Label_Player3_AIChallenge_FinishGame_Home_Text As Label
	Public Label_Player3_AIChallenge_FinishGame_Change_Text As Label

End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_Player3_FinishGame")
	LanguageSet
	ListView_Level_3.Initialize("ListView_Level_2")

	
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
		Starter.Label_Player3_Challenge_Risk_text=Starter.L_Challenge_Risk&" : %"&Starter.UserName_3_ChallengeRisk&Chr(10)&Starter.L_Challenge_PriceRisk&" : "&NumberFormat(Starter.UserName_3_ChallengeTime,0,3)&Chr(10)&Starter.L_ChallengeSpeed&((Starter.UserName_3_ChallengeSpeed)/10)&Chr(10)&Starter.L_ChallengeSpeed_Sec&Chr(10)&Chr(10)&Starter.L_Confirmed_Reward_Deposited_Into_Wallet
	

	Dim Typing As String
	For i = 0 To Starter.Label_Player3_Challenge_Risk_text.Length-1
		Sleep(10)
		Typing=Typing&Starter.Label_Player3_Challenge_Risk_text.CharAt(i)
		Label_Player3_AIChallenge_Text.text=Typing
	Next
	
	If Starter.GameStatus="player3youwin" Then
		Label_Player3_AIChallenge_Information.TextColor=Colors.Green
		Label_Player3_AIChallenge_Information.Text = Starter.L_Label_FinishGame_Information_1
		Starter.UserName_1_Money=Starter.UserName_1_Money+(Starter.UserName_3_ChallengeTime*2)
	Else If Starter.GameStatus="player3gameover" Then
		Label_Player3_AIChallenge_Information.TextColor=Colors.Red
		Label_Player3_AIChallenge_Information.Text = Starter.L_Label_FinishGame_Information_2
	End If


	Label_Player3_AIChallenge_FinishGame_Home_Text.Text=Starter.L_Label_Home_Text
	Label_Player3_AIChallenge_FinishGame_Change_Text.Text = Starter.L_Label_Player2_AISearch_ChangeAI_Text

End Sub

Private Sub Label_Player3_AIChallenge_FinishGame_Change_Click
	StartActivity(Activity_Player3_AIChallengeSearch)
	SaveGame_Player3
	Activity.Finish
End Sub
Private Sub Label_Player3_AIChallenge_FinishGame_Home_Click
	Starter.F_Sound.MP_EF("",False)
	Starter.GotoTAB=1
	Starter.GotoSubTAB=3
	SaveGame_Player3
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub

Sub SaveGame_Player3
	If Starter.GameStatus="player3youwin" Then
		Starter.ListSaveGame_Player3_LINE_0.Add(Starter.UserName_3_Avatar)
		Starter.ListSaveGame_Player3_LINE_1.Add(Starter.L_Username_Challenger&Starter.UserName_3)
		Starter.ListSaveGame_Player3_LINE_2.Add(Starter.L_Label_FinishGame_Information_1&Chr(10)&Starter.L_Price&" : "&NumberFormat(Starter.UserName_3_ChallengeTime,0,3)&Chr(10)&Starter.L_Risk&" : "&Starter.UserName_3_ChallengeRisk&" %"&Chr(10)&Starter.L_Label_ResponsiveSpeed&" : "&Starter.Spinner_ResponsiveSpeed_text&Chr(10)&Starter.L_ChallengeSpeed_Elapsed&" : "&Starter.Game_Player3_Playing&Starter.L_ChallengeSpeed_Sec)
	Else
		Starter.ListSaveGame_Player3_LINE_0.Add(Starter.UserName_3_Avatar)
		Starter.ListSaveGame_Player3_LINE_1.Add(Starter.L_Username_Challenger&Starter.UserName_3)
		Starter.ListSaveGame_Player3_LINE_2.Add(Starter.L_Label_FinishGame_Information_2&Chr(10)&Starter.L_Price&" : "&NumberFormat(Starter.UserName_3_ChallengeTime,0,3)&Chr(10)&Starter.L_Risk&" : "&Starter.UserName_3_ChallengeRisk&" %"&Chr(10)&Starter.L_Label_ResponsiveSpeed&" : "&Starter.Spinner_ResponsiveSpeed_text&Chr(10)&Starter.L_ChallengeSpeed_Elapsed&" : "&Starter.Game_Player3_Playing&Starter.L_ChallengeSpeed_Sec)
		
		Show_Interstitial_ADS
	End If
End Sub

#Region MyBanner_Ad

Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Panel_Player3_AIChallenge.AddView(Banner, 10%x,44.5%y, 100%x, 20%y)
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