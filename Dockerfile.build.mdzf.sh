

# 或者使用 buildx 构建多平台镜像
docker buildx build -f server/Dockerfile  --platform linux/amd64  -t immich-server:1.0.0  .
docker tag immich-server:1.0.0 beatskitano/immich-server:1.0.0
docker save -o /Users/xiaohui/Desktop/immich-server:1.0.0.tar immich-server:1.0.0



# 拉 amd64架构的 ghcr.io/immich-app/immich-machine-learning:v2 镜像并保存为 tar 文件
docker pull --platform linux/amd64  ghcr.io/immich-app/immich-machine-learning:v2
docker save -o /Users/xiaohui/Desktop/immich-machine-learning_v2.tar ghcr.io/immich-app/immich-machine-learning:v2


#  docker.io/valkey/valkey:8@sha256:81db6d39e1bba3b3ff32bd3a1b19a6d69690f94a3954ec131277b9a26b95b3aa
docker pull --platform linux/amd64  docker.io/valkey/valkey:9.0.0
docker save -o /Users/xiaohui/Desktop/valkey_9.0.0.tar  docker.io/valkey/valkey:9.0.0


docker pull --platform linux/amd64  ghcr.io/immich-app/postgres:18-vectorchord0.5.3-pgvector0.8.1
docker save -o /Users/xiaohui/Desktop/immich-postgres_18-vectorchord0.5.3-pgvector0.8.1.tar  ghcr.io/immich-app/postgres:18-vectorchord0.5.3-pgvector0.8.1

