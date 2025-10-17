# Compile in docker

```
docker build -t helix-rhel8 .
docker create --name temp helix-rhel8
docker cp temp:/root/.cargo/bin/hx ./hx
docker rm temp
```
