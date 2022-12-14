#! /bin/bash
# shellcheck disable=SC2185

# Counting the number of files, directories and links in the current directory.
filer=$(find -type f | wc -l)
mapper=$(find -type d | wc -l)
linker=$(find -type l | wc -l)

# Printing the number of files, directories and links in the current directory.
echo "Antall filer: $filer"
echo "Antall mapper: $mapper"
echo "Antall linker: $linker"