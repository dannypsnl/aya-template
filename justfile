default:
  just --choose

build: cli-fatjar lsp-fatjar
  java -jar cli-fatjar.jar --make .

repl: cli-fatjar lsp-fatjar
  java -jar cli-fatjar.jar -i

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
