# docker-sshd-centos

The following code was in reference: https://gist.github.com/kazuph/8064771

# usage

```
docker pull bells17/centos-sshd
docker run -d -p 2022:22 bells17/centos-sshd
docker cp ~/.ssh/id_rsa.pub [CONTAINER ID]:/root/.ssh/authorized_keys
ssh root@localhost -p 2022
```
