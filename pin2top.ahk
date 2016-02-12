Menu, Tray, NoStandard 
Menu, Tray, Add, Exit, Exit, 
Menu, Tray, Default, Exit 

#SingleInstance force
Process, priority,, BelowNormal
Return

^SPACE::Winset,Alwaysontop,TOGGLE,A
Return

Exit:
WinGet, id, List
Loop, %id%
{
    this_id := id%A_Index%
    WinSet, Alwaysontop, OFF, ahk_id %this_id%
}
ExitApp
Return