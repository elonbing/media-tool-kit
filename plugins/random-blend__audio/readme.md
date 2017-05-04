# blend__audio
Blends a variable number of audio tracks

![illustration](image.jpg)

## Example Usage

```
# Blend Audio
# //////////////////////////////

print "blending audio..."

python random-blend__audio.py \
  --audio-input-dir="media/audio" \
  --number-of-files="media/audio" \
  --clip-duration="(30,60)" \
  --output="path/to/output" \
 &&
 ```

## Arguments
`--audio-input-dir="  "`

Used to import audio content into the script. It will select random files based on the directory that you provide.


`--number-of-files="  "`

The number of audio files that the script will blend.


`--clip-duration="  "`

How long you want the outputted clips to be. This is measured in seconds. It can either be a single number (60) or a range (60,120).

`--output="  "`

This handles where the script will put the final outputted clip. It may be reused by another script in the controller if needed!
