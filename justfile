default:
  just --choose

build:
  java -jar cli-fatjar.jar --make .

repl:
  java -jar cli-fatjar.jar -i

prepare: cli-fatjar lsp-fatjar
cli-fatjar:
  wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/cli-fatjar.jar; \
lsp-fatjar:
  wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/lsp-fatjar.jar

clean:
  @rm *.jar
