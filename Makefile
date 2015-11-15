default: all

all: README

README: check_du
	pod2text $< >$@


install:
	install -o root -g root -m 0755 check_du /usr/lib/nagios/plugins/
