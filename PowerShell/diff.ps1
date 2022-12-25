# Filene run1.ps1 og run2.ps1 eksisterer ikke

# Measuring the time it takes to run the two scripts.
$tid1 = Measure-Command{.\run1.ps1}
$tid2 = Measure-Command{.\run2.ps1}

$diff = $diff1 -$diff2

$sek = $diff.TotalSeconds

"run1.ps1 bruker $sek sekunder mer enn run2.ps1"