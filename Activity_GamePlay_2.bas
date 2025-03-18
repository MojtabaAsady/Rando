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

	Public ImageView_Player1_Avatar As ImageView
	Public ImageView_Player2_Avatar As ImageView
	Public Label_2Player_Level As Label
	Public Label_2Player_Star As Label
	Public Panel_2Player_Player_1_Color As Panel
	Public Label_2Player_Player_1_UserName As Label
	Public Panel_2Player_Player_2_Color As Panel
	Public Label_2Player_Player_2_UserName As Label
	Public Panel_2Player_Bottom As Panel
	Public Label_2Player_Tool_1 As Label
	Public Label_2Player_Tool_2 As Label
	Public Label_2Player_Tool_3 As Label
	Public Label_2Player_Home As Label
	Public Label_2Player_Tool_1_Text As Label
	Public Label_2Player_Tool_2_Text As Label
	Public Label_2Player_Tool_3_Text As Label
	Public Label_2Player_Home_Text As Label
	Public Label_2Player_Player_1_Quin As Label
	Public Label_2Player_Player_2_Quin As Label
	Public Panel_Answer_1 As Panel
	Public Label_Player_2_Answer_1 As Label
	Public Panel_Icon_Answer_1 As Panel
	Public Label_Player_2_Icon_Answer_1 As Label
	Public Panel_Answer_2 As Panel
	Public Label_Player_2_Answer_2 As Label
	Public Panel_Icon_Answer_2 As Panel
	Public Label_Player_2_Icon_Answer_2 As Label
	Public Label_Player_2_Answer_3 As Label
	Public Panel_Icon_Answer_3 As Panel
	Public Label_Player_2_Icon_Answer_3 As Label
	Public Label_Player_2_Answer_4 As Label
	Public Panel_Icon_Answer_4 As Panel
	Public Label_Player_2_Icon_Answer_4 As Label
	Public Panel_Question As Panel
	Public Label_Player_2_Question As Label
	Public Panel_Icon_Question As Panel
	Public Label_Icon_Question As Label
	Public Label_2Player_Player_2_Risk As Label
	Public Panel_Answer_4 As Panel
	Public Panel_Answer_3 As Panel
	Public Panel_2Player_Background As Panel

End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
	Starter.F_MakeQuestion.Make_Question
	MakeQuestion_Player2

End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_GamePlay_2")
	LanguageSet
	Starter.F_MakeQuestion.Make_Question
	MakeQuestion_Player2
	Gamer_2_Play
	ImageView_Player1_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_1_Avatar )
	ImageView_Player2_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_2_Avatar )
	
	'نمایش آگهی بنر
	Start_ADS_Banner
	
End Sub

Sub LanguageSet
	' ایجاد یک GradientDrawable
	Dim Gradient As GradientDrawable
	Dim colorArray(2) As Int ' تعریف یک آرایه برای نگهداری رنگ‌ها
	colorArray(0) = Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B) ' رنگ شروع
	colorArray(1) = Colors.RGB(Starter.UserName_2_Color_R,Starter.UserName_2_Color_G,Starter.UserName_2_Color_B) ' رنگ پایان
	Gradient.Initialize("LEFT_RIGHT", colorArray) ' گرادیان از بالا به پایین
	' تنظیم گرادیان به عنوان پس‌زمینه اکتیویتی
	Activity.Background = Gradient
	
	
	Label_2Player_Level.text=Starter.UserName_2_Level
	IQ_Level_Player2
	Panel_2Player_Player_1_Color.Color=Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	Label_2Player_Player_1_UserName.text=" : "&Starter.UserName_1
	Label_2Player_Player_1_Quin.Text=" : "&NumberFormat(Starter.UserName_1_Money,0,3)
	
	Panel_2Player_Player_2_Color.Color=Colors.RGB(Starter.UserName_2_Color_R,Starter.UserName_2_Color_G,Starter.UserName_2_Color_B)
	Label_2Player_Player_2_UserName.text=Starter.UserName_2&" : "
	Label_2Player_Player_2_Quin.Text=NumberFormat(Starter.UserName_2_Money,0,3)&" : "
	
	Label_2Player_Player_2_Risk.Text=Starter.L_Risk&" : "&" % "&Starter.UserName_2_Risk&Chr(9)&Starter.L_PriceRisk&" : "&NumberFormat(Starter.UserName_2_PriceRisk,0,3)
	
	Label_2Player_Tool_1_Text.Text=Starter.UserName_1_Data_Tool_1
	Label_2Player_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
	Label_2Player_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
	Label_2Player_Home_Text.Text=Starter.L_Label_Home_Text

