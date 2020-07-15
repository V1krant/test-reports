for pclm in pclms/*; do
	for ppd in ppds/*; do
		#echo "cupsfilter -o media=A4 -i application/PCLm -m application/vnd.cups-raster -P "$ppd" "$pclm" > rasters/"$(basename "$ppd" .ppd)"_"$(basename "$pclm")".pwg"
		cupsfilter -o media=A4 -i application/PCLm -m application/vnd.cups-raster -P "$ppd" "$pclm" > rasters/"$(basename "$ppd" .ppd)"_"$(basename "$pclm")".pwg
		# echo "cupsfilter -o media=A4 -i application/PCLm -m application/vnd.cups-raster -P $(basename "$ppd") $(basename "$pclm")"
		# cupsfilter $(basename "$filename")
	done
done
