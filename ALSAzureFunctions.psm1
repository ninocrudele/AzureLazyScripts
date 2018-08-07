# Implement your module commands in this script.


# Export only the functions using PowerShell standard verb-noun naming.
# Be sure to list each exported functions in the FunctionsToExport field of the module manifest file.
# This improves performance of command discovery in PowerShell.
Export-ModuleMember -Function *-*

function MainMenu
{

        #$invocation = (Get-Variable MyInvocation).Value
        #$directorypath = Split-Path $invocation.MyCommand.Path
        #$settingspath = $directorypath + '\settings.xml'

    param (
    [string]$Title = 'Azure Lazy Scripts'
    )

    Clear-Host
    Write-Host "================ $Title ================"

    Write-Host "1 't Login"
    Write-Host "2 't Get Current Subscription"
    Write-Host "3 't Set Subscription"
    Write-Host "q 't Quit."

}

#Export

Export-ModuleMember -Function 'MainMenu'

