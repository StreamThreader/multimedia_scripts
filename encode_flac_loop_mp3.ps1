
$mkv_files = Get-ChildItem .\ -Name -Include *.flac


foreach ($movie_name in $mkv_files){
    $file_name = $movie_name.ToString()
    $output_file_name = $file_name.replace(".flac",".mp3")
    ffmpeg -i "$file_name" -c:a libmp3lame -b:a 320K -map_metadata 0 -id3v2_version 3 ".\mp3\$output_file_name"
}
