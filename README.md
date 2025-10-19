To serve locally on 4000 with auto-regeneration:

```docker run -it --rm --volume="$PWD:/srv/jekyll:Z" -p 4000:4000 --platform linux/amd64 jekyll/builder:3 jekyll serve```

To just do a build:

```docker run --rm --volume="$PWD:/srv/jekyll:Z" --platform linux/amd64 jekyll/builder:3 jekyll build```