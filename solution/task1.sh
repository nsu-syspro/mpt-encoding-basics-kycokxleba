for f in solution/*; do
  iconv -f "$(uchardet "$f")" -t UTF-8 "$f" -o "$f.fix"
  mv "$f.fix" "$f"
done