
build:
	docker build -f Dockerfile -t eyedeekay/redselect .

run: build
	docker run --name redselect -t eyedeekay/redselect redget https://reddit.com/r/audiodrama

test:
	./bin/redspider

install:
	install -m755 bin/redget /usr/local/bin/redget
	install -m755 bin/redlist /usr/local/bin/redlist
	install -m755 bin/redspider /usr/local/bin/redspider


