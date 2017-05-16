# Media Tool Kit
Media tool kit is a language-agnostic scripting platform for making software based art.

![illustration](_app/mtk.png)

At its core, this platform is based around a shell script called `controller.sh`. In this script, you can arrange any number of task-specific scripts to perform a sequence of actions. We refer to these types of scripts as `plugins` in the context of this platform.

Since the control script suggests standardized way of invoking plugins, it's now fairly easy to use and reuse a wide variety of media-manipulating scripts!

## How it Works
Let's take a look at a sample control script. You can follow along by opening up the `example-controller.sh` file included in the root directory.

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
  --output="/output" \
 &&
 ```
You'll notice that the as the `random-video-blend` script is called, the command-line arguments are listed out and fed corresponding variables.

The output above is piped into a folder in the home directory called simply `/output`.

```
# Upload to Youtube
# //////////////////////////////
print "uploading to youtube"

python youtube-upload \
  --title="A cool vid"
  --description="a description of a cool vid" \
  --category=Misc \
  --tags="mutter, beethoven" \
  --client-secrets=my_client_secrets.json \
  --credentials-file=my_credentials.json \
  --playlist "My favorite music" \
  $LATEST-OUTPUT
```
We'll then use the output of the previous script and call it into the `upload-to-youtube` script by using a built in variable `$LATEST-OUTPUT`.

This variable will simply look at the `/output` folder and print out the latest file in that folder.

And that's it! It's essentially a more standardized way of manually triggering scripts in the command line.

Each plug-in has it's own set of documentation so that command-line arguments and syntax can be made clear!

## Included Plugins

Below are the plug-ins that are currently included with MTK along with what they do. More documentation about their functionality and use can be found in their respective readme's under the `/plugins` folder.

Note that some of these scripts are modified versions of open-source and publically availiable software. When applicable the original authors are credited.

### Audio
- `random-audio-blend` - Blends audio files together

### Video
- `random-video-blend` - Blends three different videos together
- `centered-object-video` - Places an image or video in the middle of a video file
- `video-segment-splitter` - Splits a video into multiple parts
- `datamosh-video` - Destroys avi videos

### Image
- `video-frame-splitter` - Splices frames from a video into images

### Text
- `line-reader` - Prints a line from a specified text file
- `youtube-cc` - Prints a closed caption from a random youtube video


## Upload scripts
These are scripts that are designed to upload content to a variety of different sources. The current web apps that we included scripts in MTK for are:
- `upload-to-youtube`
- `upload-to-tumblr`
- `upload-to-twitter`
- `upload-to-vidme`

More may come soon!
