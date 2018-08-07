# Implement your module commands in this script.


# Export only the functions using PowerShell standard verb-noun naming.
# Be sure to list each exported functions in the FunctionsToExport field of the module manifest file.
# This improves performance of command discovery in PowerShell.
Export-ModuleMember -Function *-*

#Return the current Azure subscription


#Create resource Group
function CreateResouceGroup
{
    $name = Read-Host -Prompt 'Resource Group Name?'
    $location = Read-Host -Prompt 'Resource Group Location?'
    New-AzureRmResourceGroup -Name $name -Location $location
}

#Export

Export-ModuleMember -Function 'GetAzureSubscription'
Export-ModuleMember -Function 'CreateResouceGroup'


