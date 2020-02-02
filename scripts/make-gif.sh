#!/bin/bash

ffmpeg -i $1 -vf "palettegen" -y $2.png && \
ffmpeg -i $1 -i $2.png -lavfi "fps=12,scale=900:-1:flags=lanczos [x]; [x][1:v] paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle" -y $2.gif && \
rm $2.png
