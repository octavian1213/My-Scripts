Dim objNetwork
Dim userName
Dim FSO
Dim Folder
dim fs
dim a
Const ForReading = 1, ForWriting = 2, ForAppending = 8

Set WshShell = CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")
Set objNetwork = CreateObject("WScript.Network")


If NOT (FSO.FolderExists("C:\Win10Key")) Then
    ' Delete this if you don't want the MsgBox to show
    MsgBox("Local folder doesn't exists, creating...")
    'splitString = Split(userProfile, "\")

    ' Create folder
    MsgBox("C:\Win10Key")
    FSO.CreateFolder("C:\Win10Key")
End If

Set fs = CreateObject("Scripting.FileSystemObject")
Set a = fs.CreateTextFile("C:\Win10Key\Win10Key.txt", ForAppending, True)

MsgBox ConvertToKey(WshShell.RegRead("HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\DigitalProductId"))

Function ConvertToKey(Key)
Const KeyOffset = 52
i = 28
Chars = "BCDFGHJKMPQRTVWXY2346789"
Do
Cur = 0
x = 14
Do
Cur = Cur * 256
Cur = Key(x + KeyOffset) + Cur
Key(x + KeyOffset) = (Cur \ 24) And 255
Cur = Cur Mod 24
x = x -1
Loop While x >= 0
i = i -1
KeyOutput = Mid(Chars, Cur + 1, 1) & KeyOutput
If (((29 - i) Mod 6) = 0) And (i <> -1) Then
i = i -1
KeyOutput = "-" & KeyOutput
End If
Loop While i >= 0
ConvertToKey = KeyOutput
a.WriteLine (KeyOutput)
a.Close
End Function