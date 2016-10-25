FROM centos:7.2.1511

RUN yum install -y --nogpgcheck epel-release centos-release-openstack-mitaka
RUN yum install -y --nogpgcheck numpy
RUN yum install -y --nogpgcheck spice-html5 openstack-nova-spicehtml5proxy \
    && yum clean all \
    && rm -rf /var/cache/yum/*

VOLUME ["/etc/pki"]

EXPOSE 6082/tcp

CMD ["/usr/bin/nova-spicehtml5proxy", "--verbose"]

