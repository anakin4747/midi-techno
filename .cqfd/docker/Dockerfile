
FROM archlinux:base-20250511.0.348143

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
    base-devel \
    man-db \
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
    && pacman -Scc --noconfirm

RUN git clone \
    https://github.com/ellisonleao/gruvbox.nvim.git \
    /home/kin/.config/nvim/pack/gruvbox/start/gruvbox
