PROJECT=sh-getsrc
VERSION=1.0.0
PREFIX=/usr/local
all:
clean:
install:

## -- BLOCK:license --
install: install-license
install-license: README.md LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp README.md LICENSE $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/gettar-create $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-tar $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-git $(DESTDIR)$(PREFIX)/bin
	cp bin/gettar $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-cached $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-user $(DESTDIR)$(PREFIX)/bin
	cp bin/gettar-tmpdir $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-upload $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-newdir $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-vault $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
