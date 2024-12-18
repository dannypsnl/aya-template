build: cli-fatjar lsp-fatjar
	java -jar cli-fatjar.jar --make .

repl: cli-fatjar lsp-fatjar
	java -jar cli-fatjar.jar -i

cli-fatjar:
	wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/cli-fatjar.jar
lsp-fatjar:
	wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/lsp-fatjar.jar

clean:
	@rm *.jar
