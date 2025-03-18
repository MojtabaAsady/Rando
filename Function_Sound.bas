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

Public Sub MP_BG
	Dim MusicName As String

	If Starter.MusicBackground="True" Then
		
		If Starter.MusicNameRandomSelect_GamePlay=1 Then
			MusicName="Music_BG_GamePlay(1).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=2 Then
			MusicName="Music_BG_GamePlay(2).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=3 Then
			MusicName="Music_BG_GamePlay(3).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=4 Then
			MusicName="Music_BG_GamePlay(4).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=5 Then
			MusicName="Music_BG_GamePlay(5).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=6 Then
			MusicName="Music_BG_GamePlay(6).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=7 Then
			MusicName="Music_BG_GamePlay(7).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=8 Then
			MusicName="Music_BG_GamePlay(8).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=9 Then
			MusicName="Music_BG_GamePlay(9).mp3"
		else if Starter.MusicNameRandomSelect_GamePlay=10 Then
			MusicName="Music_BG_GamePlay(10).mp3"
		End If


		Starter.MediaPlayerBG.SetVolume(100,100)
		Starter.MediaPlayerBG.Load(File.DirAssets, MusicName)
		Starter.MediaPlayerBG.Looping=True
		Starter.MediaPlayerBG.Play
		
		Starter.MusicNameRandomSelect_GamePlay=Starter.MusicNameRandomSelect_GamePlay+1
		If Starter.MusicNameRandomSelect_GamePlay>10 Then
			Starter.MusicNameRandomSelect_GamePlay=1
		End If
	Else
		Starter.MediaPlayerBG.SetVolume(0,0)
	End If


End Sub

Public Sub MP_EF(EffectName As String,LoopMusic As Boolean)
	If Starter.MusicEffect="True" Then
		If EffectName=""  Then
			EffectName="MenuCheck.wav"
		End If
		Starter.MediaPlayerEF.SetVolume(100,100)
		Starter.MediaPlayerEF.Load(File.DirAssets, EffectName)'
		Starter.MediaPlayerEF.Looping=LoopMusic
		Starter.MediaPlayerEF.Play
	Else
		Starter.MediaPlayerEF.SetVolume(0,0)
	End If
End Sub