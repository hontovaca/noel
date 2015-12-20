#!/bin/sh
set -eu

case $0 in
  */*) cd "${0%/*}"
esac
name=${PWD##*/}
host=`curl -Ns --unix-socket /tmp/docker.sock 0/v1.20/info | jq -r .Name`

image=cows/$name
docker pull "$image"

# check existence
if docker port "$name" > /dev/null; then
  new=`docker create --restart=always --hostname="$name.$host" --volumes-from="$name" "$image"`
  docker stop "$name"
  docker start "$new"
  docker rm "$name"
  docker rename "$new" "$name"
else
  docker run -d --restart=always --name="$name" --hostname="$name.$host" -v /home:/home -v /var/log -v /etc/ssh "$image"
fi
