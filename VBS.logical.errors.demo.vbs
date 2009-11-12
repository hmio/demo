'(C) Copyright 2009 hm

Option Explicit

msgbox "Although func1() returns """ + Cstr(func1()) + """, you will see func(2) run as VBS does not ""short circuit"" boolean operators in conditionals."

if (func1() and func2() ) then
	'nothing
end if

'if (func1() or func2() ) then
'		msgbox "Although func1() returns """ + Cstr(func1()) + """, you will see func(2) run as VBS does not ""short circuit"" boolean operators in conditionals."
'end if


function func2()
	'nothing
	msgbox "this is a func2() popup"
end function

function func1()
	'return false unconditionally
	func1 = false
end function

Wscript.Quit()