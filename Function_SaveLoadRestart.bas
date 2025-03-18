B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=13
@EndOfDesignText@

Sub Class_Globals
	
End Sub
Public Sub Initialize
	Starter.jsonObject.Initialize
End Sub

Public Sub Restart_Game

	Log(" تنظیم مقدار اولیه به متغیرها برای Restart اجرا " )
	
	Starter.Language="fa"
	Starter.UserName_1_Data_Tool_1=10
	Starter.UserName_1_Data_Tool_2=10
	Starter.UserName_1_Data_Tool_3=10
	Starter.Reward_ADS_Price= 1000
	Starter.QuestionTypeSelect=0
	Starter.Calculation_type=Rnd(1,5)
	Starter.StartGameTime=Rnd(100,1000)        '86400  '24 Hure
	Starter.StartGameTimeChance=Rnd(100,1000)  '86400  '24 Hure
	Starter.MusicBackground="False"
	Starter.MusicEffect="False"
	Starter.MusicNameRandomSelect_GamePlay=1
	Starter.iQ_CHAR_STAR=""

	Starter.ListSaveGame_Player1_LINE_0.Clear
	Starter.ListSaveGame_Player1_LINE_1.Clear
	Starter.ListSaveGame_Player1_LINE_2.Clear
	Starter.ListSaveGame_Player2_LINE_0.Clear
	Starter.ListSaveGame_Player2_LINE_1.Clear
	Starter.ListSaveGame_Player2_LINE_2.Clear
	Starter.ListSaveGame_Player3_LINE_0.Clear
	Starter.ListSaveGame_Player3_LINE_1.Clear
	Starter.ListSaveGame_Player3_LINE_2.Clear
	'************************************************************************************************************   UserName_1 من
	Starter.UserName_1="Player Name"
	Starter.UserName_1_Avatar_RND=Rnd(1,6)
	Starter.UserName_1_Avatar="Avatar(1).png"
	Starter.UserName_1_Color_R=Rnd(1,255)
	Starter.UserName_1_Color_G=Rnd(1,255)
	Starter.UserName_1_Color_B=Rnd(1,255)
	Starter.UserName_1_Color=Colors.RGB(Starter.UserName_1_Color_R,Starter.UserName_1_Color_G,Starter.UserName_1_Color_B)
	Starter.UserName_1_IQ=3
	Starter.UserName_1_IQ_Text=""
	Starter.UserName_1_Level=1
	Starter.UserName_1_Money=100000
	Starter.UserName_1_Speed=250
	Starter.UserName_1_IQ_Calc=0
	Starter.Iq_Iq_Level=0
	'************************************************************************************************************   Starter.UserName_2 حریف
	Starter.UserName_2_Avatar_RND=Rnd(1,6)
	Starter.UserName_2_Avatar=Starter.UserName_2_Avatar
	Starter.UserName_2_Color_R=Rnd(1,255)
	Starter.UserName_2_Color_G=Rnd(1,255)
	Starter.UserName_2_Color_B=Rnd(1,255)
	Starter.UserName_2_Color=Colors.RGB(Starter.UserName_2_Color_R,Starter.UserName_2_Color_G,Starter.UserName_2_Color_B)
	Starter.UserName_2_IQ=3
	Starter.UserName_2_IQ_Text=""
	Starter.UserName_2_Level=1
	Starter.UserName_2_Money=100000
	Starter.UserName_2_Speed=250
	Starter.UserName_2_Risk=10
	Starter.UserName_2_PriceRisk=10
	'************************************************************************************************************   Starter.UserName_3 چالش
	Starter.UserName_3_Avatar_RND=Rnd(1,6)
	Starter.UserName_3_Avatar=Starter.UserName_3_Avatar
	Starter.UserName_3_Color_R=Rnd(1,255)
	Starter.UserName_3_Color_G=Rnd(1,255)
	Starter.UserName_3_Color_B=Rnd(1,255)
	Starter.UserName_3_Color=Colors.RGB(Starter.UserName_3_Color_R,Starter.UserName_3_Color_G,Starter.UserName_3_Color_B)
	Starter.UserName_3_ItemTrueOrFalse=1
	Starter.UserName_3_ChallengeLoading=0
	Starter.UserName_3_ChallengeAnswer=0
	Starter.UserName_3_ChallengeSpeed=250
	Starter.UserName_3_ChallengeTime=0
	Starter.UserName_3_ChallengeRisk=10
	'************************************************************************************************************   Starter.UserName_3 چالش
