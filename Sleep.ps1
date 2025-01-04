# Перевод компьютера в режим сна. 
# Используй аргументы powerShell в Power Toys:
#"-WindowStyle Hidden -ExecutionPolicy Bypass -File Sleep.ps1".
# Они позволят запускать на шорткате этот скрипт

Add-Type -TypeDefinition @"
    using System;
    using System.Runtime.InteropServices;
    public class SleepHelper {
        [DllImport("powrprof.dll", SetLastError = true)]
        public static extern bool SetSuspendState(bool hibernate, bool forceCritical, bool disableWakeEvent);
    }
"@
[SleepHelper]::SetSuspendState($false, $true, $false)  
Write-Host "The computer goes into sleep mode..."
