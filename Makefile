aya := java -jar $(shell pwd)/cli-fatjar.jar

build: cli-fatjar.jar lsp-fatjar.jar
	$(aya) *.aya

repl: cli-fatjar.jar lsp-fatjar.jar
	$(aya) -i

cli-fatjar.jar:
	wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/cli-fatjar.jar
lsp-fatjar.jar:
	wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/lsp-fatjar.jar