End Sub

Public Sub SaveGame

	Log(" افزودن مقادیر به حافظه JSON")

	Starter.jsonObject.Put("Language", Starter.Language)
	Starter.jsonObject.Put("UserName_1_Data_Tool_1", Starter.UserName_1_Data_Tool_1)
	Starter.jsonObject.Put("UserName_1_Data_Tool_2", Starter.UserName_1_Data_Tool_2)
	Starter.jsonObject.Put("UserName_1_Data_Tool_3", Starter.UserName_1_Data_Tool_3)
	Starter.jsonObject.Put("Reward_ADS_Price", Starter.Reward_ADS_Price)
	Starter.jsonObject.Put("QuestionTypeSelect", Starter.QuestionTypeSelect)
	Starter.jsonObject.Put("Calculation_type", Starter.Calculation_type)
	Starter.jsonObject.Put("StartGameTime", Starter.StartGameTime)
	Starter.jsonObject.Put("StartGameTimeChance", Starter. StartGameTimeChance)
	Starter.jsonObject.Put("StarWinnerNumber", Starter.StarWinnerNumber)
	Starter.jsonObject.Put("MusicBackground", Starter.MusicBackground)
	Starter.jsonObject.Put("MusicEffect", Starter.MusicEffect)
	Starter.jsonObject.Put("MusicNameRandomSelect_GamePlay", Starter.MusicNameRandomSelect_GamePlay)
	Starter.jsonObject.Put("iQ_CHAR_STAR", Starter.iQ_CHAR_STAR)
	
	Starter.jsonObject.Put("ListSaveGame_Player1_LINE_0", Starter.ListSaveGame_Player1_LINE_0)
	Starter.jsonObject.Put("ListSaveGame_Player1_LINE_1", Starter.ListSaveGame_Player1_LINE_1)
	Starter.jsonObject.Put("ListSaveGame_Player1_LINE_2", Starter.ListSaveGame_Player1_LINE_2)
	Starter.jsonObject.Put("ListSaveGame_Player2_LINE_0", Starter.ListSaveGame_Player2_LINE_0)
	Starter.jsonObject.Put("ListSaveGame_Player2_LINE_1", Starter.ListSaveGame_Player2_LINE_1)
	Starter.jsonObject.Put("ListSaveGame_Player2_LINE_2", Starter.ListSaveGame_Player2_LINE_2)
	Starter.jsonObject.Put("ListSaveGame_Player3_LINE_0", Starter.ListSaveGame_Player3_LINE_0)
	Starter.jsonObject.Put("ListSaveGame_Player3_LINE_1", Starter.ListSaveGame_Player3_LINE_1)
	Starter.jsonObject.Put("ListSaveGame_Player3_LINE_2", Starter.ListSaveGame_Player3_LINE_2)

	'************************************************************************************************************   UserName_1 من
	Starter.jsonObject.Put("UserName_1", Starter.UserName_1)
	Starter.jsonObject.Put("UserName_1_Avatar_RND", Starter.UserName_1_Avatar_RND)
	Starter.jsonObject.Put("UserName_1_Avatar", Starter.UserName_1_Avatar)
	Starter.jsonObject.Put("UserName_1_Color_R", Starter.UserName_1_Color_R)
	Starter.jsonObject.Put("UserName_1_Color_G", Starter.UserName_1_Color_G)
	Starter.jsonObject.Put("UserName_1_Color_B", Starter.UserName_1_Color_B)
	Starter.jsonObject.Put("UserName_1_Color", Starter.UserName_1_Color)
	Starter.jsonObject.Put("UserName_1_IQ", Starter.UserName_1_IQ)
	Starter.jsonObject.Put("UserName_1_IQ_Text", Starter.UserName_1_IQ_Text)
	Starter.jsonObject.Put("UserName_1_Money", Starter.UserName_1_Money)
	Starter.jsonObject.Put("UserName_1_Level", Starter.UserName_1_Level)
	Starter.jsonObject.Put("UserName_1_Speed", Starter.UserName_1_Speed)
	Starter.jsonObject.Put("UserName_1_IQ_Calc", Starter.UserName_1_IQ_Calc)
	Starter.jsonObject.Put("Iq_Iq_Level", Starter.Iq_Iq_Level)
	
	'************************************************************************************************************   Starter.jsonObject.Put("UserName_2 حریف
	Starter.jsonObject.Put("UserName_2", Starter.UserName_2)
	Starter.jsonObject.Put("UserName_2_Avatar_RND", Starter.UserName_2_Avatar_RND)
	Starter.jsonObject.Put("UserName_2_Avatar", Starter.UserName_2_Avatar)
	Starter.jsonObject.Put("UserName_2_Color_R", Starter.UserName_2_Color_R)
	Starter.jsonObject.Put("UserName_2_Color_G", Starter.UserName_2_Color_G)
	Starter.jsonObject.Put("UserName_2_Color_B", Starter.UserName_2_Color_B)
	Starter.jsonObject.Put("UserName_2_Color", Starter.UserName_2_Color)
	Starter.jsonObject.Put("UserName_2_IQ", Starter.UserName_2_IQ)
	Starter.jsonObject.Put("UserName_2_IQ_Text", Starter.UserName_2_IQ_Text)
	Starter.jsonObject.Put("UserName_2_Money", Starter.UserName_2_Money)
	Starter.jsonObject.Put("UserName_2_Level", Starter.UserName_2_Level)
	Starter.jsonObject.Put("UserName_2_Speed", Starter.UserName_2_Speed)
	Starter.jsonObject.Put("UserName_2_Risk", Starter.UserName_2_Risk)
	Starter.jsonObject.Put("UserName_2_PriceRisk", Starter.UserName_2_PriceRisk)
	'************************************************************************************************************   Starter.jsonObject.Put("UserName_3 چالش
	Starter.jsonObject.Put("UserName_3", Starter.UserName_3)
	Starter.jsonObject.Put("UserName_3_Avatar_RND", Starter.UserName_3_Avatar_RND)
	Starter.jsonObject.Put("UserName_3_Avatar", Starter.UserName_3_Avatar)
	Starter.jsonObject.Put("UserName_3_Color_R", Starter.UserName_3_Color_R)
	Starter.jsonObject.Put("UserName_3_Color_G", Starter.UserName_3_Color_G)
	Starter.jsonObject.Put("UserName_3_Color_B", Starter.UserName_3_Color_B)
	Starter.jsonObject.Put("UserName_3_Color", Starter.UserName_3_Color)
	Starter.jsonObject.Put("UserName_3_ItemTrueOrFalse", Starter.UserName_3_ItemTrueOrFalse)
	Starter.jsonObject.Put("UserName_3_ChallengeLoading", Starter.UserName_3_ChallengeLoading)
	Starter.jsonObject.Put("UserName_3_ChallengeAnswer", Starter.UserName_3_ChallengeAnswer)
	Starter.jsonObject.Put("UserName_3_ChallengeSpeed", Starter.UserName_3_ChallengeSpeed)
	Starter.jsonObject.Put("UserName_3_ChallengeTime", Starter.UserName_3_ChallengeTime)
	Starter.jsonObject.Put("UserName_3_ChallengeRisk", Starter.UserName_3_ChallengeRisk)
	
	'************************************************************************************************************ 	' تبدیل شیء JSON به رشته
	Starter.jsonGenerator.Initialize(Starter.jsonObject)
	Starter.jsonString = Starter.jsonGenerator.ToString
	' ذخیره رشته JSON در فایل
	File.WriteString(File.DirInternal, "data.json", Starter.jsonString)