End Sub

Public Sub Label_Player_2_Icon_Answer_1_Click
	Label_Player_2_Answer_1_Click
End Sub
Public Sub Label_Player_2_Icon_Answer_2_Click
	Label_Player_2_Answer_2_Click
End Sub
Public Sub Label_Player_2_Icon_Answer_3_Click
	Label_Player_2_Answer_3_Click
End Sub
Public Sub Label_Player_2_Icon_Answer_4_Click
	Label_Player_2_Answer_4_Click
End Sub

Public Sub Label_2Player_Tool_1_Text_Click
	Label_2Player_Tool_1_Click
End Sub
Public Sub Label_2Player_Tool_2_Text_Click
	Label_2Player_Tool_2_Click
End Sub
Public Sub Label_2Player_Tool_3_Text_Click
	Label_2Player_Tool_1_Click
End Sub
Public Sub Label_2Player_Home_Text_Click
	Label_2Player_Home_Click
End Sub

'***

Public Sub Label_Player_2_Answer_1_Click
	If Label_Player_2_Answer_1.text=Starter.Question Then
		Starter.F_Sound.MP_EF("true.wav",False)
		Starter.GameStatus="player2youwin"
		Player_2_GameOver
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		Starter.GameStatus="player2gameover"
		Player_2_GameOver
	End If
End Sub
Public Sub Label_Player_2_Answer_2_Click
	If Label_Player_2_Answer_2.text=Starter.Question Then
		Starter.F_Sound.MP_EF("true.wav",False)
		Starter.GameStatus="player2youwin"
		Player_2_GameOver
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		Starter.GameStatus="player2gameover"
		Player_2_GameOver
	End If
End Sub
Public Sub Label_Player_2_Answer_3_Click
	If Label_Player_2_Answer_3.text=Starter.Question Then
		Starter.F_Sound.MP_EF("true.wav",False)
		Starter.GameStatus="player2youwin"
		Player_2_GameOver
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		Starter.GameStatus="player2gameover"
		Player_2_GameOver
	End If
End Sub
Public Sub Label_Player_2_Answer_4_Click
	If Label_Player_2_Answer_4.text=Starter.Question Then
		Starter.F_Sound.MP_EF("true.wav",False)
		Starter.GameStatus="player2youwin"
		Player_2_GameOver
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		Starter.GameStatus="player2gameover"
		Player_2_GameOver
	End If
End Sub

