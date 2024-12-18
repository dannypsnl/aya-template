default:
  just --choose

build:
  java -jar cli-fatjar.jar --make .

repl:
  java -jar cli-fatjar.jar -i

prepare: cli-fatjar lsp-fatjar
[private]
cli-fatjar:
  #!/usr/bin/env python
  import subprocess
  import os.path
  if not os.path.isfile("cli-fatjar.jar"):
    subprocess.run(["wget", "https://github.com/aya-prover/aya-dev/releases/download/nightly-build/cli-fatjar.jar"])
[private]
lsp-fatjar:
  #!/usr/bin/env python
  import subprocess
  import os.path
  if not os.path.isfile("cli-fatjar.jar"):
    subprocess.run(["wget", "https://github.com/aya-prover/aya-dev/releases/download/nightly-build/lsp-fatjar.jar"])

clean:
  @rm *.jar
