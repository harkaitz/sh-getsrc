DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-tar       $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-git       $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-cached    $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-user      $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-upload    $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-newdir    $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-vault     $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
## -- license --
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-getsrc
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-getsrc
## -- license --
