# Pedir el numero limite al usuario
$entrada = Read-Host "Introduce un numero limite"

# Validar que sea un numero entero positivo
if (-not ($entrada -as [int]) -or [int]$entrada -lt 1) {
    Write-Host "Por favor, introduce un numero entero mayor que 0." -ForegroundColor Red
    exit
}
$limite = [int]$entrada

# Ciclo for de 1 hasta el límite
for ($i = 1; $i -le $limite; $i++) {

    # Hora exacta de esta iteracion
    $hora = Get-Date -Format "HH:mm:ss"

    # Condicion para identificar par o impar
    if ($i % 2 -eq 0) {
        Write-Host "[$hora] El numero $i es PAR" -ForegroundColor Green
    }
    else {
        Write-Host "[$hora] El numero $i es IMPAR" -ForegroundColor Yellow
    }
}