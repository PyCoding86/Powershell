Function Get-StringCharCount {
    <#
    .SYNOPSIS
        This function will count the number of characters in a string
    .DESCRIPTION
        This function will count the number of characters in a string
    .EXAMPLE
        PS C:\> Get-StringCharCount -String "Hello World"

        11
    .NOTES
        # Cat
        @#
        #.com
    .LINK
        https://github.com/#/PowerShell
    #>
    PARAM ([String]$String)
    ($String -as [Char[]]).count
}