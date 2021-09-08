.PHONY: all info install

all: info

info:
	$(info To install Kate run wrapper use: `make install`)

install:
	sudo cp kate-sudo /usr/local/bin
	sudo chmod +x /usr/local/bin/kate-sudo
	[ -f ~/.alias ] && echo "alias kate='kate-sudo'" >> ~/.alias || [ -f ~/.bashrc ] && echo "alias kate='kate-sudo'" >> ~/.bashrc || echo 2> "You need to manually add this alias to your shell: alias kate='kate-sudo'"
	$(info Turn your shell off and on again or use `source shell-config`. Example: `source ~/.bashrc`)
