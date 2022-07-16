DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-getsrc
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-getsrc
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/getsrc-cached bin/getsrc-git bin/getsrc-newdir bin/getsrc-tar bin/getsrc-upload bin/getsrc-user  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
