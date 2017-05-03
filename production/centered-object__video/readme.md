# centered-object__video
This is a template for placing an object (video, image, svg) in the middle of a video. There is a setting that also allows the user to change the background color.

## Example Usage

```
# Centered Object
# //////////////////////////////

print "placing an object in the middle of a video frame..."

python blend__video.py \
  --audio-input="media/video" \
  --object-input="media/image" \
  --object-width="600" \
  --aspect-ratio="1280x600" \
  --vid-duration="(30,60)" \
  --opacity=".4" \
  --output-dir="output" \
 &&
 ```

 ## Arguments

`--audio-input="path/to/audio"`

Can accept either directories (will choose at random) or specific files.

`--object-input="media/image"`

Can accept either directories (will choose at random) or specific files.

`--object-width=""`

The width of an object.

`--aspect-ratio=""`

The size of the video.

`--vid-duration="(30,60)"`

Duration of the Video

`--opacity=".4"`

Opacity of the Object

`--output-dir="output"`

The directory that the completed thing will output to.
