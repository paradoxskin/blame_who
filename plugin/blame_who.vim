vim9script

def Blame_this_line(): string
	var rt = system("git blame -L " .. line(".") .. "," .. line(".") .. " " .. expand("%"))
	echo rt
	return rt
enddef

if (!exists(":Blame"))
	command -nargs=0 Blame call Blame_this_line()
endif
