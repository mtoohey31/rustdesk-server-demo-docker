FROM rust:latest

WORKDIR /
RUN apt-get update -y && apt-get install -y g++ gcc git curl wget nasm yasm libgtk-3-dev clang libxcb-randr0-dev libxdo-dev libxfixes-dev libxcb-shape0-dev libxcb-xfixes0-dev libasound2-dev libpulse-dev cmake
RUN git clone https://github.com/rustdesk/rustdesk-server-demo

WORKDIR /rustdesk-server-demo
RUN cargo install --path .

CMD [ "rustdesk-server" ]
