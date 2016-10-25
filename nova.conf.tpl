[DEFAULT]
ssl_only = true
cert = {{web_ssl_cert}}
key = {{web_ssl_key}}

[oslo_messaging_rabbit]
kombu_ssl_version = TLSv1
kombu_ssl_ca_certs = {{ca_ssl_cert}}
kombu_ssl_certfile = {{amqp_ssl_cert}}
kombu_ssl_keyfile = {{amqp_ssl_key}}
kombu_reconnect_delay = 1.0
rabbit_ha_queues = false
rabbit_host = {{amqp_host}}
; rabbitma default port is 5671
rabbit_port = {{amqp_port}}
rabbit_hosts = {{amqp_host}}:{{amqp_port}}
rabbit_use_ssl = true
rabbit_userid = {{amqp_username}}
rabbit_password = {{amqp_password}}
rabbit_virtual_host = /

[spice]
html5proxy_host = 0.0.0.0
html5proxy_port = 6082

[vnc]
enabled = false

