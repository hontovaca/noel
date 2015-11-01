## cow/env

This image is for personal use and it would be incredibly pointless for anyone else to attempt to use it. Check out the repo and modify it to your own ends if you want; it's just package installs and service configurations.

My canonical example image is vaca/sshd, which is basically the same thing as this image except without my public key baked in.

### Undocumented snippets

    docker run -d --name=noel --hostname=noel -v /home:/home -v /home/log:/var/log cows/env #100.95.82.248
