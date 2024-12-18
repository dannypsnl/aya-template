default:
  just --choose

build:
  java -jar cli-fatjar.jar --make .

repl:
  java -jar cli-fatjar.jar -i

prepare: cli-fatjar lsp-fatjar
[private]
cli-fatjar:
  wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/cli-fatjar.jar
[private]
lsp-fatjar:
  wget https://github.com/aya-prover/aya-dev/releases/download/nightly-build/lsp-fatjar.jar

clean:
  @rm *.jar
