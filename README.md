# docker-sshd-centos

The following code was in reference: https://gist.github.com/kazuph/8064771

# usage

```
sudo docker build -t centos-sshd .
sudo docker run -d -p 2022:22 centos-sshd
sudo docker cp ~/.ssh/id_rsa.pub [CONTAINER ID]:/root/.ssh/authorized_keys
ssh root@localhost -p 2022
```
