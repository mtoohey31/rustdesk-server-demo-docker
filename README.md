# `rustdesk-server-demo-docker`

To build the container:

```bash
git clone https://github.com/mtoohey31/rustdesk-server-demo-docker
cd rustdesk-server-demo-docker
docker build -t "rustdesk-server-demo" ./
```

To run the container:

```bash
docker run -p 21117:21117 -p 21116:21116 -p 21116:21116/udp -it --rm -e IP=<YOUR-IP> --rm rustdesk-server-demo
```

Be sure to replace `<YOUR-IP>` with the IP address you want the server to be available on. Note that this demo server is not secured in any way, so you should implement your own method of securing it or expose it only on your LAN. Then in the RustDesk application settings, set "ID Server" to `<YOUR-IP>:21116` and leave "Relay Server" and "Key" blank.

Please note that any issues with the server itself should be reported to the [upstream repository](https://github.com/rustdesk/rustdesk-server-demo).
