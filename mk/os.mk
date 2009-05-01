# Setup OS specific variables
# Copyright (c) 2008 Roy Marples <roy@marples.name>

_OS_SH=	case `uname -s` in Linux) echo "Linux";; Darwin) echo "Darwin";;  *) echo "BSD";; esac
_OS!=		${_OS_SH}
OS=		${_OS}$(shell ${_OS_SH})
include ${MK}/os-${OS}.mk
