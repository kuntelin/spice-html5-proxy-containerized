spice html5 proxy containerized
===============================
This is the containerzied spice html5 proxy for OpenStack.
I use it with OpenStack Mitaka well.


Pre-setup
---------
Accept spice-html5-proxy to connect amqp at OpenStack control host
```
control# iptables -I INPUT 1 -s {{container_engine}}/32 -p tcp -m multiport --dport 5671 -m comment --comment "spice-html5-proxy amqp incoming" -j ACCEPT
```

Accept spice-html5-proxy to connect VNC an OpenStack compute host
```
compute# iptables -I INPUT 1 -s {{container_engine}}/32 -p tcp -m multiport --dport 5900:5999 -m comment --comment "spice-html5-proxy VNC incoming" -j ACCEPT
```

Build image
-----------
```
docker build -t spice-html5-proxy:latest .
```

Start service
-------------
```
docker run --name spice-html5-proxy -itd -v $(pwd)/pki:/etc/pki -v $(pwd)/nova.conf:/etc/nova/nova.conf -p 6082:6082 spice-html5-proxy
```

