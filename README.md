spice html5 proxy containerized
===============================

This is the containerzied spice html5 proxy for OpenStack.
I use it with OpenStack Mitaka well.

* You have to accept the VNC connection from this container engine at all compute host.
Example: iptables -I INPUT 1 -s {{container_engine}}/32 -p tcp -m multiport --dport 5900:5999 -j ACCEPT

