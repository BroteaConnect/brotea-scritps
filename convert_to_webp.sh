#!/bin/bash

SOURCE_DIR="/Users/cristhianrodriguez/repositories/brotea_workspace/brotea-resources"
DEST_DIR="/Users/cristhianrodriguez/repositories/brotea_workspace/brotea-resources-webp"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Find all JPG and PNG files and convert them to WebP
find "$SOURCE_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | while read -r file; do
    # Get the relative path from the source directory
    rel_path="${file#$SOURCE_DIR/}"
    
    # Get the directory part of the relative path
    dir_part=$(dirname "$rel_path")
    
    # Get the filename without extension
    filename=$(basename "$file")
    filename_noext="${filename%.*}"
    
    # Create the destination directory
    mkdir -p "$DEST_DIR/$dir_part"
    
    # Convert the file to WebP
    cwebp -q 80 "$file" -o "$DEST_DIR/$dir_part/$filename_noext.webp"
    
    echo "Converted: $file -> $DEST_DIR/$dir_part/$filename_noext.webp"
done

echo "Conversion complete. All images have been converted to WebP format."