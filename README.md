# code-server-docker

#### 介绍
这是一个 code-server docker 镜像的项目，用来打包镜像以及运行镜像，code-server 是 vscode 的 web 版。 请使用 docker-compose 跑起来，根据自己的需求进行配置，配置信息在 code-server-config.yaml 文件配置

#### 使用说明

1.  执行命令授予执行脚本权限：`sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2.  执行 `copy code-server-config.yaml.tpl code-server-config.yaml`，并且配置 code-server-config.yaml
3.  运行 ./run-docker.sh 【注：docker-compose 低版本识别不了 .env，需要进行升级，作者用的版本是: 1.29.2】
4.  查看日志: docker logs qiushaocloud-code-server

#### code-server-config.yaml.tpl 内容如下
``` yaml
bind-addr: 0.0.0.0:8080
auth: password
password: <YOUR_PASSWORD>
# cert: /data/cert/code-server.pem
# cert-key: /data/cert/code-server.key
```

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 分享者信息

1. 分享者邮箱: qiushaocloud@126.com
2. [分享者网站](https://www.qiushaocloud.top)
3. [分享者自己搭建的 gitlab](https://gitlab.qiushaocloud.top/qiushaocloud) 
3. [分享者 gitee](https://gitee.com/qiushaocloud/dashboard/projects) 
3. [分享者 github](https://github.com/qiushaocloud?tab=repositories) 