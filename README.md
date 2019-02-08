# serverless-node-docker
[![dockeri.co](https://dockeri.co/image/nursesenka/serverless-node)](https://hub.docker.com/r/nursesenka/serverless-node)

Serverless環境（主にAWS Lambda）で利用するDockerfileを管理する

`node:8.10-alpine`をベースとしたイメージです。`serverless`がインストールされています。


## Docker Hub

https://cloud.docker.com/u/nursesenka/repository/registry-1.docker.io/nursesenka/serverless-node

## Badge
以下で作成出来ます。

https://dockeri.co/

## 検証手順

ビルドが実行できることを確認してください。

```
docker build -t nursesenka/serverless-node .
```

`docker images`を実行し、`nursesenka/serverless-node  `というイメージが作成されていることを確認してください。
```
REPOSITORY                         TAG                 IMAGE ID            CREATED             SIZE
nursesenka/serverless-node         latest              ef098b358ad0        8 minutes ago       177MB
```

下記を実行し、コンテナが起動できることとserverlessのバージョンが表示されることを確認してください。
```
docker run -it nursesenka/serverless-node serverless -v
```

## 自動Buildについて

GitHub上でタグをPushするとDocker Hub上にも反映されます。

例えばこのようなタグを設定すると・・・

```bash
git tag -a v1.0.0 -m "release version v1.0.0"
git push origin tags/v1.0.0
```

Docker Hub上では `1.0.0` のタグが自動で作成されます。（`v1.0.0` のように `v` が必要なので注意）

## バージョニングについて

[セマンティック バージョニング](https://semver.org/lang/ja/) を採用します。

## バージョンアップのルール

- 初期バージョンは `1.0.0` からスタート
- 利用するNode.jsのパッチバージョンが上がった場合はこちらもパッチバージョンを上げる
- グローバルインストールされているnpm packageがメジャーバージョンアップした時はマイナーバージョンを上げる
- Node.jsのメジャーバージョンが上がった場合

## 注意点

このリポジトリで管理するのは、あくまでも [Node.jsの標準ランタイム](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/lambda-runtimes.html) を想定した物です。

[カスタムランタイム](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/runtimes-custom.html) を管理する場合、ここではなく別のリポジトリを作成して下さい。
