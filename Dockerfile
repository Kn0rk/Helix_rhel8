
# Create a simple Dockerfile
FROM rockylinux/rockylinux:8
# or use: FROM registry.access.redhat.com/ubi8/ubi

RUN dnf install -y gcc gcc-c++ git
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

WORKDIR /build
RUN git clone --depth 1 --branch 25.07.1 https://github.com/helix-editor/helix
WORKDIR /build/helix
RUN cargo install --profile opt --config 'build.rustflags=["-C", "target-cpu=native"]'  --path helix-term --locked

# Binary will be in /root/.cargo/bin/hx
