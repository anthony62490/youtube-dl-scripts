# ===Download video===
# youtube-dl.exe -o %(title)s.%(ext)s https://www.youtube.com/watch?v=[VIDEO]

# ===Single video convert to .OGG===
# youtube-dl.exe -o %(title)s.%(ext)s -x --audio-format vorbis https://www.youtube.com/watch?v=[VIDEO]
# youtube-dl.exe -o "Custom Name".%(ext)s -x --audio-format vorbis https://www.youtube.com/watch?v=[VIDEO]

# ===Download playlist and convert to .OGG===
# youtube-dl.exe -o %(title)s.%(ext)s -x --audio-format vorbis --prefer-ffmpeg --ffmpeg-location E:\Video\Youtube-DL\ --yes-playlist https://www.youtube.com/playlist?list=PL[PLAYLIST ID]
# youtube-dl.exe -o "%(autonumber)s-%(upload_date)s - %(title)s.%(ext)s" -x --audio-format vorbis --prefer-ffmpeg --ffmpeg-location E:\Video\Youtube-DL\ --playlist-start 637 --yes-playlist https://www.youtube.com/playlist?list=PL[PLAYLIST ID]
# youtube-dl.exe -o "E:\Audio\%(upload_date)s - %(title)s.%(ext)s" -x --audio-format vorbis --prefer-ffmpeg --ffmpeg-location E:\Video\Youtube-DL\ --yes-playlist https://www.youtube.com/playlist?list=PL[PLAYLIST ID]

# ===Download playlist and DO NOT convert to .OGG===
# youtube-dl.exe -c -i -R 3 -o %(title)s.%(ext)s https://www.youtube.com/playlist?list=PL[PLAYLIST ID]

# ===Download videos from a batch of URLs===
# youtube-dl.exe -c -i -R 3 -o %(title)s.%(ext)s -a E:\Video\Youtube-DL\batch.txt
# ===Download videos from a batch file, sort into folders based on playlist and uploader===
# youtube-dl.exe -c -i -R 3 -o "E:\Video\%(uploader)s\%(playlist)s\%(playlist_index)s-%(title)s.%(ext)s" -a E:\Video\list.txt

# ===Download videos from a batch of URLs and convert to OGG===
# youtube-dl.exe -c -i -R 3 -o %(title)s.%(ext)s -x --audio-format vorbis -a E:\Video\Youtube-DL\batch.txt

# Download a slice of a large playlist. Only the 480p versions, title them with the upload date followed by the index number
# youtube-dl -i --playlist-start 3120 --playlist-end 3120 -f "[height <=? 480]" https://www.youtube.com/playlist?list=PL[PLAYLIST ID] -o "/home/anthony/Videos/%(upload_date)s-%(playlist_index)s-%(title)s.%(ext)s"

# Same as before, but convert to audio and keep the videos. Pull from batch and add videos to archive file
# youtube-dl.exe -o "E:\Video\%(uploader)s\%(playlist)s\%(upload_date)s-%(playlist_index)s-%(title)s.%(ext)s" -i -f "[height <=? 480]" --download-archive E:\Video\Youtube-DL\YTDLarchive.txt -x --audio-format best --keep-video -a E:\Video\Youtube-DL\batch2.txt

# ===Batch from vk.com (requires username and password)===
# youtube-dl.exe -c -i -R 3 -o %(title)s.%(ext)s -a E:\Video\Youtube-DL\batch.txt --username +[PHONE_NUMBER] --password [PASSWORD]

# ===Get Video IDs From Playlist (for keeping track of downloaded vids)===
# youtube-dl.exe --get-id https://www.youtube.com/playlist?list=PL[PLAYLIST ID] -i

# ===Extract audio from video===
# ffmpeg -i "E:\Video\[VIDEO].mp4" -vn -acodec copy [AUDIO].aac

# ===Batch Change MP4 to MKV on the fly DO NOT transcode audio===
# for %i in (*.mp4) do E:\Video\Youtube-DL\ffmpeg.exe -i "%i" -vcodec copy -acodec copy "%i".mkv

# ===Resync Audio===
# ffmpeg.exe -i "badsync.mp4" -itsoffset 5 -i badsync.mp4 -c:v copy -c:a copy -map 0:0 -map 1:1 goodsync.mp4
#    Delay Audio
# ffmpeg.exe -i "x.avi" -itsoffset 1 -i "x.avi" -map 0:v -map 1:a -vcodec copy -acodec copy "audio1.avi"

# ===MESS WITH STUFF HERE===
# youtube-dl.exe -c -i -R 3 -o E:\Misc\Vids\new\%(title)s.%(ext)s -a E:\Misc\Vids\links.txt
# youtube-dl.exe -c -i -R 3 -o "E:\Archive\HDD-Backup\2014\%(title)s.%(ext)s" -x --audio-format vorbis -a "E:\Archive\HDD-Backup\2014\[VIDEO].txt"
# ffmpeg.exe -ss 00:09:44.64 -t 00:03:15.52 -i "[CUSTOM NAME].mp4" -acodec copy -vcodec copy "[CUSTOM NAME].mp4"

# E:\Video\Youtube-DL\youtube-dl.exe -o "%(upload_date)s-%(playlist_index)s-%(title)s.%(ext)s" -x --audio-format vorbis --prefer-ffmpeg --ffmpeg-location E:\Video\Youtube-DL\ --yes-playlist --playlist-start 26 https://www.youtube.com/playlist?list=PLAmPx8nWedFX-mRKTKiUL7zl2iL2qw7Bm --download-archive E:\Video\Youtube-DL\YTDLarchive.txt
# E:\Video\Youtube-DL\youtube-dl.exe -o "%(upload_date)s - %(title)s.%(ext)s" -x --audio-format vorbis --prefer-ffmpeg --ffmpeg-location E:\Video\Youtube-DL\ --yes-playlist -a E:\Video\Youtube-DL\batch.txt --download-archive E:\Video\Youtube-DL\YTDLarchive.txt