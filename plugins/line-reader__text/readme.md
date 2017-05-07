# Line Reader

Reads a line off of a text file. That's it.

![illustration](image.png)


## Example Usage
```
python line-reader__text.py \
  --text-file-input="source.txt" \
  --number-of-lines="(1,6)" \
  --print-to-file="yes" \
  --output-dir="media/text"
```
## Arguments

`--text-file-input=" "`

The source text file for the script.

`--number-of-lines=" "`

The number of lines that you want printed out. For a variable number, use `(x,y)`.

`---print-to-file="  "`

Using `yes` will output as a .txt. No prints it in the console. Use no when using in other scripts.

`--output-dir="  "`

Not specifying an output directory outputs a .txt in the directory that the script is in.
