#NoEnv
#SingleInstance, Force
SetWorkingDir %A_ScriptDir%
SetKeyDelay, 0


global NumeroDeShitpost = 41



GetRandomShitpost(){
    Random, randomized, 1, %NumeroDeShitpost%

    FileReadLine, randomshitpostline, %A_ScriptDir%\lista.csv, %randomized%

    clipboard = %randomshitpostline%

    Send, %clipboard%{Enter}
}

^s::
GetRandomShitpost()
return