.PHONY: clean
init:
	git submodule init
	git submodule update --checkout -f -r

.PHONY: clean
clean:
	rm -rf .build

.PHONY: build
build: .build/CMakeCache.txt
	cd .build && make

.build/CMakeCache.txt: CMakeLists.txt
	mkdir -p .build
	cd .build && cmake ..

