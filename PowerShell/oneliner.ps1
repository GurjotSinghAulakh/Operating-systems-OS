
# Killing all processes with the name "navn" : nkill.ps1
ps | foreach {	if($_.name -eq "navn"){kill $_.id -whatif}}

# Listing all files in the current directory, and for each file it is adding the length of the file to
# the variable .
ls | ForEach-Object {$sum += $_.Length}

# Man må på kommandolinjen passe på at variabelen nullstilles og hvis man i tillegg ønsker å skrive ut svaret
# kan man akkurat som i bash adskille kommandoer med semikolon
$sum = 0; ls | ForEach-Object {$sum += $_.Length };$sum

# Med Where-Object kan man velge ut objekter med spesielle egenskaper.
# For eksempel kan man plukke ut mapper fra en listing av filer og mapper på følgende måte:
ls | Where-Object  {$_.PSIsCointainer}

# for PSIsCointainer er en TRUE/FALSE property som bare er sann for mapper.
# Where-Object kan kombineres med forEach-Object:
$sum = 0; ls | Where-Object  {$_.extension -eq ".txt"} | ForEach-Object {$sum += $_.Length };$sum