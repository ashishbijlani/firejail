# Firejail profile for inkscape
# Description: Vector-based drawing program
# This file is overwritten after every install/update
# Persistent local customizations
include inkscape.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/inkscape
noblacklist ${HOME}/.config/inkscape
noblacklist ${HOME}/.inkscape
noblacklist ${DOCUMENTS}
noblacklist ${PICTURES}

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

apparmor
caps.drop all
net none
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none

# private-bin inkscape,potrace - problems on Debian stretch
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
