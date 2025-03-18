B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=12.8
@EndOfDesignText@
Sub Class_Globals
	Public intent As Intent
	Public URL As String
End Sub

Public Sub Initialize
   
End Sub

Sub OpenLinkWebsite
	intent.Initialize(intent.ACTION_VIEW, URL)
	' شروع Intent و باز کردن مرورگر
	StartActivity(intent)
End Sub
