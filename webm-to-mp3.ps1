$mkv_files = Get-ChildItem .\ -Name -Include *.webm


foreach ($movie_name in $mkv_files){
    $file_name = $movie_name.ToString()
    $output_file_name = $file_name.replace(".webm",".mp3")
    ffmpeg -i "$file_name" -af loudnorm=I=-16:LRA=11:TP=-1.5 -c:a libmp3lame -b:a 320k -ar 44100 ".\$output_file_name"
}
