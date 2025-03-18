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

	
	'---Layout_GamePlay_1.bal {
	Public Panel_Background As Panel
	Public Label_Level As Label
	Public Label_Player_1_NumberLevel As Label
	Public Panel_ProgressBar_Timer As Panel
	Public ProgressBar_Player_1_Timer As ProgressBar
	Public Panel_Player1_ProgressBar_Timer As Panel
	Public ImageView_Player1_Avatar As ImageView
	Public Label_Player_1_Star As Label
	Public Panel_Player_1_Color As Panel
	Public Label_Player_1_UserName As Label
	Public Label_Score_Player_1 As Label
	Public Panel_Question_1 As Panel
	Public Label_Player_1_Answer_1 As Label
	Public Panel_Icon_Question_1 As Panel
	Public Label_Player_1_Icon_Answer_1 As Label
	Public Panel_Question_2 As Panel
	Public Label_Player_1_Answer_2 As Label
	Public Panel_Icon_Question_2 As Panel
	Public Label_Player_1_Icon_Answer_2 As Label
	Public Panel_Question_3 As Panel
	Public Label_Player_1_Answer_3 As Label
	Public Panel_Icon_Question_3 As Panel
	Public Label_Player_1_Icon_Answer_3 As Label
	Public Panel_Question_4 As Panel
	Public Label_Player_1_Answer_4 As Label
	Public Panel_Icon_Question_4 As Panel
	Public Label_Player_1_Icon_Answer_4 As Label
	Public Panel_Bottom As Panel
	Public Label_Player_1_Tool_1 As Label
	Public Label_Player_1_Tool_2 As Label
	Public Label_Player_1_Tool_3 As Label
	Public Label_Player_1_Home As Label
	Public Label_Player_1_Tool_1_Text As Label
	Public Label_Player_1_Tool_2_Text As Label
	Public Label_Player_1_Tool_3_Text As Label
	Public Label_Player_1_Home_Text As Label
	Public Panel_Question As Panel
	Public Label_Player_1_Question As Label
	Public Panel_Icon_Answer As Panel
	Public Label_Icon_Question As Label
	Public Label_Player_1_YourQuin As Label
	
	'---Layout_GamePlay_1.bal }

End Sub

Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
	LanguageSet
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub Activity_Create(FirstTime As Boolean)

	Activity.LoadLayout("Layout_GamePlay_1")
	Starter.Timer_Player_1_Gameplay.Initialize("Game_1_Play",Starter.UserName_1_Speed)
    LanguageSet
	MakeQuestion_Player1
	Starter.Timer_Player_1_Gameplay.Enabled=True
	ImageView_Player1_Avatar.Bitmap = LoadBitmap(File.DirAssets,Starter.UserName_1_Avatar )
	Label_Player_1_UserName.Text=Starter.UserName_1
	
	'نمایش آگهی بنر
	Start_ADS_Banner
End Sub

Sub LanguageSet
	If Starter.UserName_1_Level > 10000  Then
		Starter.StarWinnerNumber=Starter.StarWinnerNumber+1
		StartActivity(Activity_About)
		Starter.UserName_1_Level=1
	End If
	Label_Player_1_Home_Text.Text=Starter.L_Label_Home_Text
	Activity.Color= Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	Panel_Player_1_Color.Color=Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	IQ_Level_Player1
	Label_Player_1_UserName.text=Starter.UserName_1
	Label_Level.Text=Starter.UserName_1_Level
	Label_Player_1_NumberLevel.Text=Starter.L_Label_User_Level
	Label_Score_Player_1.Text=NumberFormat(Starter.UserName_1_Money,0,3)
	Label_Player_1_YourQuin.Text=Starter.L_Label_User1_Money
	Label_Player_1_Tool_1_Text.Text=Starter.UserName_1_Data_Tool_1
	Label_Player_1_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
	Label_Player_1_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
End Sub

