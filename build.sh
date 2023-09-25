#!/bin/sh
docker build -t godot-minimal .
mkdir build
docker run -v $(pwd)/build:/build godot-minimal bash -c "cp /godot/bin/webassembly_release.zip /build"