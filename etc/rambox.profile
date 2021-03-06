# Firejail profile for rambox
# This file is overwritten after every install/update
# Persistent local customizations
include rambox.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/Rambox
noblacklist ${HOME}/.pki

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-programs.inc

mkdir ${HOME}/.config/Rambox
mkdir ${HOME}/.pki
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/Rambox
whitelist ${HOME}/.pki
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
# tracelog
