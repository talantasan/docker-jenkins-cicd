FROM centos:7
MAINTAINER talant.py@gmail.com
RUN  yum update -y && \
     yum install -y openssh-server mysql curl && \
     curl -O https://bootstrap.pypa.io/get-pip.py && \
     python get-pip.py --user && \
     pip3 install awscli --upgrade --user && \
     useradd centos && \
     echo "mypass123" | passwd centos --stdin && \
     mkdir /home/centos/.ssh && \
     chmod 0700 /home/centos/.ssh
COPY centos-key.pub /home/centos/.ssh/authorized_keys
RUN chown -R centos:centos /home/centos/.ssh && \
    chmod 0600 /home/centos/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

CMD ["/usr/sbin/sshd", "-D"]


