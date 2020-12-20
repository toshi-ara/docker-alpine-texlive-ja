# Copyright (c) 2016 Kaito Udagawa
# Copyright (c) 2016-2019 3846masa
# Copyright (c) 2020 ARA Toshiaki
# Released under the MIT license
# https://opensource.org/licenses/MIT

FROM frolvlad/alpine-glibc:latest
LABEL lastupdate=2020.12.20

ENV PATH /usr/local/texlive/2020/bin/x86_64-linuxmusl:$PATH

RUN apk add --no-cache perl fontconfig-dev freetype-dev \
                       curl wget lha tar xz ghostscript && \
    mkdir /tmp/install-tl-unx && \
    curl -L ftp://tug.org/historic/systems/texlive/2020/install-tl-unx.tar.gz | \
    tar -xz -C /tmp/install-tl-unx --strip-components=1 && \
    printf "%s\n" \
      "selected_scheme scheme-basic" \
      "tlpdbopt_install_docfiles 0" \
      "tlpdbopt_install_srcfiles 0" \
      > /tmp/install-tl-unx/texlive.profile && \
    /tmp/install-tl-unx/install-tl \
      --profile=/tmp/install-tl-unx/texlive.profile && \
    tlmgr install \
      collection-latexextra \
      collection-fontsrecommended \
      collection-langjapanese \
      lualatex-math \
      xetex xecjk ctex \
      latexmk && \
    rm -fr /tmp/install-tl-unx

WORKDIR /workdir

CMD ["sh"]
