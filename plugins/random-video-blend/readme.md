# random-video-blend
Randomly blends 3 videos from a specified folder.

![illustration](image.png)

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
  --color-key-color-1="ffffff" \
  --color-key-simularity-1=".3" \
  --color-key-blend-1=".9" \
  --output-dir="output" \
  --layers \
 &&
 ```
 
## Process
The script should follow the following set of steps.

- Randomly select videos 1, 2 and 3.
- Blend video 1 and 2 using `blend-mode-1`
- If a color key flag is included, apply it to the result of 1 and 2
- Place the result of 1 and 2 over video 3.
- Blend that video with video 3

## Arguments

### Inputs
`--audio-input="  "`

`--vid-input-dir="  "`

These arguments are used to input audio or video into the script. You can point `--audio-input` to a file or to a directory (where it will select a random file)


### Settings
`--layers`

Including this flag will allow you to control video layers in the script. This feature is deactivated by default.

If you want to use this feature, do the following steps:

1. Create a directory (call it whatever you want)
2. Make three sub-directories called layer-1, layer-2 and layer-3
3. Link the directory to `output-dir`

Those three folders correspond to video hierarchy in the layering process, layer-1 being on top.

`--vid-input-dir="  "`

This should point to the parent folder with the `/layer-1`, `/layer-2`, and `/layer-3` subfolders. The folder can live anywhere, but the names are hard coded to correspond to their position, with "layer-1" being the top-most frame.

`--vid-duration="  "`

How long you want the outputted clips to be. This is measured in seconds. It can either be a single number -- `(60)` or a range -- `(60,120)`.

`--opacity=""`

The opacity of the videos to be blended.

`--blend-mode-1="name-of-blend-mode"`

The script first blends two videos together. This argument handles what that blend mode is.

`--blend-mode-2="name-of-blend-mode"`

The script then blends the two first videos with the third. This handles what blend mode is used in that operation.

### Advanced Blending
To make the blends deeper, we can use FFMPEG's `colorkey` feature: https://ffmpeg.org/ffmpeg-filters.html#colorkey

The following arguments can be used in this script:

`--chroma-key-color=""`
This accepts a hex value and targets it for transparency.

`--chroma-key-simularity=" . "`
This value accepts an integer from 0 to 1 and sets how sensitive the filter is.

`--chroma-key-blend=".9"`
This value accepts an integer from 0 to 1 and sets the opacity of the targeted color.

### Outputs
`--output-dir="path/to/output"`

This handles where the script will put the final outputted clip. It may be reused by another script in the controller if needed!
