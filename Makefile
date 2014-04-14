INSTALL=install -D

install:
	@echo "git-svnbackup installation"
	$(INSTALL) git-svnbackup /usr/local/bin/git-svnbackup
	@echo "git-svngetbackup installation"
	$(INSTALL) git-svngetbackup /usr/local/bin/git-svngetbackup
	@echo "git-svnbranch installation"
	$(INSTALL) git-svnbranch /usr/local/bin/git-svnbranch
	@echo "Man pages installation"
	install -D -g 0 -o 0 -m 0644 doc/git-svnbranch.1 /usr/local/man/man1/git-svnbranch.1
	rm -f /usr/local/man/man1/git-svnbranch.1.gz
	gzip /usr/local/man/man1/git-svnbranch.1
