# Telchar

See also: http://tolkiengateway.net/wiki/Telchar

# Preparing the source code

Follow the instructions here: https://chromium.googlesource.com/chromium/src/+/master/docs/linux_build_instructions.md

# Build Chromium with Telchar

One example for launching the container:
```
docker run --rm -it --mount type=bind,src=<path_to_chromium_source_code>,dst=/build/chromium,readonly --tmpfs /tmp/ --tmpfs /build/tmp/:rw,exec --mount type=bind,src=/tmp/chromium_build/,dst=/build/out/ telchar /bin/bash
```

Then follow the instructions here: https://chromium.googlesource.com/chromium/src/+/master/docs/linux_build_instructions.md
