PKG_NAME = changes-lxc-wrapper
VERSION = 0.0.2

deb:
	mkdir -p build/usr/local/bin
	cp changes-lxc-wrapper build/usr/local/bin/
	fpm -s dir -t deb -n $(PKG_NAME) -v $(VERSION) -a all -d "python3-lxc" -d "python-raven" -C ./build .

.PHONY: deb
