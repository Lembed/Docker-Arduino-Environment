# Docker-Arduino-Environment
docker image for arduino build

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Lembed/Docker-Arduino-Environment/master/LICENSE)[![status](https://img.shields.io/badge/build-passing-green.svg)](https://github.com/Lembed/Docker-Arduino-Environment)

## Note
Install Arduino build environment and requires, so you can build arduino through CLI

## Usage
build the dockerfile

```bash
docker build -t="arduino" .
```

start and use

```bash
docker run -it arduino start bash
```

example to install latest SAM board support

```bash
arduino --install-boards "arduino:sam"
``` 
