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
	'متغییر نمایش تبلیغ بنری
	Public Banner As AdiveryBannerAd
	
	Public Panel_Player3_AIChallengeSearch As Panel
	Public Label_Player3_AIChallengeSearch_Title As Label
	Public Label_Player3_AIChallengeSearch_Icon As Label
	Public ImageView_Player3_AIChallengeSearch_Avatar As ImageView
	Public Label_Player3_AIChallengeSearch_Name As Label
	Public Label_Player3_AIChallengeSearch_Risk As Label
	Public Label_Player3_AIChallengeSearch_MyMoney As Label
	Public Label_Player3_AIChallengeSearch_Home As Label
	Public Label_Player3_AIChallengeSearch As Label
	Public Label_Player3_AIChallengeSearch_PlayGame As Label
	Public Label_Player3_AIChallengeSearch_Home_Text As Label
	Public Label_Player3_AIChallengeSearch_Text As Label
	Public Label_Player3_AIChallengeSearch_PlayGame_Text As Label

End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_Player3_AIChallengeSearch")
	LanguageSet
	ChangeChallenge
	
	'نمایش آگهی بنر
	Start_ADS_Banner
End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Private Sub Label_Player3_AIChallengeSearch_Home_Click
	Starter.F_Sound.MP_EF("",False)
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub
Private Sub Label_Player3_AIChallengeSearch_Click
	ChangeChallenge
End Sub
Private Sub Label_Player3_AIChallengeSearch_PlayGame_Click
	Starter.F_Sound.MP_EF("AISearch_PlayGame.ogg",False)
	Label_Player3_AIChallengeSearch_PlayGame.Enabled=False
	PlayGame_3
End Sub

Public Sub LanguageSet
	Label_Player3_AIChallengeSearch_Title.text=Starter.L_Label_Player3_ChallengeSearch_Title
	Label_Player3_AIChallengeSearch_Icon.Color=Colors.RGB(Starter.UserName_2_Color_R,Starter.UserName_2_Color_G,Starter.UserName_2_Color_B)
	Label_Player3_AIChallengeSearch_Name.text=Starter.UserName_3
	Label_Player3_AIChallengeSearch_MyMoney.text=" "&Starter.L_Label_User1_Money&" : "&NumberFormat(Starter.UserName_1_Money,0,3)
	Label_Player3_AIChallengeSearch_Home_Text.text=Starter.L_Label_Home_Text
	Label_Player3_AIChallengeSearch_Text.text=Starter.L_Label_Player3_ChangeChallenge_Text
	Label_Player3_AIChallengeSearch_PlayGame_Text.text=Starter.L_Label_Player3_ChallengeSearch_PlayChallenge_Text
End Sub

Public Sub ChangeChallenge
	Starter.F_Sound.MP_EF("Search_AI_Start.ogg",False)
	If Starter.UserName_1_Money < 50 Then
		ToastMessageShow(Starter.L_ToastMessageShow_ChangeChallenge_Info_1,True)
		Starter.GotoTAB=4
		Label_Player3_AIChallengeSearch_Home_Click
	Else
'		ToastMessageShow(Starter.L_ToastMessageShow_ChangeChallenge_Info_2,True)
	End If
	Label_Player3_AIChallengeSearch_Home.Enabled=False
	Label_Player3_AIChallengeSearch.Enabled=False
	Label_Player3_AIChallengeSearch_PlayGame.Enabled=False
	
	For i=0 To 50
		If Starter.UserName_1_Money < 50  Then
			Exit
			ToastMessageShow(Starter.L_ToastMessageShow_ChangeChallenge_Info_1,True)
			Starter.GotoTAB=4
			Label_Player3_AIChallengeSearch_Home_Click
		End If