Public Sub Label_Player_1_Answer_1_Click
	If Label_Player_1_Answer_1.text=Starter.Question Then
		Starter.F_Sound.MP_EF("true.wav",False)
		Starter.GameStatus="player1youwin"
		Player_1_GameOver
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		Starter.GameStatus="player1gameover"
		Player_1_GameOver
	End If
End Sub
Public Sub Label_Player_1_Answer_2_Click
	If Label_Player_1_Answer_2.text=Starter.Question Then
		Starter.F_Sound.MP_EF("true.wav",False)
		Starter.GameStatus="player1youwin"
		Player_1_GameOver
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		Starter.GameStatus="player1gameover"
		Player_1_GameOver
	End If
End Sub
Public Sub Label_Player_1_Answer_3_Click
If Label_Player_1_Answer_3.text=Starter.Question Then
		Starter.F_Sound.MP_EF("true.wav",False)
		Starter.GameStatus="player1youwin"
		Player_1_GameOver
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		Starter.GameStatus="player1gameover"
		Player_1_GameOver
	End If
End Sub
Public Sub Label_Player_1_Answer_4_Click
	If Label_Player_1_Answer_4.text=Starter.Question Then
		Starter.F_Sound.MP_EF("true.wav",False)
		Starter.GameStatus="player1youwin"
		Player_1_GameOver
	Else
		Starter.F_Sound.MP_EF("false.wav",False)
		Starter.GameStatus="player1gameover"
		Player_1_GameOver
	End If
End Sub

Private Sub Label_Player_1_Icon_Answer_4_Click
	Label_Player_1_Answer_4_Click
End Sub
Private Sub Label_Player_1_Icon_Answer_3_Click
	Label_Player_1_Answer_3_Click
End Sub
Private Sub Label_Player_1_Icon_Answer_2_Click
	Label_Player_1_Answer_3_Click
End Sub
Private Sub Label_Player_1_Icon_Answer_1_Click
	Label_Player_1_Answer_1_Click
End Sub

Public Sub Label_Player_1_Tool_1_Click
	If Starter.UserName_1_Data_Tool_1 >0 Then
		Label_Player_1_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_1
		If Starter.UserName_1_Data_Tool_1 = 1 Or Starter.UserName_1_Data_Tool_1 < 1 Then
			Starter.F_Sound.MP_EF("product_1-2.wav",False)
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Starter.F_Sound.MP_EF("product_1-1.wav",False)
			Starter.Timer_Player_1_Gameplay.Enabled=False
			Starter.UserName_1_Data_Tool_1=Starter.UserName_1_Data_Tool_1-1
			Label_Player_1_Tool_1_Text.Text=Starter.UserName_1_Data_Tool_1
			Starter.Timer_Player_1_Gameplay.Initialize("Game_1_Play",3000)
			Label_Player_1_Tool_1_Text.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Label_Player_1_Tool_1.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Panel_Player1_ProgressBar_Timer.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Panel_Question_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Question_4.Color=Colors.RGB(255,255,255)
			Panel_Question_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(200)
			Panel_Question_3.Color=Colors.RGB(255,255,255)
			Panel_Question_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(300)
			Panel_Question_2.Color=Colors.RGB(255,255,255)
			Panel_Question_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(400)
			Panel_Question_1.Color=Colors.RGB(255,255,255)
			Panel_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(500)
			Panel_Question.Color=Colors.RGB(255,255,255)
			Sleep(100)
			For i=1 To 10
				Label_Player_1_Tool_1_Text.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Label_Player_1_Tool_1.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Panel_Player1_ProgressBar_Timer.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Sleep(10)
				Label_Player_1_Tool_1_Text.TextColor=Colors.RGB(75,0,130)
				Label_Player_1_Tool_1.TextColor=Colors.RGB(75,0,130)
				Panel_Player1_ProgressBar_Timer.Color=Colors.RGB(75,0,130)
				Label_Player_1_Tool_1_Text.TextColor=Colors.RGB(75,0,130)
				Label_Player_1_Tool_1.TextColor=Colors.RGB(75,0,130)
				Panel_Player1_ProgressBar_Timer.Color=Colors.RGB(255,255,255)
			Next
			Starter.Timer_Player_1_Gameplay.Enabled=True
		End If
	End If
