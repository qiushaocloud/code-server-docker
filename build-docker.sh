#docker pull ubuntu:16.04
#docker rmi -f qiushaocloud/code-server || true
mkdir -p codes
docker build -t qiushaocloud/code-server .
