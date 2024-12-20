[CmdletBinding()]
param (
    [Parameter(Position = 0, Mandatory = $true, ValueFromRemainingArguments = $true)]
    [ValidateCount(1, [int]::MaxValue)]
    [string[]]$Files,

    [switch]$DetectSettings,

    [switch]$DryRun,

    [Parameter()]
    [Hashtable]$FormatterArgs = @{}
)

$ErrorActionPreference = 'Stop'
Invoke-SimpleFormatter @PSBoundParameters