End Sub
Public Sub Label_Player_1_Tool_2_Click
	If Starter.UserName_1_Data_Tool_2 >0 Then
		Label_Player_1_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
		If Starter.UserName_1_Data_Tool_2 = 1 Or Starter.UserName_1_Data_Tool_2 < 1 Then
			Starter.F_Sound.MP_EF("product_2-2",False)
			Label_Player_1_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
			Label_Player_1_Tool_2.Text=""
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Starter.F_Sound.MP_EF("product_2-3.wav",False)
			Starter.UserName_1_Data_Tool_2=Starter.UserName_1_Data_Tool_2-1
			Label_Player_1_Tool_2_Text.Text=Starter.UserName_1_Data_Tool_2
			Label_Player_1_Tool_2_Text.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Label_Player_1_Tool_2.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Label_Player_1_Tool_2.Text=""
			Sleep(100)
			Panel_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Question_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Question_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Question_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Question_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Sleep(100)
			Panel_Question.Color=Colors.RGB(255,255,255)
			Panel_Question_1.Color=Colors.RGB(255,255,255)
			Panel_Question_2.Color=Colors.RGB(255,255,255)
			Panel_Question_3.Color=Colors.RGB(255,255,255)
			Panel_Question_4.Color=Colors.RGB(255,255,255)
			Sleep(100)
			If Label_Player_1_Answer_1.text=Starter.Question Then
					Panel_Question_1.Color=Colors.RGB(255,255,255)
					Sleep(10)
					Panel_Question_1.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_1_Answer_2.text=Starter.Question Then
					Panel_Question_2.Color=Colors.RGB(255,255,255)	
					Sleep(10)
					Panel_Question_2.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_1_Answer_3.text=Starter.Question Then
					Panel_Question_3.Color=Colors.RGB(255,255,255)
					Sleep(10)
					Panel_Question_3.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			Else If Label_Player_1_Answer_4.text=Starter.Question Then
					Panel_Question_4.Color=Colors.RGB(255,255,255)
					Sleep(10)
					Panel_Question_4.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
			End If
			Label_Player_1_Tool_2_Text.TextColor=Colors.RGB(75,0,130)
			Label_Player_1_Tool_2.TextColor=Colors.RGB(75,0,130)
			Label_Player_1_Tool_2.Text=""
			Starter.Timer_Player_1_Gameplay.Enabled=True
		End If
	End If
End Sub
Public Sub Label_Player_1_Tool_3_Click
	If Starter.UserName_1_Data_Tool_3 >0 Then
		Label_Player_1_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
		If Starter.UserName_1_Data_Tool_3 = 1 Or Starter.UserName_1_Data_Tool_3 < 1 Then
			Starter.F_Sound.MP_EF("product_3-2.wav",False)
			Label_Player_1_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
			Starter.GotoTAB=4
			Starter.GotoSubTAB=5
			Activity.Finish
		Else
			Starter.F_Sound.MP_EF("product_3-3.wav",False)
			Starter.Timer_Player_1_Gameplay.Enabled=False
			Starter.UserName_1_Data_Tool_3=Starter.UserName_1_Data_Tool_3-1
			Label_Player_1_Tool_3_Text.Text=Starter.UserName_1_Data_Tool_3
			Label_Player_1_Tool_3_Text.TextColor=Colors.RGB(75,0,130)
			Label_Player_1_Tool_3.TextColor=Colors.RGB(75,0,130)
			Panel_Question.Color=Colors.RGB(255,255,255)
			Panel_Question_1.Color=Colors.RGB(255,255,255)
			Panel_Question_2.Color=Colors.RGB(255,255,255)
			Panel_Question_3.Color=Colors.RGB(255,255,255)
			Panel_Question_4.Color=Colors.RGB(255,255,255)
			For i=1 To 12
				Panel_Question.Color=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
				Sleep(100)
				Panel_Question.Color=Colors.RGB(255,255,255)
			Next
			MakeQuestion_Player1
			Starter.Timer_Player_1_Gameplay.Enabled=True
		End If
	End If
