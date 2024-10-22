#Persistent
SetWorkingDir, %A_ScriptDir%

defaultDir := "C:\Users\" A_Username "\Desktop\ProblemSolving\CodeForces"

problemSolvingDir := "C:\Users\" A_Username "\Desktop\ProblemSolving"
if !FileExist(problemSolvingDir)
{
    FileCreateDir, %problemSolvingDir%
    subFolders := ["LeetCode", "CodeForces", "CodeWars", "HackerRank", "NeetCode"]
    for _, folder in subFolders
    {
        FileCreateDir, %problemSolvingDir%\%folder%
    }
}

IfExist, lastUsedDir.txt
{
    FileRead, defaultDir, lastUsedDir.txt
}

^+c::
Gui, New, , Create New File
Gui, Add, Text, , Problem Name:
Gui, Add, Edit, vFileName w200
Gui, Add, Text, , Folder:
Gui, Add, Edit, vFolderPath w200, %defaultDir%
Gui, Add, Button, gBrowseFolder, Browse
Gui, Add, Button, gCreateFile, Create File
Gui, Show
return

BrowseFolder:
FileSelectFolder, selectedDir, %problemSolvingDir%, 3, Select folder to save the file
if (selectedDir != "")
{
    GuiControl,, FolderPath, %selectedDir%
    defaultDir := selectedDir
    FileDelete, lastUsedDir.txt
    FileAppend, %defaultDir%, lastUsedDir.txt
}
return

CreateFile:
Gui, Submit, NoHide
if (FileName != "" && FolderPath != "")
{
    filePath := FolderPath "\" FileName ".cpp"
    FileAppend, %Clipboard%, %filePath%
    MsgBox, The file has been created in %FolderPath%.
    Gui, Destroy
}
else
{
    MsgBox, Please enter both filename and folder path.
}
return

GuiClose:
Gui, Destroy
return
