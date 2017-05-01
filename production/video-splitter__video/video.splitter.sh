#split video
ffmpeg -i /Users/luis/Desktop/FIRST\ TEST\ OF\ WJ-MX10\ LUMAKEY\ MOD\!\!\!.mp4 -acodec copy -f segment -segment_time 30 -vcodec copy -reset_timestamps 1 -map 0 -an test%d.mp4
