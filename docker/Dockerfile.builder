FROM gramine:1.7-jammy-patched-base AS base

# Install Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
# Install dependencies for compiling applications
RUN apt install -y pkg-config cmake

ENTRYPOINT ["/bin/bash"]