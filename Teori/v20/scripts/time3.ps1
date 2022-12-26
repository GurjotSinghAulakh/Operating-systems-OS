# Assigning the first argument to the variable ``.
$start = date $args[0]

# Assigning the second argument to the variable ``.
$stop = date $args[1]

# Subtracting the two dates.
$diff = $stop - $start

# Formatting the output to be two digits.
$h = '{0:d2}' -f $diff.Hours
$m = '{0:d2}' -f $diff.Minutes
$s = '{0:d2}' -f $diff.Seconds

# Printing the output of the script.
echo "${h}:${m}:${m}"