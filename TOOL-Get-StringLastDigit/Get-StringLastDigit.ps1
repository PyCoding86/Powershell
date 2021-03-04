function Get-StringLastDigit {
<#
.SYNOPSIS
    Get the last digit of a string
.DESCRIPTION
    Get the last digit of a string using Regular Expression
.PARAMETER String
    Specifies the String to check
.EXAMPLE
    PS C:\> Get-StringLastDigit -String "#.cat5"

    5
.EXAMPLE
    PS C:\> Get-StringLastDigit -String "#.cat"

    <no output>
.EXAMPLE
    PS C:\> Get-StringLastDigit -String "#.cat" -Verbose

    <no output>
    VERBOSE: The following string does not finish by a digit: #.cat
.NOTES
    # Cat
    @#
    #.com
.LINK
    https://github.com/#/PowerShell
#>
    [CmdletBinding()]
    PARAM($String)
    try {
        #Check if finish by Digit
        if ($String -match "^.*\d$") {
            # Output the last digit
            $String.Substring(($String.ToCharArray().count) - 1)
        }
        else { Write-Verbose -Message "The following string does not finish by a digit: $String" }
    }
    catch { $PSCmdlet.ThrowTerminatingError($_) }
}