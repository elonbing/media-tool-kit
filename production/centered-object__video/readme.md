# image-in-video__video
This script is used to randomly blend videos from a specified folder.

## Example Usage

```
# Blend Video
# //////////////////////////////

print "blending video..."

python blend__video.py \
  --audio-input-dir="media/audio" \
  --vid-input-dir="media/video" \
  --vid-duration="(30,60)" \
  --opacity=".4" \
  --blend-mode-1="overlay" \
  --blend-mode-2="harden" \
  --output-dir="output" \
  --layers="yes" \
 &&
 ```
