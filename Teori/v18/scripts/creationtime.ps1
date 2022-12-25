# It creates an empty array.
$days = @()

for ($day = 0; $day -lt 7; $day++) {
    $days += 0
}

# Iterating through all the files in the C:\Users directory, and for each file it is incrementing the
# value in the array `` at the index corresponding to the day of the week.
foreach ($fil in ls -r C:\Users 2> $null)
{
    $day = [int]$fil.CreationTime.DayOfWeek
    $days[$day]++
}

# Iterating through the array and printing the number of files created on each day of the week.
for ($day = 0; $day -lt 7; $day++) {
    $antall = $days[$day];
    echo "Dag ${day}: $antall"
}