PROJECT=sh-getsrc
VERSION=1.0.0
PREFIX=/usr/local
all:
clean:
install:

## -- BLOCK:sh --
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
## -- BLOCK:sh --
## -- BLOCK:license --
install: install-license
install-license: 
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp LICENSE README.md $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
update: update-license
update-license:
	ssnip README.md
## -- BLOCK:license --
