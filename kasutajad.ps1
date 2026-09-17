function Remove-Tapitahed {
    param (
        [string]$Text
    )

    $Text = $Text.Replace("ä", "a")
    $Text = $Text.Replace("Ä", "A")
    $Text = $Text.Replace("ö", "o")
    $Text = $Text.Replace("Ö", "O")
    $Text = $Text.Replace("ü", "u")
    $Text = $Text.Replace("Ü", "U")
    $Text = $Text.Replace("õ", "o")
    $Text = $Text.Replace("Õ", "O")

    return $Text
}

$nimed = @(
    "Jüri Tõnisson",
    "Märt Põder",
    "Põim Mägi",
    "Kärt Õunapuu",
    "Ülle Päts",
    "Tõnu Kõiv",
    "Mägi Järv"
)

foreach ($nimi in $nimed) {

    $osad = $nimi.Split(" ")

    $eesnimi = Remove-Tapitahed $osad[0]
    $perenimi = Remove-Tapitahed $osad[1]

    $kasutajanimi = "$($eesnimi.ToLower()).$($perenimi.ToLower())"

    Write-Host "$nimi -> $kasutajanimi"
}