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
	Public xui As XUI
End Sub
Sub Globals
	Public ImageView_User_Avatar As ImageView
	Public ScrollView_Avatars As ScrollView
	'---Layout_Avatar {
	Public Panel_Avatar_1 As Panel
	Public ImageView_Avatar_1 As ImageView
	Public Panel_Avatar_2 As Panel
	Public ImageView_Avatar_2 As ImageView
	Public Panel_Avatar_3 As Panel
	Public ImageView_Avatar_3 As ImageView
	Public Panel_Avatar_4 As Panel
	Public ImageView_Avatar_4 As ImageView
	Public Panel_Avatar_5 As Panel
	Public ImageView_Avatar_5 As ImageView
	Public Panel_Avatar_6 As Panel
	Public ImageView_Avatar_6 As ImageView
	Public Panel_Avatar_7 As Panel
	Public ImageView_Avatar_7 As ImageView
	Public Panel_Avatar_8 As Panel
	Public ImageView_Avatar_8 As ImageView
	Public Panel_Avatar_9 As Panel
	Public ImageView_Avatar_9 As ImageView
	Public Panel_Avatar_10 As Panel
	Public ImageView_Avatar_10 As ImageView
	Public Panel_Avatar_11 As Panel
	Public ImageView_Avatar_11 As ImageView
	Public Panel_Avatar_12 As Panel
	Public ImageView_Avatar_12 As ImageView
	Public Panel_Avatar_13 As Panel
	Public ImageView_Avatar_13 As ImageView
	Public Panel_Avatar_14 As Panel
	Public ImageView_Avatar_14 As ImageView
	Public Panel_Avatar_15 As Panel
	Public ImageView_Avatar_15 As ImageView
	Public Panel_Avatar_16 As Panel
	Public ImageView_Avatar_16 As ImageView
	Public Panel_Avatar_17 As Panel
	Public ImageView_Avatar_17 As ImageView
	Public Panel_Avatar_18 As Panel
	Public ImageView_Avatar_18 As ImageView
	Public Panel_Avatar_19 As Panel
	Public ImageView_Avatar_19 As ImageView
	Public Panel_Avatar_20 As Panel
	Public ImageView_Avatar_20 As ImageView
	Public Panel_Avatar_21 As Panel
	Public ImageView_Avatar_21 As ImageView
	Public Panel_Avatar_22 As Panel
	Public ImageView_Avatar_22 As ImageView
	Public Panel_Avatar_23 As Panel
	Public ImageView_Avatar_23 As ImageView
	Public Panel_Avatar_24 As Panel
	Public ImageView_Avatar_24 As ImageView
	Public Panel_Avatar_25 As Panel
	Public ImageView_Avatar_25 As ImageView
	Public Panel_Avatar_26 As Panel
	Public ImageView_Avatar_26 As ImageView
	Public Panel_Avatar_27 As Panel
	Public ImageView_Avatar_27 As ImageView
	Public Panel_Avatar_28 As Panel
	Public ImageView_Avatar_28 As ImageView
	Public Panel_Avatar_29 As Panel
	Public ImageView_Avatar_29 As ImageView
	Public Panel_Avatar_30 As Panel
	Public ImageView_Avatar_30 As ImageView
	Public Panel_Avatar_31 As Panel
	Public ImageView_Avatar_31 As ImageView
	Public Panel_Avatar_32 As Panel
	Public ImageView_Avatar_32 As ImageView
	Public Panel_Avatar_33 As Panel
	Public ImageView_Avatar_33 As ImageView
	Public Panel_Avatar_34 As Panel
	Public ImageView_Avatar_34 As ImageView
	Public Panel_Avatar_35 As Panel
	Public ImageView_Avatar_35 As ImageView
	Public Panel_Avatar_36 As Panel
	Public ImageView_Avatar_36 As ImageView
	'---Layout_Avatar }

End Sub
Sub Activity_Resume
	Starter.F_SaveLoadRestart.LoadGame
End Sub
Sub Activity_Pause (UserClosed As Boolean)
	Starter.F_SaveLoadRestart.SaveGame
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout_Tab3_User_Avatar")
	Initialize
	ScrollView_Avatars.Panel.LoadLayout("Layout_Tab3_User_Avatar_SubPage")
	ScrollView_Avatars.Panel.Height = ScrollView_Avatars.Height + 500dip
End Sub

Sub Initialize
	ImageView_User_Avatar.Initialize("ImageView_User_Avatar")
End Sub

Sub Change_Avatar (AvatarSelect As String)
	Starter.F_Sound.MP_EF("",False)
	Starter.UserName_1_Avatar=AvatarSelect
	ImageView_User_Avatar.Bitmap = LoadBitmap(File.DirAssets, Starter.UserName_1_Avatar)
	Sleep(200)
	Starter.GotoTAB=3
	Activity.Finish
End Sub


Public Sub ImageView_Avatar_1_Click
	Avatar_Decolor
	Panel_Avatar_1.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(1).png")
End Sub
Public Sub ImageView_Avatar_2_Click
	Avatar_Decolor
	Panel_Avatar_2.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(2).png")
End Sub
Public Sub ImageView_Avatar_3_Click
	Avatar_Decolor
	Panel_Avatar_3.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(3).png")
End Sub
Public Sub ImageView_Avatar_4_Click
	Avatar_Decolor
	Panel_Avatar_4.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(4).png")
End Sub
Public Sub ImageView_Avatar_5_Click
	Avatar_Decolor
	Panel_Avatar_5.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(5).png")
