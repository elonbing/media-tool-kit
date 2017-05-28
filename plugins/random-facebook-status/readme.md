# Random Facebook Status

Prints a random Facebook status as text.

> Put the guns👉🔫🔫🔫 down in box.
> 👊👊👊👊👊👊 #Memphis #boxing #SHARE #now show the world how real men box and put the guns down to bring our community together..💯💯💯👊🚫🛇😇📽🎬


## Example Usage
```
python random-facebook-status.py \
  --character-limit="(5, 60)"
  --output-dir="media/text"
  --save-to-file
```

## Configuration

This plugin uses the Facebook API. You will need to have a Facebook account in order to access. Refer to the terms and conditions if you have any questions regarding usage and protocol.

[more info on this]

## Arguments

`--character-limit="  "`

Limits the output to a certain range of characters.

`--output-dir="   "`

The directory that the completed thing will output to.

`--save-to-file`

Using this flag will output generated text as a .txt file.

## Development Notes
- A blacklist should exist as a simple blacklist.txt file.
- Include documentation on authorizing w/ Facebook
- Something I found that might help? https://github.com/dfreelon/fb_scrape_public
