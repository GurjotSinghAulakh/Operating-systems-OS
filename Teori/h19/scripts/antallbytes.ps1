# A foreach loop that iterates through all files in the C: drive, and if the file has the extension
# .ps1, it adds the length of the file to the variable .
foreach ($ls in ls -r C:\ 2> $null){
    if ($ls.Extension -eq ".ps1"){
        $sum += $ls.length
    }
}

# It prints the sum of the length of all files with the extension .ps1 in the C: drive.
echo "Antall bytes av filer med extension .ps1 under C: $sum"