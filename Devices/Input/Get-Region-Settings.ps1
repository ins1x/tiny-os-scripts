# Get the current culture information 
$cultureInfo = Get-Culture 
 
# Display culture information 
Write-Host "Name: $($cultureInfo.Name)" 
Write-Host "LCID: $($cultureInfo.LCID)" 
Write-Host "Language Name: $($cultureInfo.TwoLetterISOLanguageName)" 
Write-Host "Display Name: $($cultureInfo.DisplayName)" 
Write-Host "Calendar Type: $($cultureInfo.DateTimeFormat.Calendar)" 
Write-Host "Date Time Format: $($CultureInfo.DateTimeFormat)" 
Write-Host "Number Format: $($CultureInfo.NumberFormat)" 
Write-Host "Currency Symbol: $($cultureInfo.NumberFormat.CurrencySymbol)" 
Write-Host "Short Date Format: $($cultureInfo.DateTimeFormat.ShortDatePattern)" 
Write-Host "Long Date Format: $($cultureInfo.DateTimeFormat.LongDatePattern)" 
Write-Host "Short Time Format: $($cultureInfo.DateTimeFormat.ShortTimePattern)" 
Write-Host "Long Time Format: $($cultureInfo.DateTimeFormat.LongTimePattern)" 
Write-Host "First Day of Week: $($cultureInfo.DateTimeFormat.FirstDayOfWeek)" 