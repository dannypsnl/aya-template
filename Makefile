aya := java -jar $(shell pwd)/cli-fatjar.jar

build: cli-fatjar.jar
	$(aya) *.aya

repl: cli-fatjar.jar
	$(aya) -i

cli-fatjar.jar:
	wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/cli-fatjar.jar
