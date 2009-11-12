'(C) Copyright 2009 hm
' no warranty at all
' this is just a demo

Option Explicit

'tell user what to expect
msgbox "Although func1() returns """ + Cstr(func1()) + """, you will see func(2) run as VBS does not ""short circuit"" boolean operators in conditionals."

' if the "and" would work correctly, then func2() should not be called at all
if (func1() and func2() ) then
	'nothing
end if

'if (func1() or func2() ) then
'		msgbox "Although func1() returns """ + Cstr(func1()) + """, you will see func(2) run as VBS does not ""short circuit"" boolean operators in conditionals."
'end if

function func2()
	'displays a popup message if function is called
	msgbox "this is a func2() popup"
end function

function func1()
	'returns false unconditionally
	func1 = false
end function

'end script
Wscript.Quit()