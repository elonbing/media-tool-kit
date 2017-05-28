#video-segment-splitter

Splits a video into parts.

## Example Usage
```
python video-segment-splitter.py \
--video-file-input="video.mp4" \
--length-of-segments="30" \
--output-dir="/output"
```

## Arguments

`--video-file-input=" "`

The video you wish to split into segments.

`--length-of-segments=" "`

The desired length of the segments. The last segment of the video may be a tiny bit shorter than this value.

`--output-dir="   "`

The directory that the completed thing will output to.
