# ssm-awscli

FargateへのECS Execで使用する、Session Manager pluginをインストールしたaws-cliを、Dockerで実行したい

## 使い方

```
docker build -t ssm-aws .
docker run --rm -it -v ~/.aws:/root/.aws ssm-aws ecs execute-command --region us-east-1 --cluster hoge-cluster --task xxxxxxxx --container app --interactive --command "bash"
```

aws-cliとしても使えます

```
docker run --rm -it -v ~/.aws:/root/.aws ssm-aws --version
docker run --rm -it -v ~/.aws:/root/.aws ssm-aws help
docker run --rm -it -v ~/.aws:/root/.aws ssm-aws s3 ls
```

※ `docker run --rm -it -v ~/.aws:/root/.aws ssm-aws` をエイリアスで登録しておくと呼び出しやすいです。