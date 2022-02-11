.PHONY: all install uninstall configure

DESTCONFIG=/etc/default
PROJECT=/kpxc-ovpn
TEMPLATE=/kpxc-ovpn.conf.template
NEWCONFIG=/kpxc-ovpn.conf

ifndef DESTDIR
	DESTDIR=/usr/bin
endif

all: install

configure:
	@cp .${TEMPLATE} ${DESTCONFIG}${NEWCONFIG}
	@echo "New config file created at ${DESTCONFIG}${NEWCONFIG}, please fill it before using kpxc-ovpn!"

install: configure
	@cp kpxc-ovpn ${DESTDIR}
	@chmod +x ${DESTDIR}${PROJECT}

uninstall:
	@rm ${DESTCONFIG}${NEWCONFIG}
	@rm ${DESTDIR}${PROJECT}
