## cow/env

This image is for personal use and it would be incredibly pointless for anyone else to attempt to use it. Check out the repo and modify it to your own ends if you want; it's just package installs and service configurations.

My canonical example image is vaca/sshd, which is basically the same thing as this image except without my public key baked in.

### Undocumented snippets

    docker run -d --name=noel --hostname=noel -v /home:/home -v /var/log -v /etc/ssh cows/env #100.95.82.248

    docker pull cows/env
    new=`docker create --hostname=noel --volumes-from=noel cows/env`
    docker stop noel
    docker start "$new"
    docker rename noel "noel_${new:0:12}"
    docker rename "$new" noel
