.PHONY: build

build: clean
	$(MAKE) -C 5.5
	$(MAKE) -C 5.6
	$(MAKE) -C 7.0

clean:
	rm -f 5.5/Dockerfile
	rm -f 5.6/Dockerfile
	rm -f 7.0/Dockerfile
