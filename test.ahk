;^ctrl +shift !alt <!左alt >!右alt
; 光标移动
!i::
Send, {Up}
return
!k::
Send, {Down}
return
!j::
Send, {Left}
Return
!l::
Send, {Right}
Return
!y::
Send, {Home}
Return,
!u::
Send, {End};
Return,
^l:: ; ctrl + l 选中当前行
Send, {Home} {Shift Down}{End}{Shift Up}
Return
#v::
    Run, C:\Users\Mloong\AppData\Local\Programs\Microsoft VS Code\Code.exe
Return

:*:log::
Send, console.log(){Left}
Return

:*://::
Send, //{Space}
Return

:*:cons::
Send, const
Return

/*
:*:=::
Send, {Space}={Space}
Return
*/
:*:'::
Send,''{Left}
Return

!3::Reload

^Esc:: Suspend ;按ctrl+esc 暂停脚本， 再按一次取消暂停

:*:'::
Send, ''{Left}
Return


!Enter::  ; alt键+回车键  将光标移动到下一行
send {End}{Enter} 
return



Right::
Send, {Right}{Right}
return
; ----------------1.  html标签----------------

:*:hdiv::<div></div>{Left 6} ; div标签
return

:*:hslot::<slot></slot>{Left 6} ; slot标签
return

:*:htable::<table cellpadding="0" cellspacing="0" border="0"></table>{Left 8} ;table标签
return

:*:htr::<tr></tr>{Left 5} ;tr标签
return

:*:htd::<td></td>{Left 5} ;td标签
return

:*:hth::<th></th>{Left 5} ;td标签
return

:*:haa::<a href="{shift down}{3}{shift up}"></a>{Left 4} ;a标签
return

:*:hul::<ul></ul>{Left 5} ; ul标签
return

:*:hdl::<dl></dl>{Left 5} ; dl 标签
return

:*:hdt::<dt></dt>{Left 5} ; dt 标签
return

:*:hdd::<dd></dd>{Left 5} ; dd 标签
return

:*:himg::<img src="" />{Left 4} ;img标签
return

:*:hh1::<h1></h1>{Left 5} ; h1标签
return

:*:hh2::<h2></h2>{Left 5} ;h2标签
return

:*:hh3::<h3></h3>{Left 5} ;h3标签
return

:*:hh4::<h4></h4>{Left 5} ; h4标签
return

:*:hpp::<p></p>{Left 4} ; p 标签
return

:*:hii::<i></i>{Left 4} ; i 标签
return

:*:hem::<em></em>{Left 5} ; em 标签
return

:*:hstrong::<strong></strong>{Left 9} ; strong标签
return

:*:hbb::<b></b>{Left 4} ; b标签
return

:*:hform::<form action="{shift down}{3}{shift up}" method="post"></form>{Left 7} ; form标签
return

:*:hcheck::<input type="checkbox" name=""/> ; checkbox标签
return

:*:hfield::<fieldset></fieldset>{Left 11} ; fieldset 标签
return

:*:hradio::<input type="radio" name="" /> ; radio 标签
return

:*:texth::<textarea name=""></textarea>{Left 11} ; textarea 标签
return

:*:hipt::<input type="text" name="" value="" /> ; input标签
return

:*:hslt::<select name=""></select>{Left 9} ; select 标签
return

:*:hopt::<option value=""></option>{Left 11} ; option 标签
return

:*:hlabel::<label></label>{Left 8} ; lable标签
return

:*:hbtn::<button type="submit"></button>{Left 9} ; button 标签

:*:hspan::<span></span>{Left 7} ; span 标签
return

:*:hbr::<br /> ; br 标签
return

:*:hiframe::<iframe name="" frameborder="0" scrolling="no" src=""></iframe>{Left 11} ; iframe 标签
return

:*:hscript::<script src="" type="text/javascript"></script>{Left 34} ; script 标签
return

:*:hlink::<link rel="stylesheet" href="" type="text/css" />{Left 20} ; link 标签
return

:*:hheader::<header></header>{Left 9} ; header 标签
return

:*:hfooter::<footer></footer>{Left 9} ; footer 标签
return

:*:harticle::<article></article>{Left 10} ; article 标签
return

:*:hsection::<section></section>{Left 10} ; section 标签
return

:*:haside::<aside></aside>{Left 8} ; aside 标签
return

:*:htplt::<template></template>{Left 11} ; template 标签
return

:*:hblock::<block></block>{Left 8} ; block 标签
return

:*:htext::<text></text>{Left 8} ; text 标签
return

:*:hview::<view></view>{Left 7} ; text 标签
return

