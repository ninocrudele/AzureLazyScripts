# Implement your module commands in this script.


# Export only the functions using PowerShell standard verb-noun naming.
# Be sure to list each exported functions in the FunctionsToExport field of the module manifest file.
# This improves performance of command discovery in PowerShell.
Import-Module .\ALSAzureBase.psm1
Import-Module .\ALSAzureFunctions.psm1

Export-ModuleMember -Function *-*

function als {

    do
        {
            MainMenu -Title 'My Menu'

            $selection = Read-Host 'Please make a selection'

            switch ($selection)
            {
                '1' {.\Scripts\Subscriptions\GetAzureSubscription.ps1}
                '2' {'.'}
                '3' {'#3'}
            }
            pause

        }
    until ($selection -eq 'q')
}

Export-ModuleMember -Function 'als'
Export-ModuleMember -Function *-*

#