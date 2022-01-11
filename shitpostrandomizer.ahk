#NoEnv
#SingleInstance, Force
SetWorkingDir %A_ScriptDir%
SetKeyDelay, 0
ComObjCreate("SAPI.SpVoice").Speak("Pronto para randomizar seus shitposts.")

global NumeroDeShitpost = 41



GetRandomShitpost(){
    Random, randomized, 1, %NumeroDeShitpost%

    FileReadLine, randomshitpostline, %A_ScriptDir%\lista.csv, %randomized%

    clipboard = %randomshitpostline%

    Send, %clipboard%{Enter}
}

*F6::
ComObjCreate("SAPI.SpVoice").Speak("Macro Suspenso")
Suspend, On
return

*^F6::
ComObjCreate("SAPI.SpVoice").Speak("Continuando Macro")
Suspend, Off
return

^s::
GetRandomShitpost()
return