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
	
	Public Panel_3Player_Background As Panel
	Public Label_3Player_Risk As Label
	Public ImageView_Player3_1_Avatar As ImageView
	Public Label_3Player_Player_1_UserName As Label
	Public Label_3Player_Player_1_Money As Label
	Public ImageView_Player3_3_Avatar As ImageView
	Public Label_3Player_Player_2_UserName As Label
	Public Label_3Player_Player_2_Money As Label
	Public Label_3Player_ProgressBar_Timer As Label
	Public Panel_3Player_ProgressBar_Timer As Panel
	Public Label_3Player_ProgressBar_Challeng As Label
	Public Label_Player_3_Question As Label
	Public Label_Player_3_Answer_1 As Label
	Public Label_Player_3_Answer_2 As Label
	Public Label_Player_3_Answer_3 As Label
	Public Label_Player_3_Answer_4 As Label
	Public Label_3Player_Icon_Answer_1 As Label
	Public Label_3Player_Icon_Answer_2 As Label
	Public Label_3Player_Icon_Answer_3 As Label
	Public Label_3Player_Icon_Answer_4 As Label
	Public Label_3Player_Tool_1 As Label
	Public Label_3Player_Tool_2 As Label
	Public Label_3Player_Tool_3 As Label
	Public Label_3Player_Home As Label
	Public Label_3Player_Tool_1_Text As Label
	Public Label_3Player_Tool_2_Text As Label
	Public Label_3Player_Tool_3_Text As Label
	Public Label_3Player_Home_Text As Label
	Public Panel_3Player_Answer_1 As Panel
	Public Panel_3Player_Answer_2 As Panel
	Public Panel_3Player_Answer_3 As Panel
	Public Panel_3Player_Answer_4 As Panel
	Public Panel_3Player_Question As Panel
	Public ProgressBar_3Player_Timer As ProgressBar
	Public ProgressBar_3Player_Challeng As ProgressBar
	Public Panel_3Player_Player_2_Color As Panel
	Public Panel_3Player_Player_1_Color As Panel
	Public Label_3Player_Icon_Question As Label


End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
	LanguageSet
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_GamePlay_3")
	Starter.F_Master.Initialize
	
	Starter.Game_Player3_Playing=0
	ProgressBar_3Player_Timer.Progress=0
	Label_3Player_ProgressBar_Timer.Text=0	
	
	Starter.Timer_Player_3_Gameplay.Initialize("Game_3_Play",(Starter.UserName_3_ChallengeSpeed))
	Starter.Timer_Player_3_Gameplay.Enabled=True
	LanguageSet
	MakeQuestion_Player3

	ImageView_Player3_1_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_1_Avatar )
	ImageView_Player3_3_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_3_Avatar )
	
		
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
	
	Panel_3Player_Player_1_Color.Color=Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	Label_3Player_Player_1_UserName.text=" :"&Chr(9)&Starter.UserName_1
	Label_3Player_Player_1_Money.Text=" : "&NumberFormat(Starter.UserName_1_Money,0,3)
	
	Panel_3Player_Player_2_Color.Color=Colors.RGB(Starter.UserName_2_Color_R,Starter.UserName_2_Color_G,Starter.UserName_2_Color_B)
	Label_3Player_Player_2_UserName.text=Starter.UserName_3&Chr(9)&": "
	Label_3Player_Player_2_Money.Text=NumberFormat(Starter.UserName_2_Money,0,3)&" : "

	Label_3Player_Risk.Text=Starter.L_Challenge_Risk&" : %"&Starter.UserName_3_ChallengeRisk&Chr(10)&Starter.L_Challenge_PriceRisk&" : "&NumberFormat(Starter.UserName_3_ChallengeTime,0,3)


	Label_3Player_Tool_1_Text.Text=Starter.UserName_1_Data_Tool_1
	Label_3Player_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
	Label_3Player_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
	
	Label_3Player_Home_Text.Text=Starter.L_Label_Home_Text
	
End Sub

Public Sub Label_3Player_Tool_1_Text_Click
	Label_3Player_Tool_1_Click