End Sub

Public Sub LoadGame
	Try
		' خواندن رشته JSON از فایل
		Starter.jsonString = File.ReadString(File.DirInternal, "data.json")
		' تجزیه رشته JSON به شیء JSON
		Starter.jsonParser.Initialize(Starter.jsonString)
		Starter.jsonObject = Starter.jsonParser.NextObject
		Log(" بازیابی متغیرهای جدید از حافظه JSON")
		
		Starter.Language = Starter.jsonObject.Get("Language")
		Starter.UserName_1_Data_Tool_1 = Starter.jsonObject.Get("UserName_1_Data_Tool_1")
		Starter.UserName_1_Data_Tool_2 = Starter.jsonObject.Get("UserName_1_Data_Tool_2")
		Starter.UserName_1_Data_Tool_3 = Starter.jsonObject.Get("UserName_1_Data_Tool_3")
		Starter.Reward_ADS_Price= Starter.jsonObject.Get("Reward_ADS_Price")
		Starter.QuestionTypeSelect = Starter.jsonObject.Get("QuestionTypeSelect")
		Starter.Calculation_type = Starter.jsonObject.Get("Calculation_type")
		Starter.StartGameTime = Starter.jsonObject.Get("StartGameTime")
		Starter.StartGameTimeChance = Starter.jsonObject.Get("StartGameTimeChance")
		Starter.StarWinnerNumber = Starter.jsonObject.Get("StarWinnerNumber")
		Starter.MusicBackground = Starter.jsonObject.Get("MusicBackground")
		Starter.MusicEffect = Starter.jsonObject.Get("MusicEffect")
		Starter.MusicNameRandomSelect_GamePlay = Starter.jsonObject.Get("MusicNameRandomSelect_GamePlay")
		Starter.iQ_CHAR_STAR = Starter.jsonObject.Get("iQ_CHAR_STAR")


		
		Starter.ListSaveGame_Player1_LINE_0 = Starter.jsonObject.Get("ListSaveGame_Player1_LINE_0")
		Starter.ListSaveGame_Player1_LINE_1 = Starter.jsonObject.Get("ListSaveGame_Player1_LINE_1")
		Starter.ListSaveGame_Player1_LINE_2 = Starter.jsonObject.Get("ListSaveGame_Player1_LINE_2")
		Starter.ListSaveGame_Player2_LINE_0 = Starter.jsonObject.Get("ListSaveGame_Player2_LINE_0")
		Starter.ListSaveGame_Player2_LINE_1 = Starter.jsonObject.Get("ListSaveGame_Player2_LINE_1")
		Starter.ListSaveGame_Player2_LINE_2 = Starter.jsonObject.Get("ListSaveGame_Player2_LINE_2")
		Starter.ListSaveGame_Player3_LINE_0 = Starter.jsonObject.Get("ListSaveGame_Player3_LINE_0")
		Starter.ListSaveGame_Player3_LINE_1 = Starter.jsonObject.Get("ListSaveGame_Player3_LINE_1")
		Starter.ListSaveGame_Player3_LINE_2 = Starter.jsonObject.Get("ListSaveGame_Player3_LINE_2")

		'************************************************************************************************************   UserName_1 من
		Starter.UserName_1 = Starter.jsonObject.Get("UserName_1")
		Starter.UserName_1_Avatar_RND = Starter.jsonObject.Get("UserName_1_Avatar_RND")
		Starter.UserName_1_Avatar = Starter.jsonObject.Get("UserName_1_Avatar")
		Starter.UserName_1_Color_R = Starter.jsonObject.Get("UserName_1_Color_R")
		Starter.UserName_1_Color_G = Starter.jsonObject.Get("UserName_1_Color_G")
		Starter.UserName_1_Color_B = Starter.jsonObject.Get("UserName_1_Color_B")
		Starter.UserName_1_Color = Starter.jsonObject.Get("UserName_1_Color")
		Starter.UserName_1_IQ = Starter.jsonObject.Get("UserName_1_IQ")
		Starter.UserName_1_IQ_Text = Starter.jsonObject.Get("UserName_1_IQ_Text")
		Starter.UserName_1_Money = Starter.jsonObject.Get("UserName_1_Money")
		Starter.UserName_1_Level = Starter.jsonObject.Get("UserName_1_Level")
		Starter.UserName_1_Speed = Starter.jsonObject.Get("UserName_1_Speed")
		Starter.UserName_1_IQ_Calc = Starter.jsonObject.Get("UserName_1_IQ_Calc")
		Starter.Iq_Iq_Level = Starter.jsonObject.Get("Iq_Iq_Level")

		'************************************************************************************************************   Starter.StartGameTime = Starter.jsonObject.Get("UserName_2 حریف
		Starter.UserName_2 = Starter.jsonObject.Get("UserName_2")
		Starter.UserName_2_Avatar_RND = Starter.jsonObject.Get("UserName_2_Avatar_RND")
		Starter.UserName_2_Avatar = Starter.jsonObject.Get("UserName_2_Avatar")
		Starter.UserName_2_Color_R = Starter.jsonObject.Get("UserName_2_Color_R")
		Starter.UserName_2_Color_G = Starter.jsonObject.Get("UserName_2_Color_G")
		Starter.UserName_2_Color_B = Starter.jsonObject.Get("UserName_2_Color_B")
		Starter.UserName_2_Color = Starter.jsonObject.Get("UserName_2_Color")
		Starter.UserName_2_IQ = Starter.jsonObject.Get("UserName_2_IQ")
		Starter.UserName_2_IQ_Text = Starter.jsonObject.Get("UserName_2_IQ_Text")
		Starter.UserName_2_Money = Starter.jsonObject.Get("UserName_2_Money")
		Starter.UserName_2_Level = Starter.jsonObject.Get("UserName_2_Level")
		Starter.UserName_2_Speed = Starter.jsonObject.Get("UserName_2_Speed")
		Starter.UserName_2_Risk = Starter.jsonObject.Get("UserName_2_Risk")
		Starter.UserName_2_PriceRisk = Starter.jsonObject.Get("UserName_2_PriceRisk")
		'************************************************************************************************************   Starter.StartGameTime = Starter.jsonObject.Get("UserName_3 چالش
		Starter.UserName_3 = Starter.jsonObject.Get("UserName_3")
		Starter.UserName_3_Avatar_RND = Starter.jsonObject.Get("UserName_3_Avatar_RND")
		Starter.UserName_3_Avatar = Starter.jsonObject.Get("UserName_3_Avatar")
		Starter.UserName_3_Color_R = Starter.jsonObject.Get("UserName_3_Color_R")
		Starter.UserName_3_Color_G = Starter.jsonObject.Get("UserName_3_Color_G")
		Starter.UserName_3_Color_B = Starter.jsonObject.Get("UserName_3_Color_B")
		Starter.UserName_3_Color = Starter.jsonObject.Get("UserName_3_Color")
		Starter.UserName_3_ItemTrueOrFalse = Starter.jsonObject.Get("UserName_3_ItemTrueOrFalse")
		Starter.UserName_3_ChallengeLoading = Starter.jsonObject.Get("UserName_3_ChallengeLoading")
		Starter.UserName_3_ChallengeAnswer = Starter.jsonObject.Get("UserName_3_ChallengeAnswer")
		Starter.UserName_3_ChallengeSpeed = Starter.jsonObject.Get("UserName_3_ChallengeSpeed")
		Starter.UserName_3_ChallengeTime = Starter.jsonObject.Get("UserName_3_ChallengeTime")
		Starter.UserName_3_ChallengeRisk = Starter.jsonObject.Get("UserName_3_ChallengeRisk")



	Catch
		Log("خطا در بازیابی داده‌ها: " & LastException.Message)
	End Try

End Sub
