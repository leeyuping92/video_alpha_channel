@echo off
for %%i in (*.mov) do (
    ffprobe -v quiet -select_streams v:0 -show_entries stream=codec_name,codec_info_nb_frames,pix_fmt -print_format json -of json "%%i" > "%%~ni.json"
)
