# Random Facebook Status

Prints a random Facebook status as text.

> Put the guns👉🔫🔫🔫 down in box.
> 👊👊👊👊👊👊 #Memphis #boxing #SHARE #now show the world how real men box and put the guns down to bring our community together..💯💯💯👊🚫🛇😇📽🎬


## Example Usage
```
python random-facebook-status.py \
  --print-to-file="yes" \
  --whitelist="whitelist.txt"
  --character-limit="(5, 60)"
  --output-dir="media/text"
```

## Configuration

This plugin uses the Facebook API. You will need to have a Facebook account in order to access. Refer to the terms and conditions if you have any questions regarding usage and protocol.

[more info on this]

## Arguments

`--number-of-lines=" "`

The number of lines that you want printed out. For a variable number, use `(x,y)`.

`---print-to-file="  "`

Using `yes` will output as a .txt. No prints it in the console. Use no when using in other scripts.

`--output-dir="  "`

Not specifying an output directory outputs a .txt in the directory that the script is in.

`--whitelist="  "`

This can either point to a set of words (eg. `(word, word, word)`) or point to a whitelist. There is an example already set up for you :-).

`--character-limit="  "`

Limits the output to a certain range of characters.
