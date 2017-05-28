# random-blend__audio
Blends a variable number of audio tracks together.

![illustration](image.jpg)

## Example Usage

```
# Blend Audio
# //////////////////////////////

print "blending audio..."

python random-blend__audio.py \
  --audio-input-dir="media/audio" \
  --number-of-files="3" \
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

`--output-dir="  "`

This handles where the script will put the final outputted clip. It may be reused by another script in the controller if needed!

## Development Notes
- Not sure how reusable it is, but a previous script I designed uses this pattern: https://github.com/luismqueral/jumpcityrecords
- Each sound thats blended should be panned left right and center. This pattern repeats as more audio files get selected by the script to blend. L and R panning amounts should not be "hard" (panned 100%), let's figure out a way to make them range from 30%-80%.
- The audio library `SoX` will probably be best for this - http://sox.sourceforge.net/
- Should we add a small compressor to the output? Experiment with this!
