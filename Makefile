.PHONY: init
init:
	git submodule init
	git submodule update --checkout -f -r

.PHONY: clean
clean:
	rm -rf .build

.PHONY: install
install: .build/Makefile
	make -C .build install

.PHONY: build
build: .build/Makefile
	make -C .build

.build/Makefile: CMakeLists.txt
	mkdir -p .build
	cd .build && cmake ..

