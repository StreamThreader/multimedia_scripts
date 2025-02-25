
$mkv_files = Get-ChildItem .\ -Name -Include *.mkv


foreach ($movie_name in $mkv_files){
    $file_name = $movie_name.ToString()
    ffmpeg -i "$file_name" -map 0 -map -v -map V -c:a copy -c:s copy -c:v libsvtav1 -crf 30 ".\av1\$file_name"
}
