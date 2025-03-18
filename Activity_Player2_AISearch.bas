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
	
	Public Panel_Player2_AISearch_MyMoney As Panel
	Public Label_Player2_AISearch_Title As Label
	Public ImageView_Player2_AISearch_Avatar As ImageView
	Public Label_Player2_AISearch_IQ As Label
	Public Label_Player2_AISearch_Name As Label
	Public Label_Player2_AISearch_Level As Label
	Public Label_Player2_AISearch_Money As Label
	Public Label_Player2_AISearch_Risk As Label
	Public Label_Player2_AISearch_MyMoney As Label
	Public Label_Player2_AISearch_Home As Label
	Public Label_Player2_AISearch_ChangeAI As Label
	Public Label_Player2_AISearch_PlayGame As Label
	Public Label_Player2_AISearch_Home_Text As Label
	Public Label_Player2_AISearch_ChangeAI_Text As Label
	Public Label_Player2_AISearch_PlayGame_Text As Label

End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_Player2_AISearch")
	LanguageSet
	ChangeAI
	
		
	'نمایش آگهی بنر
	Start_ADS_Banner
End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Public Sub Label_Player2_AISearch_Home_Click
	Starter.F_Sound.MP_EF("",False)
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub
Public Sub Label_Player2_AISearch_ChangeAI_Click
	ChangeAI
End Sub
Public Sub Label_Player2_AISearch_PlayGame_Click
	Starter.F_Sound.MP_EF("AISearch_PlayGame.ogg",False)
	Label_Player2_AISearch_PlayGame.Enabled=False
    PlayGame_2
End Sub

Public Sub LanguageSet
	Label_Player2_AISearch_Title.text=Starter.L_Label_Player2_AISearch_Title
	IQ_Level_Player2_AISearch
	Label_Player2_AISearch_Name.text=Starter.UserName_2
	Label_Player2_AISearch_Level.text=Starter.L_Label_Player2_AISearch_Level&" : "&Starter.UserName_2_Level
	Label_Player2_AISearch_Money.text=Starter.L_Label_User2_Money&" : "&NumberFormat(Starter.UserName_2_Money,0,3)
	Label_Player2_AISearch_Risk.text=Starter.L_Risk&" = "&" % " & Starter.UserName_2_Risk&Chr(10)&Starter.L_PriceRisk&" = "& NumberFormat(Starter.UserName_2_PriceRisk,0,3)&Chr(10)&Starter.L_Confirm_Withdrawal_Amount
	Label_Player2_AISearch_MyMoney.text=Starter.L_Label_User1_Money&" : "&NumberFormat(Starter.UserName_1_Money,0,3)
	Label_Player2_AISearch_Home_Text.text=Starter.L_Label_Player2_AISearch_Home_Text
	Label_Player2_AISearch_ChangeAI_Text.text=Starter.L_Label_Player2_AISearch_ChangeAI_Text
	Label_Player2_AISearch_PlayGame_Text.text=Starter.L_Label_Player2_AISearch_PlayGame_Text
End Sub

Public Sub ChangeAI
	Starter.F_Sound.MP_EF("Search_AI_Start.ogg",False)
	If Starter.UserName_1_Money < 50 Or Starter.UserName_2_Money < 50  Then
		ToastMessageShow(Starter.L_ToastMessageShow_ChangeAI_Info_1,True)
		Starter.GotoTAB=4
		Label_Player2_AISearch_Home_Click
	Else
'		ToastMessageShow(Starter.L_ToastMessageShow_ChangeAI_Info_2,True)
			End If
	Label_Player2_AISearch_Home.Enabled=False
	Label_Player2_AISearch_ChangeAI.Enabled=False
	Label_Player2_AISearch_PlayGame.Enabled=False
	
	For i=0 To 50
'		Starter.UserName_1_Money=Starter.UserName_1_Money-1
		Sleep(10)		
		If Starter.UserName_1_Money < 50 Or Starter.UserName_2_Money < 50   Then
			ToastMessageShow(Starter.L_ToastMessageShow_ChangeChallenge_Info_1,True)
			Starter.GotoTAB=4
			Exit
			Label_Player2_AISearch_Home_Click
		End If

		'---ChangeAI
		Starter.UserName_2_Color_R=Rnd(1,255)
		Starter.UserName_2_Color_G=Rnd(1,255)
		Starter.UserName_2_Color_B=Rnd(1,255)
		Starter.UserName_2_IQ =Rnd(1,5)
		
		Dim Player2_MenOrWomen_RND As Int
		Player2_MenOrWomen_RND=Rnd(1,32)
		Starter.UserName_2_Avatar="Avatar("&Player2_MenOrWomen_RND&").png"
		ImageView_Player2_AISearch_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_2_Avatar )

		If Player2_MenOrWomen_RND < 18 Then
			Starter.UserName_2=Starter.UserName_List_Woman.Get(Rnd(0,3121))
		else if Player2_MenOrWomen_RND > 18 Then
			Starter.UserName_2=Starter.UserName_List_Man.Get(Rnd(0,1210))
		End If
