function make-gif
  mkdir -p dist-gif && \
  cd dist-gif && \
  ffmpeg -i ../$argv[1] -vf "palettegen" -y palette.png && \
  ffmpeg -i ../$argv[1] -i palette.png -lavfi "fps=12,scale=900:-1:flags=lanczos [x]; [x][1:v] paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle" -y $1.gif && \
  cd ..
end
