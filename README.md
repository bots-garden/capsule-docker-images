# Capsule Docker Image

- Docker hub: https://hub.docker.com/r/k33g/capsule-launcher/tags
- Current version: `v0.3.2` (== Capsule version)
- Image tag: `0.3.2`

## How to use it?

```bash
docker run \
  -p 8080:8080 \
  -e MESSAGE="👋 Hello World 🌍" \
  -v $(pwd):/app --rm k33g/capsule-launcher:0.3.2 \
  /capsule \
  -wasm=./app/index.wasm \
  -mode=http \
  -httpPort=8080
```

```bash
docker run \
  -e MESSAGE="🎉 Hello World" \
  -v $(pwd):/app --rm k33g/capsule-launcher:0.3.2 \
  /capsule \
  -wasm=./app/hello.wasm \
  -mode=cli \
  "👋 hello world 🌍" "Bob Morane"
```
