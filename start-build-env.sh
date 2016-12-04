docker pull lizhizhou/miwifi:latest
docker run --rm=true --env-file=docker_env --privileged -i -t \
  -v "${PWD}:/home/" \
  -w "/home/" \
  --dns=114.114.114.114 \
  lizhizhou/miwifi:latest
