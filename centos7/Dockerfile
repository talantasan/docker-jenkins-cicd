FROM centos:7
MAINTAINER talant.py@gmail.com
RUN  yum update -y && \
     yum install -y openssh-server && \
     useradd centos && \
     echo "mypass123" | passwd centos --stdin && \
     mkdir /home/centos/.ssh && \
     chmod 0700 /home/centos/.ssh

RUN  mv /etc/localtime  /etc/localtime.backup && \
     ln -s /usr/share/zoneinfo/America/New_York /etc/localtime

COPY centos-key.pub /home/centos/.ssh/authorized_keys

RUN chown -R centos:centos /home/centos/.ssh && \
    chmod 0600 /home/centos/.ssh/authorized_keys

RUN yum install -y mysql

RUN  curl -O https://bootstrap.pypa.io/get-pip.py && \
     python get-pip.py && \
     pip install awscli --upgrade 

RUN /usr/sbin/sshd-keygen

CMD ["/usr/sbin/sshd", "-D"]


