
FROM archlinux:base-20250511.0.348143

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
    base-devel \
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

RUN cargo install ginko_ls

ENV PATH="/root/.cargo/bin:${PATH}"

RUN npm install -g jshint
