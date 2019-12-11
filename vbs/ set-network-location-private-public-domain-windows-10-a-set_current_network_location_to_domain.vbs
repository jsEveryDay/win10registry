

If WScript.Arguments.length =0 Then
   Set objShell = CreateObject("Shell.Application")
   objShell.ShellExecute "wscript.exe", Chr(34) & WScript.ScriptFullName & Chr(34) & " Run", , "runas", 1 
Else 
   WScript.CreateObject("WScript.Shell").Run("PowerShell $net = get-netconnectionprofile;Set-NetConnectionProfile -Name $net.Name -NetworkCategory DomainAuthenticated"),0
End If 
