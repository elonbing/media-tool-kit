VIDEO_FILE="path/to/video.mp4"

ffmpeg -i $VIDEO_FILE -r 1000 -f image2 image-%07d.png
