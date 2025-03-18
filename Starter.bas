B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Service
Version=9.9
@EndOfDesignText@
#Region  Service Attributes 
	#StartAtBoot: False
	#ExcludeFromLibrary: True
#End Region

Sub Process_Globals

	Public F_Master As Function_Master
	Public F_UserName As Function_UserName
	Public F_SaveLoadRestart As Function_SaveLoadRestart
	Public F_Language As Function_Language
	Public F_Sound As Function_Sound
	Public F_MakeQuestion As Function_MakeQuestion
	Public F_Message As Function_Message
	Public F_ADS As Function_ADS
	
	'Save & Load Value
	Public jsonObject As Map
	Public jsonGenerator As JSONGenerator
	Public jsonString As String
	Public jsonParser As JSONParser

	
	
	Public MediaPlayerBG, MediaPlayerEF As MediaPlayer

	Public Timer_Player_1_Gameplay , Timer_Player_2_Gameplay  , Timer_Player_3_Gameplay As Timer

	Public UserName_List_Woman ,UserName_List_Man, ListSaveGame_Player1_LINE_0,ListSaveGame_Player1_LINE_1,ListSaveGame_Player1_LINE_2,ListSaveGame_Player2_LINE_0, _
	ListSaveGame_Player2_LINE_1,ListSaveGame_Player2_LINE_2,ListSaveGame_Player3_LINE_0,ListSaveGame_Player3_LINE_1,ListSaveGame_Player3_LINE_2 As List

	Public FontName1,FontName2 ,FontName3  As Typeface

	Public Iq_Iq,Iq_Level,Iq_Iq_Level    As Double
	
	Public UserName_1_IQ_Calc  As Int
	Public Num1,Num2,Question,UserName_3_ItemTrueOrFalse  As Long
	
	Public Player1_Answer_1_1,Player1_Answer_1_2,Player1_Answer_1_3,Player1_Answer_1_4 , Player1_Answer_2_1,Player1_Answer_2_2,Player1_Answer_2_3,Player1_Answer_2_4 , Player1_Answer_3_1,Player1_Answer_3_2,Player1_Answer_3_3,Player1_Answer_3_4 , Player1_Answer_4_1,Player1_Answer_4_2,Player1_Answer_4_3,Player1_Answer_4_4  As Int
	Public Player2_Answer_1_1,Player2_Answer_1_2,Player2_Answer_1_3,Player2_Answer_1_4 , Player2_Answer_2_1,Player2_Answer_2_2,Player2_Answer_2_3,Player2_Answer_2_4 , Player2_Answer_3_1,Player2_Answer_3_2,Player2_Answer_3_3,Player2_Answer_3_4 , Player2_Answer_4_1,Player2_Answer_4_2,Player2_Answer_4_3,Player2_Answer_4_4  As Int

	Public Answer_1,Answer_2,Answer_3,Answer_4,UserName_1_Avatar_RND,UserName_2_Avatar_RND,UserName_3_Avatar_RND, _
	Calculation_type,Game_Player1_Playing,Game_Player3_Playing,UserName_1_Data_Tool_1,UserName_1_Data_Tool_2, _
	UserName_1_Data_Tool_3,UserName_1_Level,UserName_2_Level , _
	StartGameTime , StartGameTimeChance , Reward_ADS_Price ,UserName_1_Color_R,UserName_1_Color_G,UserName_1_Color_B , _
	UserName_2_Color_R,UserName_2_Color_G,UserName_2_Color_B ,UserName_3_Color_R,UserName_3_Color_G,UserName_3_Color_B , _
	Player1_RND_Select_Answer ,UserName_1_RND_Select_Question, UserName_1_Speed,UserName_2_Speed , _
	UserName_2_IQ ,UserName_1_Money , UserName_2_Money , _
	QuestionTypeSelect ,UserName_3_ChallengeRisk,UserName_3_ChallengeTime,UserName_2_Risk,UserName_1_PriceRisk, _
	UserName_2_PriceRisk ,ItemTrue,Game_Player1_Playing_time, _
	UserName_3_ChallengeSpeed,UserName_3_ChallengeAnswer,ProgressBar_3Player_Challeng,Progress,UserName_3_ChallengeLoading, _
	GotoTAB,GotoSubTAB,StarWinnerNumber,MusicNameRandomSelect_GamePlay,Crack,loopChanceTime,UserName_1_IQ,SpeedAnswerPlayer2   As Int

	Public MusicBackground , MusicEffect,Language,UserName_1 ,UserName_2 , UserName_3 ,UserName_1_Avatar,WalletChance,SourceADS,ADS_Reward_Recive, _
	UserName_2_Avatar,UserName_3_Avatar, Shop_Information , UserName_1_Color,UserName_2_Color,UserName_3_Color,GameStatus,iQ_CHAR_STAR,Spinner_ResponsiveSpeed_text, _
	Question_Text,Label_Player2_FinishGame_Risk_text,Label_Player3_Challenge_Risk_text,UserName_1_IQ_Text,UserName_2_IQ_Text As String

    '***Language***
	
	Public  L_ChallengeSpeed_Elapsed,L_IQ_Started , L_Label_Programmers,L_Titlemsg_RestartGame,L_Textmsg_RestartGame,L_Price,L_Player3_ChallengeSearch_Confirmed_Withdrawal_Amount, _
	 L_Player3_ChallengeSearch_Confirm_Withdrawal_Amount,L_Label_Player3_ChallengeSearch_PlayChallenge_Text, _
	 L_Label_Player3_ChangeChallenge_Text,L_ShopingCenter_Shop_Information_Message_3,L_Cancel,L_No, _
	L_Label_Player3_ChallengeSearch_Title,L_Label_3_Player_Text,L_PlayerName1,L_PlayerName2 , L_Yes, _
	L_Error,L_Message,L_Placement,L_Titlemsg, L_Textmsg , L_TitleMSGExit, L_TextMSGExit,L_Label_About_Title, _
	L_Label_About_Text, L_Label_About_Exit_Text, L_Label_About_Help_Text,L_Label_Setting_Help,L_Label_Level_IQ_Text_AI, _
	 L_Label_About_Shop_Text, L_Label_About_Home_Text,L_Reward_Yes,L_Reward_No ,L_InternetError , _
	L_Label_Home_Text, L_Label_Title_Help, L_Label_Exit_Help_Text, L_Label_About_Help_Text, L_Label_Shop_Help_Text, _
    L_Label_Help_Object_Text_1, L_Label_Help_Object_Text_2, L_Label_Help_Object_Text_3, L_Label_Help_Object_Text_4, _
	 L_Label_Help_Object_Text_5, L_Label_Help_Object_Text_6, L_Label_Home_Help_Text,L_Label_Help_Help_Text, _
    L_Label_Help_Object_Text_7, L_Label_Help_Object_Text_8, L_Label_Help_Object_Text_9, L_Label_Help_Object_Text_10, _
	 L_Label_Help_Object_Text_11, L_Label_Help_Object_Text_12, L_Label_Help_Object_Text_13, _
	  L_Label_Help_Object_Text_15, L_Label_Exit_Text, L_Label_Help_Object_Text_14, _
	 L_Label_Help_Object_Text_16, L_Label_Help_Object_Text_17, L_Label_ShopingCenter_Wallet_PAY_Note1, _
    L_Label_Application_Name_Menu, L_Label_Tab_1, L_Label_Tab_2, L_Label_Tab_3, L_Label_Tab_4, _
	 L_Label_Help_Text, L_Label_2_Player_Text, L_Label_1_Player_Text, L_Label_ShopingCenter_PriceEye_Icon, _
    L_Label_Application_Version, L_Label_Title_Level, L_Label_Title_Setting, L_Label_Setting_MusicBackground, _
	L_Label_Setting_MusicEffect, L_Label_Setting_Language, L_Label_ShopingCenter_PriceThunder_Information, _
    L_Spinner_Setting_Language_English, L_Spinner_Setting_Language_Persian, L_Label_ResponsiveSpeed, _
	L_Spinner_ResponsiveSpeed_Hard,L_Spinner_ResponsiveSpeed_Easy, L_Label_ShopingCenter_PriceTime_Icon, _
	L_Spinner_ResponsiveSpeed_Normal,L_Label_Title_UserInformation, L_EditText_UserName, L_Label_User_Level, _
	L_Label_Setting_About,L_Label_Setting_RestartGame, L_Label_ShopingCenter_Shop_MoneyBag_MyMoney , _
    L_Label_User1_Money,L_Label_User2_Money,L_Label_User3_Money, L_Label_Level_IQ_Text, L_Label_Tool_Time_Text, _
	L_Label_Tool_Eye_Text, L_Label_Tool_Thunder_Text ,L_Label_ShopingCenter_Wallet_MoneyBag_MyMoney_Note, _
    L_Label_Title_ShopingCenter, L_Label_ShopingCenter_Tool_Text_Time, L_Label_ShopingCenter_Tool_Text_Eye, _
	L_Label_ShopingCenter_Tool_Text_Thunder, L_Label_ShopingCenter_Info_ADS, L_Label_ShopingCenter_Info_MONEY, _
	L_Label_Title_ShopingCenter, L_Label_ShopingCenter_Shop_MoneyBag_MyMoney_Note,L_Label_MoneyBag, _
	L_Label_ShopingCenter_Shop_Information, L_Label_ShopingCenter_PriceTime_Information, _
	 L_Label_ShopingCenter_PriceTime, L_Label_ShopingCenter_PriceTime_MAX, L_Restart_Game, _
	L_Label_ShopingCenter_PriceTime_MINE, L_Label_ShopingCenter_PriceEye_Information, _
	 L_Label_ShopingCenter_PriceEye, L_Label_ShopingCenter_PriceEye_MAX,L_Label_FinishGame_Information_4 , _
	L_Label_ShopingCenter_PriceEye_MINE, L_Panel_ShopingCenter_PriceThunder, _
	 L_Label_ShopingCenter_PriceThunder_Icon, L_Label_ShopingCenter_PriceThunder, _
	L_Label_ShopingCenter_PriceThunder_MAX, L_Label_ShopingCenter_PriceThunder_MINE, _
	 L_Label_ShopingCenter_Wallet_MoneyBag_MyMoney, L_Label_ShopingCenter_Wallet_Ads_Note1, _
	L_Label_ShopingCenter_Wallet_Ads_Play, L_Label_ShopingCenter_Wallet_Ads_Note2, _
	 L_Label_ShopingCenter_Wallet_PAY_Note2, L_Label_ShopingCenter_Wallet_StartPAY_100000, _
	L_Label_ShopingCenter_Wallet_StartPAY_250000, L_Label_ShopingCenter_Wallet_StartPAY_500000, _
	 L_Label_ShopingCenter_Wallet_Chance_Note1, L_Label_ShopingCenter_Wallet_StartPAY_1000000, _
	L_Label_ShopingCenter_Wallet_Chance_Note2, L_Label_ShopingCenter_Wallet_Chance_RandomPrice, _
	 L_Label_ShopingCenter_Wallet_Chance_RandomPrice_Key,L_Confirmed_Withdrawal_Amount , _
	L_ShopingCenter_Shop_Information_Message_1,L_ShopingCenter_Shop_Information_Message_2, _
	L_ShopingCenter_Shop_Information_Message_4,L_ShopingCenter_Shop_Information_Message_5 , _
	L_Label_FinishGame_Information_1,L_Label_FinishGame_Information_2,L_Label_FinishGame_Information_3, _
	L_Label_FinishGame_RepetLevel_Text,L_Label_FinishGame_NextLevel_Text,L_Random_question  , _
	L_Label_ShopingCenter_Wallet_Chance_RandomPrice , L_Label_ShopingCenter_Wallet_Chance_RandomPrice_AddMoney  , _
	L_Do_You_Want_To_Resrart_Game,L_ToastMessageShow_ChangeChallenge_Info_1 , _
	L_StartAds,L_Rewarded_loaded,L_Rewarded_clicked,L_Rewarded,L_Rewarded_no,L_Rewarded_shown , _
	L_Question_type_settings_Title,L_sum_of_numbers,L_Subtraction_of_numbers,L_Multiply_numbers, _
	L_Label_Player2_AISearch_Title ,L_Label_Player2_AISearch_Level ,L_Label_Player2_AISearch_MyMoney_Title , _
	L_Panel_Player2_AISearch_MyMoney_Title,L_Label_Player2_AISearch_MyMoney, _
	L_Label_Player2_AISearch_ChangeAI_Text,L_Dividing_numbers,L_Label_Player2_AISearch_Home_Text , _
	L_Label_Player2_AISearch_PlayGame_Text , L_Risk,L_PriceRisk,L_Confirm_Withdrawal_Amount, _
	L_Confirmed_Reward_Deposited_Into_Wallet , L_ChallengeSpeed_Sec , _
	L_Challenge_Risk , L_Challenge_PriceRisk , L_ChallengeSearching, L_ChallengeSpeed, _
	L_ChallengeSpeed_Confirmed_Reward_Deposited_Into_Wallet,L_Username_Challenger , _
	L_ToastMessageShow_ChangeAI_Info_1,L_ToastMessageShow_ChangeAI_Info_2, _
	L_ToastMessageShow_ChangeChallenge_Info_2 As String
	
	