End Sub
Public Sub Label_Player_1_Home_Click
	Starter.F_Sound.MP_EF("return.wav",False)
	Starter.GotoTAB=1
	Starter.GotoSubTAB=1
	StartActivity(Activity_Menu)
	Activity.Finish
End Sub

Public Sub MakeQuestion_Player1
	Starter.UserName_1_IQ=0
	Starter.UserName_1_IQ_Text=""
	
	Starter.F_MakeQuestion.Make_Question
	Label_Player_1_Question.Text=Starter.Question_Text

	Label_Player_1_Answer_1.Text=Starter.Answer_1
	Label_Player_1_Answer_2.Text=Starter.Answer_2
	Label_Player_1_Answer_3.Text=Starter.Answer_3
	Label_Player_1_Answer_4.Text=Starter.Answer_4

End Sub

Sub Game_1_Play_Tick
	Starter.Game_Player1_Playing=Starter.Game_Player1_Playing+1
	Starter.Game_Player1_Playing_time=Starter.Game_Player1_Playing
	ProgressBar_Player_1_Timer.Progress=Starter.Game_Player1_Playing
	
	
	IQ_Level_Player1
	
	Label_Player_1_Icon_Answer_1.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Label_Player_1_Icon_Answer_2.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Label_Player_1_Icon_Answer_3.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
	Label_Player_1_Icon_Answer_4.TextColor=Colors.RGB(Rnd(1,255),Rnd(1,255),Rnd(1,255))
		
	#Region Game Over
	If Starter.Game_Player1_Playing = 99 Or Starter.Game_Player1_Playing > 99 Then
		Starter.GameStatus="player1gameover"
		Player_1_GameOver
		Starter.GameStatus="player1gameover"
	End If
	#End Region
End Sub

Public Sub Player_1_GameOver
	Starter.F_Sound.MP_EF("gameover.wav",False)
	Starter.Game_Player1_Playing=0
	Starter.Timer_Player_1_Gameplay.Enabled=False
	StartActivity(Activity_Player1_FinishGame)
	Activity.Finish
End Sub

Sub IQ_Level_Player1
	If Starter.Game_Player1_Playing< 30 Then
		Starter.UserName_1_IQ=3
		Starter.UserName_1_IQ_Text=Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
		Label_Player_1_Star.Text=Starter.UserName_1_IQ_Text
	Else If Starter.Game_Player1_Playing< 60 Then
		Starter.UserName_1_IQ=2
		Starter.UserName_1_IQ_Text=Starter.iQ_CHAR_STAR&Starter.iQ_CHAR_STAR
		Label_Player_1_Star.Text=Starter.UserName_1_IQ_Text
	Else If Starter.Game_Player1_Playing> 60 Then
		Starter.UserName_1_IQ=1
		Starter.UserName_1_IQ_Text=Chr(42)
		Label_Player_1_Star.Text=Starter.iQ_CHAR_STAR
	End If
	

End Sub

#Region MyBanner ADS
'نمایش تبلیغ بنری
Public Sub Start_ADS_Banner
	'نمایش تبلیغ بنری
	Banner.Initialize2("MyBanner", Starter.F_ADS.key_Banner_1_Placement, Banner.BANNER)
	Panel_Background.AddView(Banner, 9%x,76.5%y, 100%x, 20%y)
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