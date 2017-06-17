PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all::	ipc-total

check::	ipc-total
	ipcs -m | ./ipc-total

clean::

distclean clobber:: clean

install:: ipc-total
	install -D -c ipc-total ${BINDIR}/ipc-total

uninstall::
	${RM} ${BINDIR}/ipc-total
