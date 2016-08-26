FROM centos:7

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
RUN yum install -y openssh-server openssh-clients
RUN /sbin/sshd-keygen

RUN sed -ie 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ie 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
RUN sed -ie 's/#PermitEmptyPasswords no/PermitEmptyPasswords no/g' /etc/ssh/sshd_config
RUN sed -ie 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh
RUN echo 'root:root' | chpasswd

CMD /usr/sbin/sshd -f /etc/ssh/sshd_config -D
