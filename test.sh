#for pclm in pclms/*; do
#	for ppd in ppds/*; do
#		cupsfilter -o media=A4 -i application/PCLm -m application/vnd.cups-raster -P "$ppd" "$pclm" > rasters/"$(basename "$ppd" .ppd)"_"$(basename "$pclm")".pwg

#	done
#done
for scanned in scanned/*; do
	cupsfilter -o media=A4 -i application/PCLm -m application/vnd.cups-raster "$scanned" > rasters\(scanned\)/"$(basename "$scanned")".pwg
done