End Sub
Public Sub ImageView_Avatar_6_Click
	Avatar_Decolor
	Panel_Avatar_6.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(6).png")
End Sub
Public Sub ImageView_Avatar_7_Click
	Avatar_Decolor
	Panel_Avatar_7.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(7).png")
End Sub
Public Sub ImageView_Avatar_8_Click
	Avatar_Decolor
	Panel_Avatar_8.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(8).png")
End Sub
Public Sub ImageView_Avatar_9_Click
	Avatar_Decolor
	Panel_Avatar_9.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(9).png")
End Sub
Public Sub ImageView_Avatar_10_Click
	Avatar_Decolor
	Panel_Avatar_10.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(10).png")
End Sub
Public Sub ImageView_Avatar_11_Click
	Avatar_Decolor
	Panel_Avatar_11.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(11).png")
End Sub
Public Sub ImageView_Avatar_12_Click
	Avatar_Decolor
	Panel_Avatar_12.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(12).png")
End Sub
Public Sub ImageView_Avatar_13_Click
	Avatar_Decolor
	Panel_Avatar_13.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(13).png")
End Sub
Public Sub ImageView_Avatar_14_Click
	Avatar_Decolor
	Panel_Avatar_14.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(14).png")
End Sub
Public Sub ImageView_Avatar_15_Click
	Avatar_Decolor
	Panel_Avatar_15.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(15).png")
End Sub
Public Sub ImageView_Avatar_16_Click
	Avatar_Decolor
	Panel_Avatar_16.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(16).png")
End Sub
Public Sub ImageView_Avatar_17_Click
	Avatar_Decolor
	Panel_Avatar_17.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(17).png")
End Sub
Public Sub ImageView_Avatar_18_Click
	Avatar_Decolor
	Panel_Avatar_18.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(18).png")
End Sub
Public Sub ImageView_Avatar_19_Click
	Avatar_Decolor
	Panel_Avatar_19.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(19).png")
End Sub
Public Sub ImageView_Avatar_20_Click
	Avatar_Decolor
	Panel_Avatar_20.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(20).png")
End Sub
Public Sub ImageView_Avatar_21_Click
	Avatar_Decolor
	Panel_Avatar_21.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(21).png")
End Sub
Public Sub ImageView_Avatar_22_Click
	Avatar_Decolor
	Panel_Avatar_22.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(22).png")
End Sub
Public Sub ImageView_Avatar_23_Click
	Avatar_Decolor
	Panel_Avatar_23.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(23).png")
End Sub
Public Sub ImageView_Avatar_24_Click
	Avatar_Decolor
	Panel_Avatar_24.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(24).png")
End Sub
Public Sub ImageView_Avatar_25_Click
	Avatar_Decolor
	Panel_Avatar_25.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(25).png")
End Sub
Public Sub ImageView_Avatar_26_Click
	Avatar_Decolor
	Panel_Avatar_26.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(26).png")
End Sub
Public Sub ImageView_Avatar_27_Click
	Avatar_Decolor
	Panel_Avatar_27.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(27).png")
End Sub
Public Sub ImageView_Avatar_28_Click
	Avatar_Decolor
	Panel_Avatar_28.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(28).png")
End Sub
Public Sub ImageView_Avatar_29_Click
	Avatar_Decolor
	Panel_Avatar_29.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(29).png")
End Sub
Public Sub ImageView_Avatar_30_Click
	Avatar_Decolor
	Panel_Avatar_30.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(30).png")
End Sub
Public Sub ImageView_Avatar_31_Click
	Avatar_Decolor
	Panel_Avatar_31.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(31).png")
End Sub
Public Sub ImageView_Avatar_32_Click
	Avatar_Decolor
	Panel_Avatar_32.Color=Colors.RGB(75,0,130)
	Change_Avatar("Avatar(32).png")
End Sub

Sub Avatar_Decolor
	Panel_Avatar_1.Color=Colors.White
	Panel_Avatar_2.Color=Colors.White
	Panel_Avatar_3.Color=Colors.White
	Panel_Avatar_4.Color=Colors.White
	Panel_Avatar_5.Color=Colors.White
	Panel_Avatar_6.Color=Colors.White
	Panel_Avatar_7.Color=Colors.White
	Panel_Avatar_8.Color=Colors.White
	Panel_Avatar_9.Color=Colors.White
	Panel_Avatar_10.Color=Colors.White
	Panel_Avatar_11.Color=Colors.White
	Panel_Avatar_12.Color=Colors.White
	Panel_Avatar_13.Color=Colors.White
	Panel_Avatar_14.Color=Colors.White
	Panel_Avatar_15.Color=Colors.White
	Panel_Avatar_16.Color=Colors.White
	Panel_Avatar_17.Color=Colors.White
	Panel_Avatar_18.Color=Colors.White
	Panel_Avatar_19.Color=Colors.White
	Panel_Avatar_20.Color=Colors.White
	Panel_Avatar_21.Color=Colors.White
	Panel_Avatar_22.Color=Colors.White
	Panel_Avatar_23.Color=Colors.White
	Panel_Avatar_24.Color=Colors.White
	Panel_Avatar_25.Color=Colors.White
	Panel_Avatar_26.Color=Colors.White
	Panel_Avatar_27.Color=Colors.White
	Panel_Avatar_28.Color=Colors.White
	Panel_Avatar_29.Color=Colors.White
	Panel_Avatar_30.Color=Colors.White
	Panel_Avatar_31.Color=Colors.White
	Panel_Avatar_32.Color=Colors.White
End Sub
