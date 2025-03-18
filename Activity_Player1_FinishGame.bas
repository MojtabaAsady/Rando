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

	Public ListView_Level_1 As ListView
	Public Label_Player_1_Question As Label
	Public Panel_Player1_Mster_FinishGame As Panel
	Public Panel_Player1_FinishGame_InfoTools As Panel
	Public Label_Player1_FinishGame_Money As Label
	Public Label_Player1_FinishGame_Level As Label
	Public Label_Player1_FinishGame_Information As Label
	Public Label_Player1_FinishGame_IQ As Label
	Public Panel_Player1_FinishGame_Question As Panel
	Public Label_Player2_FinishGame_Question_Name As Label
	Public Label_Player2_FinishGame_Question_icon As Label
	Public Label_Player2_FinishGame_Answer_icon As Label
	Public Label_Player2_FinishGame_Answer_Name As Label
	Public Panel_Player1_FinishGame_Bottom_Menu As Panel
	Public Label_Player1_FinishGame_Home As Label
	Public Label_Player1_FinishGame_Home_Text As Label
	Public Label_Player1_FinishGame_RepetLevel As Label
	Public Label_Player1_FinishGame_RepetLevel_Text As Label
	Public Label_Player1_FinishGame_NextLevel As Label
	Public Label_Player1_FinishGame_NextLevel_Text As Label
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_Player1_FinishGame")
	ListView_Level_1.Initialize("ListView_Level_1")
	
	'نمایش آگهی میان صفحه ای
	Adivery.PrepareInterstitialAd(Starter.F_ADS.key_InterstitialPlacement)
	'نمایش آگهی بنر
	Start_ADS_Banner
	
	Label_Player_1_Question.Initialize("Label_Player_1_Question")
	LanguageSet
	If Starter.GameStatus="player1youwin" Then
		Label_Player1_FinishGame_NextLevel.Enabled=True
		Label_Player1_FinishGame_NextLevel_Text.Enabled=True
	Else
		Label_Player1_FinishGame_NextLevel.Enabled=False
		Label_Player1_FinishGame_NextLevel_Text.Enabled=False
		Show_Interstitial_ADS
	End If
	SaveGame_Player1
End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub LanguageSet
	IQ_Level_Player1_FinishGame
	If Starter.GameStatus="player1youwin" Then
		Label_Player1_FinishGame_Information.TextColor=Colors.Green
		Label_Player1_FinishGame_Information.Text = Starter.L_Label_FinishGame_Information_1
		Label_Player1_FinishGame_NextLevel.TextColor=Colors.Blue
		Label_Player1_FinishGame_NextLevel_Text.TextColor=Colors.Blue
			Else If Starter.GameStatus="player1gameover" Then
		Label_Player1_FinishGame_Information.TextColor=Colors.Red
		Label_Player1_FinishGame_Information.Text = Starter.L_Label_FinishGame_Information_2
		Label_Player1_FinishGame_NextLevel.TextColor=Colors.Gray
		Label_Player1_FinishGame_NextLevel_Text.TextColor=Colors.Gray
	End If
	Label_Player2_FinishGame_Question_Name.text=Starter.Question_Text
	Label_Player2_FinishGame_Answer_Name.Text=Starter.Question
	Label_Player1_FinishGame_Level.Text=Starter.L_Label_User_Level&" : "&Starter.UserName_1_Level
	Label_Player1_FinishGame_Money.Text=Starter.L_Label_User1_Money&" : "&NumberFormat(Starter.UserName_1_Money,0,3)
	Label_Player1_FinishGame_Home_Text.Text=Starter.L_Label_Home_Text
	Label_Player1_FinishGame_RepetLevel_Text.Text = Starter.L_Label_FinishGame_RepetLevel_Text
	Label_Player1_FinishGame_NextLevel_Text.Text = Starter.L_Label_FinishGame_NextLevel_Text
	
End Sub

Public Sub Label_Player1_FinishGame_Home_Click
	Starter.F_Sound.MP_EF("",False)
	If Starter.GameStatus="player1youwin" Then
		NextLevel
	End If
	Starter.GotoTAB=1
	Starter.GotoSubTAB=1
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub
Public Sub Label_Player1_FinishGame_RepetLevel_Click
	Starter.F_Sound.MP_EF("return.wav",False)
	StartActivity(Activity_GamePlay_1)
	Activity.Finish
