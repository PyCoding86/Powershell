function Test-IsLocalAdministrator {
    <#
.SYNOPSIS
    Function to verify if the current user is a local Administrator on the current system
.DESCRIPTION
    Function to verify if the current user is a local Administrator on the current system
.EXAMPLE
    Test-IsLocalAdministrator

    True
.NOTES
    # Cat
    @#
    #.com
    github.com/#
#>
    [CmdletBinding()]
    PARAM()
    try {
        ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}