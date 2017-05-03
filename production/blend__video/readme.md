# blend__video
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

## Arguments

### Inputs
`--audio-input-dir="path/to/audio"`

`--vid-input-dir="path/to/video"`

Both of these are used to input content into the script. When audio is imported, only one file will be randomly chosen. The amount of videos to blend is variable.


### Settings
`--layers="yes"`

Including this argument will allow you to control video layers in the script. If this is selected, `--vid-input-dir` should point to a folder with three sub-folders "layer0", "layer1", and "layer2". The folder can live anywhere, but the names are hard coded to correspond to their position, with "layer0" being the top-most frame.

`--vid-duration="(x,y)"`

The duration of the outputted clip.

`--opacity=""`

The opacity of the videos to be blended.

`--blend-mode-1="name-of-blend-mode"`

The script first blends two videos together. This argument handles what that blend mode is.

`--blend-mode-2="name-of-blend-mode"`

The script then blends the two first videos with the third. This handles what blend mode is used in that operation.

### Outputs
`--output-dir="path/to/output"`

This handles where the script will put the final outputted clip. It may be reused by another script in the controller if needed!

## Other Notes

### Layers

###
