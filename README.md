Make a local image with the bundles installed etc.:

```
docker run --name jekyll-builder --volume="$PWD:/srv/jekyll:Z" --platform linux/amd64 jekyll/builder:3 jekyll build

docker commit jekyll-builder afrith/blog-builder

docker rm jekyll-builder
```

To serve locally on 4000 with auto-regeneration:

```
docker run -it --rm --volume="$PWD:/srv/jekyll:Z" -p 4000:4000 --platform linux/amd64 afrith/blog-builder jekyll serve
```

To just do a build:

```
docker run --rm --volume="$PWD:/srv/jekyll:Z" --platform linux/amd64 afrith/blog-builder jekyll build
```

To build and push:

```
docker buildx build --platform linux/amd64 . -t ghcr.io/afrith/blog --push
```