'		Starter.UserName_1_Money=Starter.UserName_1_Money-1
		Sleep(10)
		'---ChangeChallenge
		Starter.UserName_2_Color_R=Rnd(1,255)
		Starter.UserName_2_Color_G=Rnd(1,255)
		Starter.UserName_2_Color_B=Rnd(1,255)
		Starter.UserName_2_IQ =Rnd(1,5)
		Dim Player3_MenOrWomen_RND As Int
		Player3_MenOrWomen_RND=Rnd(1,32)
		Starter.UserName_3_Avatar="Avatar("&Player3_MenOrWomen_RND&").png"
		ImageView_Player3_AIChallengeSearch_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_3_Avatar )
		If Player3_MenOrWomen_RND < 18 Then
			Starter.UserName_3=Starter.UserName_List_Woman.Get(Rnd(0,3121))
		else if Player3_MenOrWomen_RND > 18 Then
			Starter.UserName_3=Starter.UserName_List_Man.Get(Rnd(0,1210))
		End If

		Label_Player3_AIChallengeSearch.TextColor=Colors.RGB(Starter.UserName_3_Color_R,Starter.UserName_3_Color_G,Starter.UserName_3_Color_B)
		Label_Player3_AIChallengeSearch_Text.TextColor=Colors.RGB(Starter.UserName_3_Color_R,Starter.UserName_3_Color_G,Starter.UserName_3_Color_B)
		Starter.UserName_3_ChallengeRisk=Rnd(1,30)
		
		Starter.UserName_3_ChallengeTime=(Starter.UserName_1_Money/100)*Starter.UserName_3_ChallengeRisk
			
		Starter.UserName_3_ChallengeSpeed=Rnd(50000,100000) / 60
		
		Label_Player3_AIChallengeSearch_Risk.Text=Starter.L_Challenge_Risk&" : %"&Starter.UserName_3_ChallengeRisk&Chr(10)&Starter.L_Challenge_PriceRisk&" : "&NumberFormat(Starter.UserName_3_ChallengeTime,0,3)&Chr(10)&Starter.L_ChallengeSpeed&((Starter.UserName_3_ChallengeSpeed)/10)&Starter.L_ChallengeSpeed_Sec&Chr(10)&Starter.L_ChallengeSearching

		LanguageSet
		'Starter.MediaPlayerMF.Load(File.DirAssets, "MusicMF_1.wav")
	Next
	
	Label_Player3_AIChallengeSearch.TextColor=Colors.RGB(75,0,130)
	Label_Player3_AIChallengeSearch_Text.TextColor=Colors.RGB(75,0,130)
	
	Label_Player3_AIChallengeSearch_Home.Enabled=True
	Label_Player3_AIChallengeSearch.Enabled=True
	Label_Player3_AIChallengeSearch_PlayGame.Enabled=True
	Label_Player3_AIChallengeSearch_Risk.Text=Starter.L_Challenge_Risk&" : %"&Starter.UserName_3_ChallengeRisk&Chr(10)&Starter.L_Challenge_PriceRisk&" : "&NumberFormat(Starter.UserName_3_ChallengeTime,0,3)&Chr(10)&Starter.L_ChallengeSpeed&((Starter.UserName_3_ChallengeSpeed)/10)&Starter.L_ChallengeSpeed_Sec&Chr(10)&Starter.L_Player3_ChallengeSearch_Confirm_Withdrawal_Amount
	Starter.F_Sound.MP_EF("Search_AI_End.ogg",False)
End Sub

Sub PlayGame_3
	Label_Player3_AIChallengeSearch_Home.Enabled=False
	Label_Player3_AIChallengeSearch.Enabled=False
	Label_Player3_AIChallengeSearch_PlayGame.Enabled=False
	Starter.UserName_1_Money=Starter.UserName_1_Money-Starter.UserName_3_ChallengeTime
	LanguageSet
	Starter.Label_Player3_Challenge_Risk_text=Starter.L_Challenge_Risk&" : %"&Starter.UserName_3_ChallengeRisk&Chr(10)&Starter.L_Challenge_PriceRisk&" : "&NumberFormat(Starter.UserName_3_ChallengeTime,0,3)&Chr(10)&Starter.L_ChallengeSpeed&((Starter.UserName_3_ChallengeSpeed)/10)&Starter.L_ChallengeSpeed_Sec&Chr(10)&Starter.L_Player3_ChallengeSearch_Confirmed_Withdrawal_Amount
	Dim Typing As String
	For i = 0 To Starter.Label_Player3_Challenge_Risk_text.Length-1
		Sleep(10)
		Typing=Typing&Starter.Label_Player3_Challenge_Risk_text.CharAt(i)
		Label_Player3_AIChallengeSearch_Risk.text=Typing
	Next
	Sleep(1500)
	Label_Player3_AIChallengeSearch_Home.Enabled=True
	Label_Player3_AIChallengeSearch.Enabled=True
	Label_Player3_AIChallengeSearch_PlayGame.Enabled=True
	StartActivity(Activity_GamePlay_3)
	Starter.F_Sound.MP_EF("StartGamePlay.wav",False)
	Activity.Finish
End Sub

#Region MyBanner ADS
'نمایش تبلیغ بنری
Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Panel_Player3_AIChallengeSearch.AddView(Banner, 9%x,67%y, 100%x, 20%y)

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