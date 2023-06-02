FROM qiushaocloud/ub1604-nvm-node-base

ARG CODE_SERVER_VERSION=4.13.0

RUN apt install -y git

COPY ./code-server-$CODE_SERVER_VERSION-linux-amd64.tar.gz /usr/local/code-server-$CODE_SERVER_VERSION-linux-amd64.tar.gz
COPY ./bootstrap.sh /usr/local/bootstrap.sh
COPY ./extensions /root/.local/share/code-server/extensions
COPY ./code-server-config.yaml.tpl /root/.config/code-server/config.yaml

RUN cd /usr/local \
    && tar -zxvf code-server-$CODE_SERVER_VERSION-linux-amd64.tar.gz \
    && rm -rf code-server-$CODE_SERVER_VERSION-linux-amd64.tar.gz \
    && mv code-server-$CODE_SERVER_VERSION-linux-amd64 code-server \
    && chmod 777 /usr/local/bootstrap.sh \
    && npm i -g yarn \
    && npm i -g eslint@^7.13.0

RUN mkdir -p /root/vscodes \
    && sed -i "s/password:/#password:/" /root/.config/code-server/config.yaml

WORKDIR /root

CMD ["/usr/local/bootstrap.sh"]
