find test -type f -name "*.md" -exec sed -i '' -E 's,\[([a-zA-Z0-9,-_ ]*)\]\(\),\1<!-- TODO add a link to corresponding document -->,g' {} \;