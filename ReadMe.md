# Compile in docker

```
docker build -t helix-rhel8 .
docker create --name temp helix-rhel8
docker cp temp:/root/.cargo/bin/hx ./hx
docker rm temp
```

```
docker build -f Dockerfile-tmux -t tmux-rhel8 .
docker create --name tmux-temp tmux-rhel8
docker cp tmux-temp:/usr/local/bin/tmux ./tmux
docker rm tmux-temp

```