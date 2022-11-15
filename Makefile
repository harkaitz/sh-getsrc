DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/getsrc-upload'; cp bin/getsrc-upload $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/getsrc-newdir'; cp bin/getsrc-newdir $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/getsrc-tar'; cp bin/getsrc-tar  $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/getsrc-git'; cp bin/getsrc-git  $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/getsrc-user'; cp bin/getsrc-user $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/getsrc-cached'; cp bin/getsrc-cached $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/getsrc-vault'; cp bin/getsrc-vault $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
## -- license --
install: install-license
install-license: LICENSE
	@echo 'I share/doc/sh-getsrc/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-getsrc
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-getsrc
## -- license --