End Sub
Public Sub Label_Player1_FinishGame_NextLevel_Click
	If Starter.GameStatus="player1youwin" Then
		NextLevel
	End If
	StartActivity(Activity_GamePlay_1)
	Activity.Finish
End Sub

Sub NextLevel
	
	Starter.F_Sound.MP_EF("nextlevel.wav",False)
	SaveGame_Player1
	IQ_Level_Player1_FinishGame
	Starter.UserName_1_Level=Starter.UserName_1_Level+1
	Starter.UserName_1_Money=Starter.UserName_1_Money+1
	Starter.UserName_1_IQ_Calc=Starter.UserName_1_IQ_Calc+Starter.UserName_1_IQ
	Starter.Iq_Iq=Starter.UserName_1_IQ_Calc
	Starter.Iq_Level=Starter.UserName_1_Level-1
	Starter.Iq_Iq_Level=Starter.Iq_Iq/Starter.Iq_Level
	Log("> Iq_Iq <  "&Starter.Iq_Iq)
	Log("> Iq_Level <  "&Starter.Iq_Level)
	Log("> Iq_Iq_Level <  "&Starter.Iq_Iq_Level)
	
End Sub

Sub IQ_Level_Player1_FinishGame''Chr(42)
	If Starter.UserName_1_IQ =1 Then
		Starter.F_Sound.MP_EF("star1-reward.wav",False)
		Label_Player1_FinishGame_IQ.Text=Starter.UserName_1_IQ_Text
	else if Starter.UserName_1_IQ =2 Then
		Starter.F_Sound.MP_EF("star2-reward.wav",False)
		Label_Player1_FinishGame_IQ.Text=Starter.UserName_1_IQ_Text
	else if Starter.UserName_1_IQ =3 Then
		Starter.F_Sound.MP_EF("star3-reward.wav",False)
		Label_Player1_FinishGame_IQ.Text=Starter.UserName_1_IQ_Text
	End If
End Sub

Sub SaveGame_Player1
	If Starter.GameStatus="player1youwin" Then
		Starter.ListSaveGame_Player1_LINE_0.Add(Starter.UserName_1_Avatar)
		Starter.ListSaveGame_Player1_LINE_1.Add(Starter.L_Label_User_Level&" : "&Starter.UserName_1_Level)
		Starter.ListSaveGame_Player1_LINE_2.Add(Starter.L_Label_FinishGame_Information_1&Chr(10)&Starter.L_Label_Level_IQ_Text&" : "&Starter.UserName_1_IQ&Starter.L_IQ_Started&Chr(10)&Starter.L_Label_ResponsiveSpeed&" : "&Starter.Spinner_ResponsiveSpeed_text&Chr(10)&Starter.L_ChallengeSpeed_Elapsed&" : "&Starter.Game_Player1_Playing_time&Starter.L_ChallengeSpeed_Sec)
	Else
		Starter.ListSaveGame_Player1_LINE_0.Add(Starter.UserName_1_Avatar)
		Starter.ListSaveGame_Player1_LINE_1.Add(Starter.L_Label_User_Level&" : "&Starter.UserName_1_Level)
		Starter.ListSaveGame_Player1_LINE_2.Add(Starter.L_Label_FinishGame_Information_2&Chr(10)&Starter.L_Label_Level_IQ_Text&" : "&Starter.UserName_1_IQ&Starter.L_IQ_Started&Chr(10)&Starter.L_Label_ResponsiveSpeed&" : "&Starter.Spinner_ResponsiveSpeed_text&Chr(10)&Starter.L_ChallengeSpeed_Elapsed&" : "&Starter.Game_Player1_Playing_time&Starter.L_ChallengeSpeed_Sec)
	End If
End Sub


#Region MyBanner ADS
'نمایش تبلیغ بنری
Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Panel_Player1_Mster_FinishGame.AddView(Banner, 9%x,49%y, 100%x, 20%y)
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
sub Show_Interstitial_ADS
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