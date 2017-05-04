# blend__video
This script is used to randomly blend videos from a specified folder.

## Example Usage

```
# Blend Video
# //////////////////////////////

print "blending video..."

python blend__video.py \
  --audio-input="media/audio" \
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
`--audio-input="path/to/audio"`

`--vid-input-dir="path/to/video"`

These arguments are used to input audio or video into the script. You can point `--audio-input` to a file or to a directory (where it will select a random file)


### Settings
`--layers="yes"`

Including this argument will allow you to control video layers in the script. `--layers="no"` will deactivate it.

If you want to do this, do the following things:

1. Create a directory (call if whatever you want)
2. Make three sub-directories called layer-1, layer-2 and layer-3
3. Link the directory to `output-dir`

Those three folders correspond to video hierarchy in the layering process, layer-1 being on top.

`--vid-input-dir` should point to a folder with three sub-folders "layer0", "layer1", and "layer2". The folder can live anywhere, but the names are hard coded to correspond to their position, with "layer0" being the top-most frame.

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