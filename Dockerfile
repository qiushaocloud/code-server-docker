FROM qiushaocloud/os-ubuntu-1604

COPY ./code-server-3.12.0-linux-amd64.tar.gz /usr/local/code-server-3.12.0-linux-amd64.tar.gz
COPY ./bootstrap.sh /usr/local/bootstrap.sh

RUN cd /usr/local \
    && tar -zxvf code-server-3.12.0-linux-amd64.tar.gz \
    && rm -rf code-server-3.12.0-linux-amd64.tar.gz \
    && mv code-server-3.12.0-linux-amd64 code-server \
    && chmod 777 /usr/local/bootstrap.sh \
    && npm i -g yarn \
    && npm i -g eslint@^7.13.0

WORKDIR /root

CMD ["/usr/local/bootstrap.sh"]
