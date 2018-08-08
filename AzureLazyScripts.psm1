# Implement your module commands in this script.


# Export only the functions using PowerShell standard verb-noun naming.
# Be sure to list each exported functions in the FunctionsToExport field of the module manifest file.
# This improves performance of command discovery in PowerShell.

$scriptRoot = 'C:\Users\nino\Documents\GitHub\AzureLazyScripts'

Import-Module "$scriptRoot.\ALSAzureBase.psm1"
Import-Module "$scriptRoot.\ALSAzureFunctions.psm1"

Export-ModuleMember -Function *-*

function als {
    $localPath = Join-Path  $PSScriptRoot "\Sript"
    $commandInvoke = ""

    do
        {
            MainMenu -Title 'My Menu'


            $selection = Read-Host 'Please make a selection'

            if (!(Get-AzureRmContext).Subscription)
            {
                Write-Host "You are not logged in Azure, let me do that for you..."
                Login-AzureRmAccount
            }

            switch ($selection)
            {
                '1' {$commandInvoke = 'C:\Users\nino\Documents\GitHub\AzureLazyScripts\Scripts\Subscriptions\LoginAzureRmAccount.ps1'}
                '2' {$commandInvoke = 'C:\Users\nino\Documents\GitHub\AzureLazyScripts\Scripts\Subscriptions\GetAzureSubscription.ps1'}
                '3' {'#3'}
            }

            if ($commandInvoke -ne '')
            {
                Invoke-Expression $commandInvoke
            }


            pause

        }
    until ($selection -eq 'q')
}

Export-ModuleMember -Function 'als'
Export-ModuleMember -Function *-*

#