End Sub
Public Sub Label_3Player_Tool_2_Text_Click
	Label_3Player_Tool_2_Click
End Sub
Public Sub Label_3Player_Tool_3_Text_Click
	Label_3Player_Tool_3_Click
End Sub
Public Sub Label_3Player_Home_Text_Click
	Label_3Player_Home_Click
End Sub

Public Sub Label_3Player_Icon_Answer_1_Click
	Label_Player_3_Answer_1_Click
End Sub
Public Sub Label_3Player_Icon_Answer_2_Click
	Label_Player_3_Answer_2_Click
End Sub
Public Sub Label_3Player_Icon_Answer_3_Click
	Label_Player_3_Answer_3_Click
End Sub
Public Sub Label_3Player_Icon_Answer_4_Click
	Label_Player_3_Answer_4_Click
End Sub
'***
Public Sub Label_3Player_Tool_1_Click
	If Starter.UserName_1_Data_Tool_1 > 0 Then
		Label_3Player_Tool_1_Text.Text=Starter.UserName_1_Data_Tool_1
		
		If Starter.UserName_1_Data_Tool_1 = 1 Or Starter.UserName_1_Data_Tool_1 < 1 Then
			Starter.F_Sound.MP_EF("product_1-2.wav",False)
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Starter.F_Sound.MP_EF("product_1-1.wav",False)
			Starter.Timer_Player_3_Gameplay.Enabled=False
			Starter.UserName_1_Data_Tool_1=Starter.UserName_1_Data_Tool_1-1
			Label_3Player_Tool_1_Text.Text=Starter.UserName_1_Data_Tool_1

			

			Label_3Player_Tool_1_Text.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Label_3Player_Tool_1.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			

			Panel_3Player_Answer_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_3Player_Answer_4.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(200)
			Panel_3Player_Answer_3.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(300)
			Panel_3Player_Answer_2.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(400)
			Panel_3Player_Answer_1.Color=Colors.RGB(255,255,255)
			Panel_3Player_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(500)
			Panel_3Player_Question.Color=Colors.RGB(255,255,255)
			Sleep(100)
			For i=1 To 10
				Label_3Player_Tool_1_Text.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Label_3Player_Tool_1.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Panel_3Player_ProgressBar_Timer.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Sleep(10)
				Label_3Player_Tool_1_Text.TextColor=Colors.RGB(75,0,130)
				Label_3Player_Tool_1.TextColor=Colors.RGB(75,0,130)
				Label_3Player_Tool_1_Text.TextColor=Colors.RGB(75,0,130)
				Label_3Player_Tool_1.TextColor=Colors.RGB(75,0,130)
				Panel_3Player_ProgressBar_Timer.Color=Colors.RGB(255,255,255)
			Next
			Starter.Timer_Player_3_Gameplay.Initialize("Game_3_Play",Starter.UserName_3_ChallengeSpeed *3)
			Starter.Timer_Player_3_Gameplay.Enabled=True
		End If
	End If
