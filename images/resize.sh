#!/bin/bash
for f in *.png *.jpg; do
	# Skip if file doesn't exist or is already a hi-res version
	[ -e "$f" ] || continue
	[[ "$f" == *"_hi-res"* ]] && continue

	# Extract filename and extension
	filename="${f%.*}"
	extension="${f##*.}"

	# 1. Rename original to _hi-res
	mv "$f" "${filename}_hi-res.${extension}"

	# 2. Create optimized version with original name
	# -resize 1920x1920> : Resizes to max 1920px width or height, only if larger
	# -quality 85        : Sets compression quality to 85% (good balance)
	convert "${filename}_hi-res.${extension}" -resize '1920x1920>' -quality 85 "$f"

	echo "Processed: $f"
done
