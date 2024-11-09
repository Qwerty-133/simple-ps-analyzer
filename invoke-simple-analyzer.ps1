[CmdletBinding()]
param (
    [Parameter(Position = 0, Mandatory = $true, ValueFromRemainingArguments = $true)]
    [ValidateCount(1, [int]::MaxValue)]
    [string[]]$Files,

    [Parameter()]
    [switch]$UseDefaults,

    [Parameter()]
    [ValidateSet('plain', 'github', 'color')]
    [string]$Format = 'color',

    [Parameter(   )]
    [Hashtable]$AnalyzerArgs = @{}
)

$ErrorActionPreference = 'Stop'
Invoke-SimpleAnalyzer @PSBoundParameters