End Sub
Public Sub Label_3Player_Tool_2_Click
	If Starter.UserName_1_Data_Tool_2 >0 Then
		Label_3Player_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
		If Starter.UserName_1_Data_Tool_2 = 1 Or Starter.UserName_1_Data_Tool_2 < 1 Then
			Starter.F_Sound.MP_EF("product_2-2",False)
			Label_3Player_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
			Label_3Player_Tool_2.Text=""
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Starter.F_Sound.MP_EF("product_2-3.wav",False)
			Starter.Timer_Player_3_Gameplay.Enabled=False
			Starter.UserName_1_Data_Tool_2=Starter.UserName_1_Data_Tool_2-1
			Label_3Player_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
			Label_3Player_Tool_2_Text.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Label_3Player_Tool_2.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Label_3Player_Tool_2.Text=""
			Sleep(100)
			Panel_3Player_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_3Player_Answer_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_3Player_Answer_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_3Player_Answer_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_3Player_Answer_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_3Player_Question.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_1.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_2.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_3.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_4.Color=Colors.RGB(255,255,255)
			Sleep(100)
			If Label_Player_3_Answer_1.text=Starter.Question Then
				Panel_3Player_Answer_1.Color=Colors.RGB(255,255,255)
				Sleep(10)
				Panel_3Player_Answer_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_3_Answer_2.text=Starter.Question Then
				Panel_3Player_Answer_2.Color=Colors.RGB(255,255,255)
				Sleep(10)
				Panel_3Player_Answer_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_3_Answer_3.text=Starter.Question Then
				Panel_3Player_Answer_3.Color=Colors.RGB(255,255,255)
				Sleep(10)
				Panel_3Player_Answer_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_3_Answer_4.text=Starter.Question Then
				Panel_3Player_Answer_4.Color=Colors.RGB(255,255,255)
				Sleep(10)
				Panel_3Player_Answer_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			End If
			Label_3Player_Tool_2_Text.TextColor=Colors.RGB(75,0,130)
			Label_3Player_Tool_2.TextColor=Colors.RGB(75,0,130)
			Starter.Timer_Player_3_Gameplay.Enabled=False
			Label_3Player_Tool_2.Text=""
			Starter.Timer_Player_3_Gameplay.Enabled=True
		End If
	End If
End Sub
Public Sub Label_3Player_Tool_3_Click
	If Starter.UserName_1_Data_Tool_3 >0 Then
		Label_3Player_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
		If Starter.UserName_1_Data_Tool_3 = 1 Or Starter.UserName_1_Data_Tool_3 < 1 Then
			Starter.F_Sound.MP_EF("product_3-2.wav",False)
			Label_3Player_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Starter.F_Sound.MP_EF("product_3-3.wav",False)
			Starter.Timer_Player_3_Gameplay.Enabled=False
			Starter.UserName_1_Data_Tool_3=Starter.UserName_1_Data_Tool_3-1
			Label_3Player_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
			Label_3Player_Tool_3_Text.TextColor=Colors.RGB(75,0,130)
			Label_3Player_Tool_3.TextColor=Colors.RGB(75,0,130)
			Panel_3Player_Question.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_1.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_2.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_3.Color=Colors.RGB(255,255,255)
			Panel_3Player_Answer_4.Color=Colors.RGB(255,255,255)
			For i=1 To 12
				Panel_3Player_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Sleep(100)
				Panel_3Player_Question.Color=Colors.RGB(255,255,255)
			Next
		
			MakeQuestion_Player3
			Starter.Timer_Player_3_Gameplay.Enabled=True
		End If
	End If
End Sub
Public Sub Label_3Player_Home_Click
	Starter.F_Sound.MP_EF("return.wav",False)
	Starter.GotoTAB=4
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub

Public Sub Label_Player_3_Answer_1_Click
	If Label_Player_3_Answer_1.text=Starter.Question Then
		Starter.GameStatus="player3youwin"
		Check_Challenge
	Else
		Starter.GameStatus="player3gameover"
		Check_Challenge
	End If
End Sub
Public Sub Label_Player_3_Answer_2_Click
	If Label_Player_3_Answer_2.text=Starter.Question Then
		Starter.GameStatus="player3youwin"
		Check_Challenge
	Else
		Starter.GameStatus="player3gameover"
		Check_Challenge
	End If
End Sub
Public Sub Label_Player_3_Answer_3_Click
	If Label_Player_3_Answer_3.text=Starter.Question Then
		Starter.GameStatus="player3youwin"
		Check_Challenge
	Else
		Starter.GameStatus="player3gameover"
		Check_Challenge
	End If
End Sub
Public Sub Label_Player_3_Answer_4_Click
	If Label_Player_3_Answer_4.text=Starter.Question Then
		Starter.GameStatus="player3youwin"
		Check_Challenge
	Else
		Starter.GameStatus="player3gameover"
		Check_Challenge
	End If
End Sub

