# Video Blender
Randomly blends a number of videos from a defined folder using FFMPEG.

![illustration](image.png)

## Example Usage

```
python blend__video.py \
  --vid-input-dir="media/video" \
  --audio-input="media/audio" \
  --number-of-vids="3" \
  --vid-size="(640,480)" \
  --vid-duration="(30,60)" \
  --blend-mode="overlay" \
  --color-key-color="ffffff" \
  --color-key-simularity=".3" \
  --color-key-opacity=".9" \
  --output-dir="/output" \
 ```

## Task List (Dev)
Below is an example of the steps that the script should take when run.

1. Check `--audio-input` value
   - If a directory is entered, select random file within that directory
2. Check `video-input-dir` value
3. Check `--number-of-vids` value
4. Go into `--video-input-dir` and select the number of videos specified in `--number-of-vids`
5. Check `--vid-duration` value
6. Randomly crop the selected videos based on `--vid-duration` value
7. Check `--vid-size`
8. Apply `--vid-size` attributes to cropped videos.
9. Set one of the videos to be set as the "base", or lowest layer video. This video will not be affected by blending.
10. Check `blend-mode`
11. Begin blending videos
12. After all videos are blended, check `--color-key` value
13. Apply `--color-key` attributes to final blended videos
14. Place final blended and color keyed video on top of base video
15. Crop audio track to value of `vid-duration`
16. Place audio track on video
17. Output final video

## Arguments

### Inputs
`--audio-input="  "`

`--vid-input-dir="  "`

These arguments are used to input audio or video into the script. You can point `--audio-input` to a file or to a directory (where it will select a single, random file).


### Video Settings
`--number-of-vids=" "`
The number of videos that will be randomly blended.

`--vid-size="(width,height)"`
This determines the size and overall resolution of the outputted video. All videos that are inputted through the script will scale to this resolution.

`--vid-duration="(min-time,max-time)"`

How long you want the outputted clips to be. This is measured in seconds. It can either be a single number -- `(60)` or a range -- `(60,120)`.

---
**TO BE INCLUDED LATER**
`--layers`
To give you some control over how videos are layered, you can include this flag.

**If you want to use this feature, do the following:**

1. Create a directory called `/layers`
2. Make sub-directories based on the number of video layers you wish to blend. This should be the same amount as the value for the `--number-of-vids` argument.

```
random-video-blend/
├── /layers
│   ├── /layer-1
│   ├── /layer-2
│   ├── ...
│   ├── /layer-5
```
3. Set `output-dir` as `/layers`


### Blend Settings
`--opacity=" "`
The opacity of each blended video layer.

`--blend-mode="  "`
The name of the blend mode to be used. This will apply to all videos. See https://ffmpeg.org/ffmpeg-filters.html#blend_002c-tblend for list of blend types.

`--color-key-target="  "`
This accepts a hex value and targets it for transparency. `ffffff` is white and `000000` is black.

`--color-key-simularity="  "`
This value determines how sensitive the color keying function will be to the color. This value accepts a floating point from 0 to 1, 0 being the least sensitive.

`--color-key-opacity="  "`
This value accepts an integer from 0 to 1 and sets the opacity of the targeted color, 0 being totally transparent.

See https://ffmpeg.org/ffmpeg-filters.html#colorkey for more information about the `colorkey` flag and how it works.


### Outputs
`--output-dir="path/to/output"`

This handles where the script will put the final outputted clip. It may be reused by another script in the controller if needed!
