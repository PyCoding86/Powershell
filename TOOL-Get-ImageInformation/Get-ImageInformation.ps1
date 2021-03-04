function Get-ImageInformation {
    <#
.SYNOPSIS
    function to retrieve Image file information

.DESCRIPTION
    function to retrieve Image file information

.PARAMETER FilePath
    Specify one or multiple image file path(s).

.EXAMPLE
    PS C:\> Get-ImageInformation -FilePath c:\temp\image.png

.NOTES
    # Cat
    #.com
    @#
    github.com/#
.LINK
        https://github.com/#/PowerShell
#>
    PARAM (
        [System.String[]]$FilePath
    )
    Foreach ($Image in $FilePath) {
        # Load Assembly
        Add-Type -AssemblyName System.Drawing

        # Retrieve information
        New-Object -TypeName System.Drawing.Bitmap -ArgumentList $Image
    }
}