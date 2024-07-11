; Define the folder to commit
folderPath := "C:\Users\chris\Documents\WolframAlpha Notebook Edition\WSRP\Universal Set of Quantum Gates\Git Good"

; Function to commit the folder to git
CommitToGit() {
    global folderPath
    FormatTime, dateTime,, yyyy-MM-dd HH:mm:ss
    Run, %comspec% /c cd "%folderPath%" && git add . && git commit -m "%dateTime%",, Hide
}

; Detect left mouse button clicks
~LButton::
CommitToGit()
return