End Sub

Sub Service_Create
	F_Master.Initialize
	F_UserName.Initialize
	F_SaveLoadRestart.Initialize
	F_Language.Initialize
	F_Sound.Initialize
	F_MakeQuestion.Initialize
	F_Message.Initialize
	F_ADS.Initialize

	MediaPlayerBG.Initialize
	MediaPlayerEF.Initialize
	
	UserName_List_Woman.Initialize	
	UserName_List_Man.Initialize
	ListSaveGame_Player1_LINE_0.Initialize
	ListSaveGame_Player1_LINE_1.Initialize
	ListSaveGame_Player1_LINE_2.Initialize
	ListSaveGame_Player2_LINE_0.Initialize
	ListSaveGame_Player2_LINE_1.Initialize
	ListSaveGame_Player2_LINE_2.Initialize
	ListSaveGame_Player3_LINE_0.Initialize
	ListSaveGame_Player3_LINE_1.Initialize
	ListSaveGame_Player3_LINE_2.Initialize

	F_UserName.UserName	
End Sub

' ذخیره در فایل 
Sub Service_Destroy
	F_SaveLoadRestart.SaveGame
End Sub

Sub Service_Start (StartingIntent As Intent)
End Sub


Sub Service_TaskRemoved
End Sub
Sub Application_Error (Error As Exception, StackTrace As String) As Boolean
	Return True
End Sub