'

		Label_Player2_AISearch_ChangeAI.TextColor=Colors.RGB(Starter.UserName_2_Color_R,Starter.UserName_2_Color_G,Starter.UserName_2_Color_B)
		Label_Player2_AISearch_ChangeAI_Text.TextColor=Colors.RGB(Starter.UserName_2_Color_R,Starter.UserName_2_Color_G,Starter.UserName_2_Color_B)
		
		Starter.UserName_2_Level=Rnd((Starter.UserName_1_Level),(Starter.UserName_1_Level+5))
		Starter.UserName_2_Money=Rnd(Starter.UserName_1_Money,(Starter.UserName_1_Money*2))
		
		Label_Player2_AISearch_MyMoney.Text=NumberFormat(Starter.UserName_1_Money,0,3)
		
		
		Starter.UserName_2_Risk=Rnd(1,15)
		Starter.UserName_2_PriceRisk=(Starter.UserName_2_Money/100)*Starter.UserName_2_Risk
		LanguageSet
		
		'Starter.MediaPlayerMF.Load(File.DirAssets, "MusicMF_1.wav")
	Next
	Label_Player2_AISearch_ChangeAI.TextColor=Colors.RGB(75,0,130)
	Label_Player2_AISearch_ChangeAI_Text.TextColor=Colors.RGB(75,0,130)
	
	Label_Player2_AISearch_Home.Enabled=True
	Label_Player2_AISearch_ChangeAI.Enabled=True
	Label_Player2_AISearch_PlayGame.Enabled=True
	Starter.F_Sound.MP_EF("Search_AI_End.ogg",False)
End Sub

Sub PlayGame_2
	
	Label_Player2_AISearch_Home.Enabled=False
	Label_Player2_AISearch_ChangeAI.Enabled=False
	Label_Player2_AISearch_PlayGame.Enabled=False
	
	Starter.UserName_1_Money=Starter.UserName_1_Money-Starter.UserName_2_PriceRisk
	Starter.UserName_2_Money=Starter.UserName_2_Money-Starter.UserName_2_PriceRisk
	LanguageSet
	Starter.Label_Player2_FinishGame_Risk_text=Starter.L_Risk&" = "&" % " & Starter.UserName_2_Risk&Chr(10)&Starter.L_PriceRisk&" = "& NumberFormat(Starter.UserName_2_PriceRisk,0,3)&Chr(10)&Starter.L_Confirmed_Withdrawal_Amount
	Dim Typing As String
	For i = 0 To Starter.Label_Player2_FinishGame_Risk_text.Length-1
		Sleep(10)
		Typing=Typing&Starter.Label_Player2_FinishGame_Risk_text.CharAt(i)
		Label_Player2_AISearch_Risk.text=Typing
	Next
	Sleep(2000)
	Label_Player2_AISearch_Home.Enabled=True
	Label_Player2_AISearch_ChangeAI.Enabled=True
	Label_Player2_AISearch_PlayGame.Enabled=True
	Starter.F_Sound.MP_EF("StartGamePlay.wav",False)
	StartActivity(Activity_GamePlay_2)
	Activity.Finish
End Sub

Sub IQ_Level_Player2_AISearch
	If Starter.UserName_2_IQ= 1 Then
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
		Label_Player2_AISearch_IQ.Text=Starter.UserName_2_IQ_Text
	Else If Starter.UserName_2_IQ= 2 Then
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
		Label_Player2_AISearch_IQ.Text=Starter.UserName_2_IQ_Text
	Else If Starter.UserName_2_IQ = 3 Then
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR
		Label_Player2_AISearch_IQ.Text=Starter.UserName_2_IQ_Text
	End If
End Sub

#Region MyBanner ADS
'نمایش تبلیغ بنری
Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Panel_Player2_AISearch_MyMoney.AddView(Banner, 5%x,22.5%y, 100%x, 20%y)
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