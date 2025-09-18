#!/bin/bash

# Find all YAML files in the specified directory
find provider-dev/openapi/src/sumologic/v00.00.00000/services/ -name "*.yaml" | while read file; do
  # Remove broken anchors using sed
  sed -i \
    -e 's|(#operation/[^)]*)||g' \
    -e 's|(#section/[^)]*)||g' \
    -e 's|(#tag/[^)]*)||g' \
    "$file"
  
  echo "Processed: $file"
done

echo "All files processed. Broken anchors have been removed."