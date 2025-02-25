
$mkv_files = Get-ChildItem .\ -Name -Include *.avi


foreach ($movie_name in $mkv_files){
    $file_name = $movie_name.ToString()
    $output_file_name = $file_name.replace(".avi",".mkv")
    ffmpeg -i "$file_name" -map 0 -map -v -map V -c:a copy -c:s copy -c:v libsvtav1 -crf 30 ".\av1\$output_file_name"
}
