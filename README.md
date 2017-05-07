# Media Tool Kit
Media tool kit is a scripting platform for software based art.

![illustration](_app/mtk.png)

It's based around a shell script called `controller.sh` where you can call scripts (across a variety of different languages) to perform sequential tasks. We refer to these scripts as `plugins` in the context of this platform.

## How it Works
Let's start by looking at a snippet from example control script. You can follow along by opening up the `example-controller.sh` file included in the root directory.

When run this will blend a video using the `random-video-blend` plugin and upload the output to youtube. You'll notice that the as the `random-video-blend` script is called, the command-line arguments are listed out and fed corresponding variables.

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
  --output="path/to/output" \
 &&
 ```

The output above is piped into a folder in the home directory called simply `/output`. We'll use the output of the previous script and call it into the `upload-to-youtube` script by using a built in variable `$LATEST-OUTPUT`.

This variable will simply look at `/output` and print out the latest file in that folder.

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

And that's it! It's essentially a more standardized way of manually triggering scripts in the command line.

## Plugins

Below are the plug-ins that are currently included with MTK along with what they do.

### Audio
- `random-audio-blend`

### Video
- `random-video-blend`
- `centered-object-video`
## Upload scripts
These are scripts that are designed to upload content to a variety of different sources. The current web apps that we included scripts in MTK for are:
- Youtube
- Tumblr
- Twitter
- Vidme

More may come soon!
