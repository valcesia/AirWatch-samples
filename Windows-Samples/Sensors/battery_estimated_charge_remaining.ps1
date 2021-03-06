# Returns the estimated remaining charge on the battery
# Return Type: Integer
# Execution Context: System
$battery_remain=(Get-WmiObject win32_battery).estimatedChargeRemaining | Measure-Object -Average | Select-Object -ExpandProperty Average
write-output $battery_remain