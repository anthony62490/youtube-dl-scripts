# Download a slice of a large playlist. Only the 480p versions, title them with the upload date followed by the index number
youtube-dl -i --playlist-start 3120 --playlist-end 3120 -f "[height <=? 480]" https://www.youtube.com/playlist?list=PL[...] -o "/home/anthony/Videos/%(upload_date)s-%(playlist_index)s-%(title)s.%(ext)s"
