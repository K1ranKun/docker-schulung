docker save -o images.zip IMAGE_1 IMAGE_2

docker load -i PFAD_ZUR_zip/images.zip

docker tag CURRENT_NAME NEW_NAME