Public Sub Label_2Player_Tool_1_Click
	If Starter.UserName_1_Data_Tool_1 > 0 Then
		Label_2Player_Tool_1_Text.Text=Starter.UserName_1_Data_Tool_1
		If Starter.UserName_1_Data_Tool_1 = 1 Or Starter.UserName_1_Data_Tool_1 < 1 Then
			Starter.F_Sound.MP_EF("product_1-2.wav",False)
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Starter.F_Sound.MP_EF("product_1-1.wav",False)
			Starter.SpeedAnswerPlayer2=Starter.SpeedAnswerPlayer2+(Starter.UserName_1_Speed*25)
			Log("time"&Starter.SpeedAnswerPlayer2)
			Starter.UserName_1_Data_Tool_1=Starter.UserName_1_Data_Tool_1-1
			Label_2Player_Tool_1_Text.Text=Starter.UserName_1_Data_Tool_1
			Label_2Player_Tool_1_Text.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Label_2Player_Tool_1.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Panel_Answer_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Answer_4.Color=Colors.RGB(255,255,255)
			Panel_Answer_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(200)
			Panel_Answer_3.Color=Colors.RGB(255,255,255)
			Panel_Answer_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(300)
			Panel_Answer_2.Color=Colors.RGB(255,255,255)
			Panel_Answer_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(400)
			Panel_Answer_1.Color=Colors.RGB(255,255,255)
			Panel_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(500)
			Panel_Question.Color=Colors.RGB(255,255,255)
			Sleep(100)
			For i=1 To 10
				Label_2Player_Tool_1_Text.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Label_2Player_Tool_1.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Sleep(10)
				Label_2Player_Tool_1_Text.TextColor=Colors.RGB(75,0,130)
				Label_2Player_Tool_1.TextColor=Colors.RGB(75,0,130)
				Label_2Player_Tool_1_Text.TextColor=Colors.RGB(75,0,130)
				Label_2Player_Tool_1.TextColor=Colors.RGB(75,0,130)
			Next
		End If
	End If
End Sub
Public Sub Label_2Player_Tool_2_Click
	If Starter.UserName_1_Data_Tool_2 >0 Then
		Label_2Player_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
		If Starter.UserName_1_Data_Tool_2 = 1 Or Starter.UserName_1_Data_Tool_2 < 1 Then
			Starter.F_Sound.MP_EF("product_2-2",False)
			Label_2Player_Tool_2.Text=""
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Label_2Player_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
			Starter.UserName_1_Data_Tool_2=Starter.UserName_1_Data_Tool_2-1
			Sleep(100)
			Panel_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Answer_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Answer_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Answer_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Answer_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Question.Color=Colors.RGB(255,255,255)
			Panel_Answer_1.Color=Colors.RGB(255,255,255)
			Panel_Answer_2.Color=Colors.RGB(255,255,255)
			Panel_Answer_3.Color=Colors.RGB(255,255,255)
			Panel_Answer_4.Color=Colors.RGB(255,255,255)
			Sleep(100)
			If Label_Player_2_Answer_1.text=Starter.Question Then
				Panel_Answer_1.Color=Colors.RGB(255,255,255)
				Sleep(10)
				Panel_Answer_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_2_Answer_2.text=Starter.Question Then
				Panel_Answer_2.Color=Colors.RGB(255,255,255)
				Sleep(10)
				Panel_Answer_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_2_Answer_3.text=Starter.Question Then
				Panel_Answer_3.Color=Colors.RGB(255,255,255)
				Sleep(10)
				Panel_Answer_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_2_Answer_4.text=Starter.Question Then
				Panel_Answer_4.Color=Colors.RGB(255,255,255)
				Sleep(10)
				Panel_Answer_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			End If
			Label_2Player_Tool_2_Text.TextColor=Colors.RGB(75,0,130)
			Label_2Player_Tool_2.TextColor=Colors.RGB(75,0,130)
			Label_2Player_Tool_2.Text=""
		End If
	End If
	
	

	
End Sub
Public Sub Label_2Player_Tool_3_Click
	If Starter.UserName_1_Data_Tool_3 >0 Then
		Label_2Player_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
		If Starter.UserName_1_Data_Tool_3 = 1 Or Starter.UserName_1_Data_Tool_3 < 1 Then
			Starter.F_Sound.MP_EF("product_3-2.wav",False)
			Label_2Player_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Starter.F_Sound.MP_EF("product_3-3.wav",False)
			Starter.UserName_1_Data_Tool_3=Starter.UserName_1_Data_Tool_3-1
			Label_2Player_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
			Label_2Player_Tool_3_Text.TextColor=Colors.RGB(75,0,130)
			Label_2Player_Tool_3.TextColor=Colors.RGB(75,0,130)
			Panel_Question.Color=Colors.RGB(255,255,255)
			Panel_Answer_1.Color=Colors.RGB(255,255,255)
			Panel_Answer_2.Color=Colors.RGB(255,255,255)
			Panel_Answer_3.Color=Colors.RGB(255,255,255)
			Panel_Answer_4.Color=Colors.RGB(255,255,255)
			For i=1 To 12
				Panel_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Sleep(100)
				Panel_Question.Color=Colors.RGB(255,255,255)
			Next
			MakeQuestion_Player2
		End If
	End If
