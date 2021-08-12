#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


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


o::ö
O::Ö

^r::
send, {BS 4}
random, n, 1, 9999
send, %n%
sleep, 100
Return


::jack::{BS 1}jake

::xd::{BS 100}

::albania::{BS 1}ALBANIA

::sus::{BS 1}ඞ


!^F4:: DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)


!x::ExitApp