:*:bgcc::background-color:#;{Left 1} ; 背景色css
return

:*:bgic::background-image:;{Left 1} ; 背景图css
return







;问道
#IfWinActive ahk_class AskTao 
{
    $F1:: ;这里是ctrl + tab 切换页签 使用快捷键 1
    loop 5 {
    Sleep, 800
    Click 	
    Send, {Ctrl Down}1{Ctrl Up} ;
    Sleep 1000,
    Send, {Ctrl Down}{Tab}{Ctrl Up} ;快捷键切换页签
    }
    Return

    $F2:: ;这里是ctrl + tab 切换页签 使用快捷键 2
    loop 5 {
    Sleep, 800
    Click 2
    Send, {Ctrl Down}2{Ctrl Up} ;
    Sleep 1000,
    Send, {Ctrl Down}{Tab}{Ctrl Up} ;快捷键切换页签
    }
    Return
    :*:e:: ;继续
    loop 5 {
    Sleep, 1200
    Click 2
    Sleep 1200,
    Send, {Ctrl Down}{Tab}{Ctrl Up} ;快捷键切换页签
    }
    Return

    ^D:: ;全体防御
    loop 5 {
    Sleep, 800
    Click 2
    Send, {Alt Down}d{Alt Up}
    Sleep, 500
    Send, {Alt Down}d{Alt Up}
    Sleep, 500
    Send, {Alt Down}z{Alt Up}
    Sleep, 800
    Send, {Ctrl Down}{Tab}{Ctrl Up} ;快捷键切换页签
    }
    Return

    :*:t:: ; 组队
    Send,{AltDown}t{AltUp}
    Return
    
    :*:r:: ;抢财神
    SetTimer, cl, 300
    Return
    cl:
    {
        Click
    }
    Return
    
    :*:w:: ;给宠物补状态 右alt + l
    loop 5 {
    Sleep, 1500
    Click Right
    Sleep 1200,
    Send, {Ctrl Down}{Tab}{Ctrl Up} ;快捷键切换页签
    }
    Return

    :*:q:: ; 按键F1
    Send, {F1}
    Return

    :*:a:: ; 按键F1
    Send, {F2}
    Return

    ^s::
    loop 100 {
        Click Right
    } 
    Return
}
/*

/*
    F1::
    ;F1是热键，按F1触发下面的功能 
    MouseGetPos, mouseX, mouseY     
    ;获取鼠标的横坐标和纵坐标赋值给mouseX和mouseY 
    PixelGetColor, color, %mouseX%, %mouseY%, RGB 
    ;获取横坐标和纵坐标（即mouseX和mouseY）的颜色值并赋值给color 
    clipboard = (%mouseX%,%mouseY%)=="%color%" 
    ;复制（方便粘贴数据） mouseX,mouseY==color   
    tooltip, %color% ;鼠标所在XY值和颜色值已发送到剪贴板。`n5秒后自动消失`n请粘贴到指定位置`n 
    sleep 1000  ;休眠5秒 让tip显示5秒
    tooltip ;5秒后去掉浮框提示
    return  ;结束
    ;
    ;XY = FindMultiColor(0, 0, 1024, 768, "886020", "5|3|e0d078,6|5|c09c68,3|4|887038,-1|2|584028", 1.0, 1)


    F2::
    PixelSearch, FoundX, FoundY, 0, 0, 1920, 1080, 0x303C18, 5, Fast
    
    if ErrorLevel
        MsgBox, error
    else
        MouseMove, FoundX, FoundY
        Click 2
    return  ;结束
}
$F6::
SetTimer, Label0, Off
Return
v_Enable=0
$F5::
{
v_Enable:=!v_Enable
If (v_Enable=0) {
SetTimer, Label0, Off
}
Else 
{
SetTimer, Label0, 15000
}
}
Return
Label0:
{
Send, a
}
Return
*/

$F3::
CoordMode, Mouse, Screen
Click 1129,637, 0
Return

$F4::
CoordMode Pixel, Screen
CoordMode, Mouse, Screen
PixelSearch, pX, pY, 1110, 437, 1916, 1038, 0xF5F0A1, 5, Fast
if ErrorLevel
    MsgBox, That color was not found in the specified region.
else
    MsgBox The icon was found at %pX%x%pY%.
    MouseMove, pX+10, pX+10 0, ,
    Click,
Return

$F5::
SetTimer, Label, 60000
Return
Label:
{
Click, 2
Sleep, 1000
Sleep 800,
Send, {Ctrl Down}{Tab}{Ctrl Up} ;快捷键切换页签
}
Return