Sub Game_3_Play_Tick
	Starter.Game_Player3_Playing=Starter.Game_Player3_Playing+1
	ProgressBar_3Player_Timer.Progress=Starter.Game_Player3_Playing
	Label_3Player_ProgressBar_Timer.Text=Starter.Game_Player3_Playing
	
	Label_3Player_Icon_Answer_1.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Label_3Player_Icon_Answer_2.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Label_3Player_Icon_Answer_3.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Label_3Player_Icon_Answer_4.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
		
	#Region Game Over
	If Starter.Game_Player3_Playing = 99 Or Starter.Game_Player3_Playing > 99 Then
		Starter.GameStatus="player3gameover"
		Player_3_GameOver
	End If
	#End Region
End Sub

Sub Check_Challenge
	Starter.Timer_Player_3_Gameplay.Enabled=False

	If Starter.GameStatus="player3youwin" Then
		Starter.F_Sound.MP_EF("true.wav",False)
		
		Label_Player_3_Question.Text=Starter.Question_Text&Chr(10)&"="&Starter.Question
		Label_3Player_Icon_Question.text=""
		Label_3Player_Icon_Question.TextColor=Colors.Green
		Sleep(1000)
		Starter.UserName_3_ItemTrueOrFalse=Starter.UserName_3_ItemTrueOrFalse+10
		ProgressBar_3Player_Challeng.Progress=Starter.UserName_3_ItemTrueOrFalse
		Label_3Player_ProgressBar_Challeng.Text=(Starter.UserName_3_ItemTrueOrFalse/10)&"/10"
		MakeQuestion_Player3
		If Starter.UserName_3_ItemTrueOrFalse >100 Then
			Starter.UserName_3_ItemTrueOrFalse=0
			Starter.Timer_Player_3_Gameplay.Enabled=False
			Player_3_GameOver
		End If
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		
		Label_Player_3_Question.Text=Starter.Question_Text&Chr(10)&"="&Starter.Question
		Label_3Player_Icon_Question.text=""
		Label_3Player_Icon_Question.TextColor=Colors.red
		Sleep(1000)
		Starter.UserName_3_ItemTrueOrFalse=Starter.UserName_3_ItemTrueOrFalse-10
		ProgressBar_3Player_Challeng.Progress=Starter.UserName_3_ItemTrueOrFalse
		Label_3Player_ProgressBar_Challeng.Text=(Starter.UserName_3_ItemTrueOrFalse/10)&"/10"
		MakeQuestion_Player3
		If Starter.UserName_3_ItemTrueOrFalse <0 Then
			Starter.UserName_3_ItemTrueOrFalse=0
			Starter.Timer_Player_3_Gameplay.Enabled=False
			Player_3_GameOver
		End If
	End If
	

	
	
	Starter.Timer_Player_3_Gameplay.Enabled=True




End Sub

Sub Player_3_GameOver
	'MakeQuestion_Player3
'	Starter.Timer_Player_3_Gameplay.Initialize("Game_3_Play",0)
	Starter.Timer_Player_3_Gameplay.Enabled=False
	StartActivity(Activity_Player3_FinishGame)
	Activity.Finish
End Sub

Sub MakeQuestion_Player3
	Label_3Player_Icon_Question.TextColor=Colors.Black
	Label_3Player_Icon_Question.text=""
	Panel_3Player_Answer_1.Color=Colors.ARGB(127,255,255,255)
	Panel_3Player_Answer_2.Color=Colors.ARGB(127,255,255,255)
	Panel_3Player_Answer_3.Color=Colors.ARGB(127,255,255,255)
	Panel_3Player_Answer_4.Color=Colors.ARGB(127,255,255,255)
	
	Starter.F_MakeQuestion.Make_Question
	Label_Player_3_Question.Text=Starter.Question_Text
	'***
	Label_Player_3_Answer_1.Text=Starter.Answer_1
	Label_Player_3_Answer_2.Text=Starter.Answer_2
	Label_Player_3_Answer_3.Text=Starter.Answer_3
	Label_Player_3_Answer_4.Text=Starter.Answer_4
End Sub

#Region MyBanner ADS
'نمایش تبلیغ بنری
Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Panel_3Player_Background.AddView(Banner, 9%x,77.5%y, 100%x, 20%y)
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