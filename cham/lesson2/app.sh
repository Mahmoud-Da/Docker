# shell
git branch | grep cham

if ! git branch --list | grep -q "cham"; then
  git checkout -b cham/2
else
  echo "Branch with 'cham' already exists."
fi


# Docker command
docker pull ubuntu # docker pull image-name

docker --help
# コマンド確認

docker run ubuntu 
# docker run Image-name
# container 起動のみ

docker run -it ubuntu # 
# docker run -it Image-name
# container 起動+アクセス　interactive mode

docker ps # 起動しているコンテナを確認

docker ps -a # 起動しているコンテナ　+　止まっているコンテナ　を確認


apt # package manger

apt install nano # apt install package-name

# NOTE:
# always update apt package manger before install a new package
# EX:
apt update && apt install nano
