'
'Minecraft Education Edition Auto Sign In Tool for Japanese Environment
'Author @naominix
'
Option Explicit
Dim id,pass,num,WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")

num = InputBox("ID番号を入力してください")

id = "test" & num & "@subdomain.onmicrosoft.com"
pass = "PASSWORD"

WshShell.AppActivate("サービスに接続しています")
WshShell.SendKeys "{TAB}"
WScript.Sleep 1000
WshShell.SendKeys id
WScript.Sleep 1000
WshShell.SendKeys "{TAB}"
WScript.Sleep 1000
WshShell.SendKeys pass
WScript.Sleep 1000
WshShell.SendKeys "~"
