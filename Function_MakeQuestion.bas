B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=13
@EndOfDesignText@
Sub Class_Globals
End Sub
Public Sub Initialize
	
End Sub

Sub Make_Question
	If Starter.UserName_1_Level < 50 Then
		Starter.Num1 = Rnd(1, 10)
		Starter.Num2 = Rnd(1, 10)
		Starter.SpeedAnswerPlayer2=5000
	Else If Starter.UserName_1_Level > 50 And Starter.UserName_1_Level < 150  Then
		Starter.Num1 = Rnd(10, 100)
		Starter.Num2 = Rnd(1, 10)
		Starter.SpeedAnswerPlayer2=7000
	Else If Starter.UserName_1_Level > 150 And Starter.UserName_1_Level < 300 Then
		Starter.Num1 = Rnd(10, 100)
		Starter.Num2 = Rnd(10, 100)
		Starter.SpeedAnswerPlayer2=10000
	Else If Starter.UserName_1_Level > 300 And Starter.UserName_1_Level < 600 Then
		Starter.Num1 = Rnd(100, 1000)
		Starter.Num2 = Rnd(10, 100)
		Starter.SpeedAnswerPlayer2=12500
	Else If Starter.UserName_1_Level > 600 And Starter.UserName_1_Level < 1200 Then
		Starter.Num1 = Rnd(100, 1000)
		Starter.Num2 = Rnd(100, 1000)
		Starter.SpeedAnswerPlayer2=15000
	Else If Starter.UserName_1_Level > 1200 And Starter.UserName_1_Level < 2400 Then
		Starter.Num1 = Rnd(1000, 10000)
		Starter.Num2 = Rnd(100, 1000)
		Starter.SpeedAnswerPlayer2=20000
	Else If Starter.UserName_1_Level > 2400 And Starter.UserName_1_Level < 4800 Then
		Starter.Num1 = Rnd(1000, 10000)
		Starter.Num2 = Rnd(1000, 10000)
		Starter.SpeedAnswerPlayer2=25000
	Else If Starter.UserName_1_Level > 4800 And Starter.UserName_1_Level < 10000 Then
		Starter.Num1 = Rnd(10000, 100000)
		Starter.Num2 = Rnd(1000, 10000)
		Starter.SpeedAnswerPlayer2=30000
	End If
	
	

	If Starter.QuestionTypeSelect=0 Then
		Starter.Calculation_type=Rnd(1,5)
	Else If Starter.QuestionTypeSelect=1 Then
		Starter.Calculation_type=1
	Else If Starter.QuestionTypeSelect=2 Then
		Starter.Calculation_type=2
	Else If Starter.QuestionTypeSelect=3 Then
		Starter.Calculation_type=3
	Else If Starter.QuestionTypeSelect=4 Then
		Starter.Calculation_type=4
	End If

	'*** Spinner_QuestionTypeSelect
	If Starter.Calculation_type= 1 Then
		Starter.Question=Starter.Num1+Starter.Num2
		Starter.Question_Text=Starter.Num1&Chr(10)&"+"&Chr(10)& Starter.Num2
	Else if Starter.Calculation_type= 2 Then
		Starter.Question=Starter.Num1-Starter.Num2
		Starter.Question_Text=Starter.Num1&Chr(10)&"-"&Chr(10)& Starter.Num2
	Else if Starter.Calculation_type= 3 Then
		Starter.Question=Starter.Num1*Starter.Num2
		Starter.Question_Text=Starter.Num1&Chr(10)&"*"&Chr(10)& Starter.Num2
	Else if Starter.Calculation_type= 4 Then
		Starter.Question=Starter.Num1/Starter.Num2
		Starter.Question_Text=Starter.Num1&Chr(10)&"/"&Chr(10)& Starter.Num2
	End If
	
	Starter.ItemTrue=Rnd(1,5)
	

	If Starter.ItemTrue=1 Then
		Starter.Answer_1=Starter.Question
		Starter.Answer_2=Starter.Question-Rnd(1,10)
		Starter.Answer_3=Starter.Question+Rnd(1,5)
		Starter.Answer_4=Starter.Question+Rnd(1,10)
	Else if Starter.ItemTrue=2 Then
		Starter.Answer_1=Starter.Question-Rnd(1,10)
		Starter.Answer_2=Starter.Question
		Starter.Answer_3=Starter.Question+Rnd(1,5)
		Starter.Answer_4=Starter.Question+Rnd(1,10)
	Else if Starter.ItemTrue=3 Then
		Starter.Answer_1=Starter.Question-Rnd(1,10)
		Starter.Answer_2=Starter.Question+Rnd(1,5)
		Starter.Answer_3=Starter.Question
		Starter.Answer_4=Starter.Question+Rnd(1,10)
	Else if Starter.ItemTrue=4 Then
		Starter.Answer_1=Starter.Question-Rnd(1,10)
		Starter.Answer_2=Starter.Question+Rnd(1,5)
		Starter.Answer_3=Starter.Question+Rnd(1,10)
		Starter.Answer_4=Starter.Question
	End If
	
End Sub
