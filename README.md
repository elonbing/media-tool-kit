![illustration](_app/mtk.png)

Media Tool Kit is a personal framework that I use for various algorithmic art projects.

I'm constantly tinkering with it and adapting it to different projects I'm working on. If you have any questions on this workflow, please feel free to submit an issue!

## How it Works
MTK is powered through a shell script called `controller.sh`. Commands are entered chronologically and command-line arguments are split up for legibility.

There are various built in variables and functions that can be used within those arguments to either generate random numbers or pipe in content from one command into another.

To better illustrate this workflow, let's take a look at a sample control script for a program that uploads content to youtube automatically. You can follow along by opening up the `example-controller.sh` file included in the root directory.

**In this example, the controller will:**
1. Create video content using the `random-video-blend` plugin
2. Uploading the output to youtube via the `upload-to-youtube` script.

```
# Blend Video
# //////////////////////////////
print "blending video..."

python random-video-blend.py \
  --audio-input-dir="media/audio" \
  --vid-input-dir="media/video" \
  --vid-duration="(30,60)" \
  --opacity=".4" \
  --blend-mode-1="name-of-blend-mode" \
  --blend-mode-2="name-of-blend-mode" \
  --output-dir="/output"
 &&
 ```
You'll notice that the as the `random-video-blend` script is called, the command-line arguments are listed out and fed corresponding variables.

The output above is piped into a folder in the home directory called simply `/output`.

```
# Upload to Youtube
# //////////////////////////////
print "uploading to youtube"

python youtube-upload \
  --video-input "$LATEST-OUTPUT" \
  --title="A cool vid" \
  --description="a description of a cool vid" \
  --category=Misc \
  --tags="mutter, beethoven" \
  --client-secrets=my_client_secrets.json \
  --credentials-file=my_credentials.json \
  --playlist "My favorite music" \  
```
We then use the output of the previous script and call it into the `upload-to-youtube` script by using a built in variable `$LATEST-OUTPUT`.

This variable will simply look at the `/output` folder and print out the latest file in that folder.

And that's it! It's essentially a more standardized way of manually triggering scripts in the command line.

Each plug-in has it's own set of documentation so that command-line arguments and syntax can be made clear!

## Why I Use This

By using a modular system of independent scripts / plugins, I can reuse them for future projects much more efficiently than building scripts from scratch.

Plus, even if this workflow isn't for you, there's at least a library of scripts to use for a number of different things.


## Plugins

Plugins can be written in multiple languages, but I tend to stick with Python, Javascript and Bash/Perl for now.

Note that some of these scripts are modified versions of open-source and publicly available software. When applicable the original authors are credited.


### Included Plugins
Further documentation use can be found in their respective readme's.

#### Audio
- `random-audio-blend` - Blends audio files together

#### Video
- `random-video-blend` - Blends three different videos together
- `centered-object-video` - Places an image or video in the middle of a video file
- `video-segment-splitter` - Splits a video into multiple parts
- `datamosh-video` - Destroys avi videos

#### Image
- `video-frame-splitter` - Splices frames from a video into images

#### Text
- `line-reader` - Prints a line from a specified text file
- `random-youtube-cc` - Prints a closed caption from a random youtube video
- `random-facebook-status` - Prints a random, public facebook status


### Upload scripts
These are scripts that are designed to upload content to a variety of different sources. They can be found in the `/uploaders` directory.

The current web apps that we included scripts in MTK for are:
- `upload-to-youtube`
- `upload-to-tumblr`
- `upload-to-twitter`
- `upload-to-vidme`

### Adding new Plugins
When adding a new script to the plugins section, make sure to follow the following rough guidelines

#### Argument Syntax

Scripts should ideally be treated as CLI's. This will make it easier for all variables to be managed directly within the main control script.

Arguments should be verbose and variables should be contained within double quotes. `plugin.py --argument1="variable" --argument2="variable"`


#### Documentation

Don't forget to document the plugin so other people know how to use it. I'd just copy another plugin's docs and edit from there. I would also add an example of the script being used in the controller like the example below.

```
python random-facebook-status.py \
  --print-to-file="yes" \
  --whitelist="whitelist.txt"
  --character-limit="(5, 60)"
  --output-dir="media/text"
```
