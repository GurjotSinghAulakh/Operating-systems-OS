# Iterating through all the files in the current directory that end in `.ps1` and adding the length of
# each file to the variable ``.
foreach ($ls in ls *.ps1){
    $sum += $ls.length
}

# Adding the length of each file to the variable ``.
$sum

ls | ForEach-Object {$sum += $_.Length}