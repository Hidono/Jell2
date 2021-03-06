#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance Force

full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try ; leads to having the script re-launching itself as administrator
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}

msgBox, 4 , jell2 , JELP ,

IfMsgBox Yes
{
    run, https://youtu.be/ZMuHPpG7OwY
    run, https://upload.wikimedia.org/wikipedia/commons/0/01/Rattus_norvegicus_1.jpg ;brown rat
    run, https://en.wikipedia.org/wiki/Rat ;rat wikipedia
    run, https://upload.wikimedia.org/wikipedia/commons/b/b9/A_river_rat.jpg ;river rat
    run, https://en.wiktionary.org/wiki/rat ;rat wiktionary
    run, https://upload.wikimedia.org/wikipedia/en/6/62/Rat_in_a_suburban_Vancouver_driveway.jpg ;driveway rat
    run, https://chinesenewyear.net/zodiac/rat/ ;rat chinese zodiac
    run, http://pngimg.com/uploads/rat_mouse/rat_mouse_PNG23553.png
    run, https://en.wikipedia.org/wiki/Karni_Mata_Temple ;rat temple
    run, https://emojipedia.org/rat/ ;rat emoji
    run, http://ratbehavior.org/vomit.htm ;rats can't vomit
    run, http://static.boredpanda.com/blog/wp-content/uploads/2016/08/cute-kittens-67-57b32a998544a__605.jpg
	
}
else
gosub, mouse

mouse:

#persistent
coordmode, mouse, screen

mousegetpos, sx, sy

settimer, check, 1000
return

check:
mousegetpos, cx, cy
if (cx != sx or cy != sy)
{
  ; mouse has moved, calculate by how much
  if (cx > (sx+1) or cx < (sx-1) or cy > (sy+1) or cy < (sy-1))
  {
random, xr, 1, -1

random, yr, 1, -1

MouseMove, %xr%, %yr%, 1, R
  }  
}      
return


LButton::
Sleep, 200
Click
Return

RButton::
Sleep, 200
Click Right
Return


*~$Space:: 
Sleep 50
Loop 
{ 
    GetKeyState, SpaceState, Space, P 
    If SpaceState = U 
        break  
    Sleep 1 
    Send, {Blind}{Space} 
} 
Return


$e::Send e


$!h::Send h
h::j
H::J


o::Send ??
+O::Send ??

^r::
send, {BS 4}
random, n, 1, 9999
send, %n%
sleep, 100
Return


::jack::{BS 1}jake

::xd::{BS 100}

::albania::{BS 1}ALBANIA

::sus::{BS 1}???

::potify::https://p{U+006F}tifysite.wixsite.c{U+006F}m/p{U+006F}tify
::p??tify::https://p{U+006F}tifysite.wixsite.c{U+006F}m/p{U+006F}tify


!^F4:: DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)


!^h::run steam://rungameid/367520


$;::Send {U+003A}
$+;::Send {U+003B}


!x::ExitApp
