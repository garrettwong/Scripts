# Scripts

Generic scripts sandbox across OS (Mac, Linux, Windows).

Generic scripts for Git, Docker and nodejs.

## Quick Start

_most Mac OSX scripts should be configured to use #!/bin/bash as the default for script execution_

```
git clone git@github.com/garrettwong/Scripts.git
cd Mac
chmod u+x test_assert.sh
./test_assert.sh
```

## Configure Environment

Using a Google Cloud Workstation for development.

```bash
echo "git remote show origin" | sudo tee -a /usr/local/bin/grso
sudo chmod +x /usr/local/bin/grso

echo "git status" | sudo tee -a /usr/local/bin/gs
sudo chmod +x /usr/local/bin/gs

echo "git push -u origin" | sudo tee -a /usr/local/bin/gp
sudo chmod +x /usr/local/bin/gp
```

## Licensing

See [`LICENSE`](Apache 2.0) for details.
