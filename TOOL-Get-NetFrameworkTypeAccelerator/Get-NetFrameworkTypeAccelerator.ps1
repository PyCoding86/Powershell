function Get-NetFrameworkTypeAccelerator {
    <#
.SYNOPSIS
    Function to retrieve the list of Type Accelerator available
.DESCRIPTION
    Function to retrieve the list of Type Accelerator available

.EXAMPLE
    Get-NetFrameworkTypeAccelerator

    Return the list of Type Accelerator available on your system
.EXAMPLE
    Get-Accelerator

    Return the list of Type Accelerator available on your system
    This is a function alias created by [Alias()]
.NOTES
    # Cat
    #.com
    @#
    github.com/#
.LINK
    https://github.com/#/PowerShell
#>
    [Alias('Get-Acceletrator')]
    PARAM ()
    [System.Management.Automation.PSObject].Assembly.GetType("System.Management.Automation.TypeAccelerators")::get
}