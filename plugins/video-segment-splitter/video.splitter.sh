#split video
ffmpeg -i /Users/luis/Dropbox/Public/video/samples/_360/Zorns\ Lemma\ -\ Compositional\ Matrix.mp4 -acodec copy -f segment -segment_time 30 -vcodec copy -reset_timestamps 1 -map 0 -an compositional-matrix-%d.mp4
