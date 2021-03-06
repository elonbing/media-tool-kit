# Youtube Poetry

Generates a "poem" from closed captions of random YouTube Videos. 

Originally designed for http://hamburgermusic.tumblr.com

![hamburgermusic](image.png)

```
It makes people feel very alive.
Since I was a little girl.
Emotional control, stress management.
While you’re going throughthis transformation.
```

## Example Usage
```
python youtube-poetry.py \
--min-length="3"
--max-lines-per-video="2"
--number-of-captions="5"
--word-range="(3, 6)"
--output-dir="/output"
--capitalize
--save-to-file
```

## Configuration

This plugin uses the YouTube API. You will need to have a Google account in order to access and use this plugin. Refer to the terms and conditions if you have any questions regarding usage and protocol.

[more info on this]

## Arguments

`--min-length=" "`

The minimum length in characters for a caption. This was included so that we could avoid single letters or two letter words from being entire lines (though if you're into that kind of thing, just comment it out!)

`--max-lines-per-video=" "`

The amount of lines scraped from a single video. Setting this to a higher number gives higher performance but cuts down on the output’s “randomness”.

`--output-dir="   "`

The directory that the completed thing will output to.

`--capitalize`

Setting this flag will capitalize the first letter of each line.

`--save-to-file`

Setting this flag will print the as a .txt file.

## Development Notes
- A blacklist should exist as a simple blacklist.txt file.
- Include documentation on authorizing w/ YouTube
