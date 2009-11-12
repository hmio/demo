Option Explicit

if (func1() and func2() ) then
		msgbox "Although func1() returns """ + Cstr(func1()) + """, you will see func(2) run as VBS does not ""short circuit"" boolean operators in conditionals."
end if

if (func1() or func2() ) then
		msgbox "Although func1() returns """ + Cstr(func1()) + """, you will see func(2) run as VBS does not ""short circuit"" boolean operators in conditionals."
end if


function func2()
	'nothing
end function

function func1()
	'nothing
end function

Wscript.Quit()