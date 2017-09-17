#!/usr/bin/env python3
CONTAINER = 'mp4'

import argparse
import random
from pathlib import Path
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument("--vid-input-dir", type=Path, required=True)
parser.add_argument("--audio-input", type=Path)
parser.add_argument("--number-of-vids", type=int, default=3)
parser.add_argument("--vid-size", nargs=2)
parser.add_argument("--vid-duration", nargs="+")
parser.add_argument("--blend-mode", required=True)
parser.add_argument("--opacity", default=0.5)
parser.add_argument("--output-dir", type=Path, required=True)

colorkey = parser.add_argument_group("color-key")
colorkey.add_argument("--color-key-color")
colorkey.add_argument("--color-key-similarity", type=float)
colorkey.add_argument("--color-key-opacity", type=float)

args = parser.parse_args()

def get_random_files(p, k):
    return random.sample(list(x for x in p.iterdir() if x.is_file()), k)

videos = get_random_files(args.vid_input_dir, args.number_of_vids)
outfile = args.output_dir / "out.{ext}".format(ext=CONTAINER)

command = ['ffmpeg']
for video in videos:
    command.append('-i')
    command.append(str(video))

filter_complex = ""
for i in range(len(videos)):
    filter_complex += "[{index}:v]format=rgba[in{index}];".format(index=i)
filter_complex += "[in0]null"
for i in range(1, len(videos)):
    filter_complex += ",[in{index}]blend=all_mode='{blend_mode}':all_opacity={opacity}".format(index=i,
                                                                                               blend_mode=args.blend_mode,
                                                                                               opacity=args.opacity)

filter_complex += "[out]"
command.extend(['-filter_complex', filter_complex, '-map', '[out]', '-f', CONTAINER, str(outfile)])

print("Calling ffmpeg with parameters: {params}".format(params=command[1:]))
subprocess.call(command)