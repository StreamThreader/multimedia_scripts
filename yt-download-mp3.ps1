$yt_url=$args[0]

yt-dlp -f 'ba' -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --convert-thumbnails jpg --embed-metadata --restrict-filenames --windows-filenames -o "%(uploader)s_-_%(title)s.%(ext)s" $yt_url
