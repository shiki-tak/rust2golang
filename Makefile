clear:
	rm -f ./lib/*.dylib
	rm -rf ./main

build-rust:
	cd ./lib/hello && cargo build --release
	cp ./lib/hello/target/release/libhello.dylib ./lib

build-go:
	go build main.go

build: clear build-rust build-go

run:
	./main
