#!/bin/bash
mkdir -p resized
for img in *.{jpg,jpeg,png}; do
  [ -f "$img" ] || continue
  magick "$img" -resize '1000x1000>' "resized/$img"
done
