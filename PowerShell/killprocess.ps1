# Assigning the first argument to the variable ``.
$s = $args[0] 

# Killing all processes that match the names passed in as arguments.
foreach ($p in ps ) {
    foreach ($name in $args) {
        if ($p.name -eq $name) {
            kill -whatif $p.id
        }
    }
}