End Sub
Public Sub Label_2Player_Home_Click
	Starter.F_Sound.MP_EF("return.wav",False)
	Starter.GotoTAB=1
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub

Sub MakeQuestion_Player2
	
	Starter.F_MakeQuestion.Make_Question
	Label_Player_2_Question.Text=Starter.Question_Text
	'***
	Label_Player_2_Answer_1.Text=Starter.Answer_1
	Label_Player_2_Answer_2.Text=Starter.Answer_2
	Label_Player_2_Answer_3.Text=Starter.Answer_3
	Label_Player_2_Answer_4.Text=Starter.Answer_4
	
End Sub

Sub Gamer_2_Play
Dim TimerPlayer2 As Int
	TimerPlayer2=Rnd(Starter.SpeedAnswerPlayer2+(1000/Starter.UserName_2_IQ),Starter.SpeedAnswerPlayer2+(10000/Starter.UserName_2_IQ))
	Sleep(TimerPlayer2)
	Sleep(Starter.SpeedAnswerPlayer2)
	If Label_Player_2_Answer_1.text=Starter.Question Then
		Label_Player_2_Icon_Answer_1.Enabled=False
		Label_Player_2_Answer_1.Enabled=False
		Panel_Answer_1.Color=Colors.RGB(255,255,255)
		Sleep(1500)
		Panel_Answer_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Else If Label_Player_2_Answer_2.text=Starter.Question Then
		Label_Player_2_Icon_Answer_2.Enabled=False
		Label_Player_2_Answer_2.Enabled=False
		Panel_Answer_2.Color=Colors.RGB(255,255,255)
		Sleep(1500)
		Panel_Answer_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Else If Label_Player_2_Answer_3.text=Starter.Question Then
		Label_Player_2_Icon_Answer_3.Enabled=False
		Label_Player_2_Answer_3.Enabled=False
		Panel_Answer_3.Color=Colors.RGB(255,255,255)
		Sleep(1500)
		Panel_Answer_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Else If Label_Player_2_Answer_4.text=Starter.Question Then
		Label_Player_2_Icon_Answer_4.Enabled=False
		Label_Player_2_Answer_4.Enabled=False
		Panel_Answer_4.Color=Colors.RGB(255,255,255)
		Sleep(1500)
		Panel_Answer_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	End If
	
	Starter.GameStatus="player2gameover"
	Player_2_GameOver

End Sub

Public Sub Player_2_GameOver
	StartActivity(Activity_Player2_FinishGame)
	Activity.Finish
End Sub

Sub IQ_Level_Player2
	If Starter.UserName_2_IQ= 3 Then
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
		Label_2Player_Star.Text=Starter.UserName_2_IQ_Text
	Else If Starter.UserName_2_IQ= 2 Then
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
		Label_2Player_Star.Text=Starter.UserName_2_IQ_Text
	Else If Starter.UserName_2_IQ = 1 Then
		Starter.UserName_2_IQ_Text=Starter.iQ_CHAR_STAR
		Label_2Player_Star.Text=Starter.UserName_2_IQ_Text
	End If
End Sub

#Region MyBanner ADS
'نمایش تبلیغ بنری
Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Panel_2Player_Background.AddView(Banner, 9%x,76.5%y, 100%x, 20%y)
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