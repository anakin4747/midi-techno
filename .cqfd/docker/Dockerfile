
FROM archlinux:base-20250511.0.348143

RUN sed -i '/usr.share.man/d' /etc/pacman.conf

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
    base-devel \
    gdb \
    man-db \
    man-pages \
    groff \
    words \
    cmake \
    git \
    python \
    cargo \
    npm \
    neovim \
    \
    bash-language-server \
    lua-language-server \
    gopls \
    pyright \
    rust-analyzer \
    \
    python-ruff \
    shellcheck \
    cppcheck \
    \
    && pacman -Scc --noconfirm

RUN useradd -m kin
USER kin

RUN git clone \
    https://github.com/ellisonleao/gruvbox.nvim.git \
    /home/kin/.config/nvim/pack/gruvbox/start/gruvbox
RUN git -C /home/kin/.config/nvim/pack/gruvbox/start/gruvbox \
    checkout 15958f5ee43e144856cd2084ce6c571bfdb44504

RUN git clone \
    https://github.com/nvim-treesitter/nvim-treesitter.git \
    /home/kin/.config/nvim/pack/nvim-treesitter/start/nvim-treesitter
RUN git -C /home/kin/.config/nvim/pack/nvim-treesitter/start/nvim-treesitter \
    checkout f22181a62c47bf591fbfd6ada7d9a1156278d6e0

COPY parser/ /home/kin/.config/nvim/pack/nvim-treesitter/start/nvim-treesitter/parser

USER root
RUN userdel kin
