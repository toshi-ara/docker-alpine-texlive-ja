# toshiara/alpine-texlive-ja

[![Docker Automated build](https://img.shields.io/docker/automated/toshiara/alpine-texlive-ja.svg)](https://hub.docker.com/r/toshiara/alpine-texlive-ja/)
[![Docker Image Size](https://images.microbadger.com/badges/image/toshiara/alpine-texlive-ja.svg)](https://microbadger.com/images/toshiara/alpine-texlive-ja "Get your own image badge on microbadger.com")
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg)](https://github.com/RichardLitt/standard-readme)

> Minimal TeX Live image for Japanese based on alpine (with LuaLaTeX/XeLaTeX)

Forked from [Paperist/docker-alpine-texlive-ja] \(under the MIT License\).

[Paperist/docker-alpine-texlive-ja]: https://github.com/Paperist/docker-alpine-texlive-ja

## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Contribute](#contribute)
- [License](#license)

## Install

```bash
docker pull toshiara/alpine-texlive-ja
```

## Usage

```bash
$ docker run --rm -it -v $PWD:/workdir toshiara/alpine-texlive-ja
$ latexmk -C main.tex && latexmk main.tex && latexmk -c main.tex

$ docker run --rm -u `id -u`:`id -g`  -v $(pwd):/workdir toshiara/alpine-texlive-ja uplatex main.tex
$ docker run --rm -u `id -u`:`id -g` -v $(pwd):/workdir toshiara/alpine-texlive-ja xelatex main.tex
$ docker run --rm -v $(pwd):/workdir -v ltcache2020:/usr/local/texlive/2020/texmf-var/luatex-cache toshiara/alpine-texlive-ja lualatex main.tex
```

## Contribute

PRs accepted.

## License

MIT © ARA Toshiaki

