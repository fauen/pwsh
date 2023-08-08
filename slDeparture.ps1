# Load configuration
[xml]$ConfigFile = Get-Content "slDeparture.xml"
$key = $ConfigFile.Settings.Key
$site = $ConfigFile.Settings.SiteID

$Departure = Invoke-RestMethod -Method Get -Uri "https://api.sl.se/api2/realtimedeparturesV4.json?key=$key&siteid=$site&timewindow=30"
$Departure.ResponseData.Metros.DisplayTime