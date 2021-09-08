.PHONY: all info install

all: info

info:
	$(info To install Kate run wrapper use: `make install`)

install:
	sudo cp run-kate /usr/local/bin
	sudo chmod +x /usr/local/bin/run-kate
	[ -f ~/.alias ] && echo "alias kate='run-kate'" >> ~/.alias || [ -f ~/.bashrc ] && echo "alias kate='run-kate'" >> ~/.bashrc || echo 2> "You need to manually add this alias to your shell: alias kate='run-kate'"
	$(info Turn your shell off and on again or use `source shell-config`. Example: `source ~/.bashrc`)
