﻿if (Test-Path Function:TabExpansion2) {
    $OldTabExpansion = Get-Content Function:TabExpansion2
}

$Module = $MyInvocation.MyCommand.ScriptBlock.Module 
$Module.OnRemove = {

    #$Function:TabExpansion2 = $OldTabExpansion

    #Remove-Variable -name UnEscapeDotsAndSlashes -Force
    #Remove-Variable -name defaultUriParserFlagsValue -Force
    #Remove-Variable -name uriUnEscapesDotsAndSlashes -Force
}


# Aliases
New-Alias -Name grvh -value Get-RabbitMQVirtualHost -Description "Gets RabbitMQ's Virutal Hosts"
New-Alias -Name getvhost -value Get-RabbitMQVirtualHost -Description "Gets RabbitMQ's Virutal Hosts"
New-Alias -Name arvh -value Add-RabbitMQVirtualHost -Description "Adds RabbitMQ's Virutal Hosts"
New-Alias -Name addvhost -value Add-RabbitMQVirtualHost -Description "Adds RabbitMQ's Virutal Hosts"
New-Alias -Name rrvh -value Remove-RabbitMQVirtualHost -Description "Removes RabbitMQ's Virutal Hosts"
New-Alias -Name delvhost -value Remove-RabbitMQVirtualHost -Description "Removes RabbitMQ's Virutal Hosts"

New-Alias -Name gre -value Get-RabbitMQExchange -Description "Gets RabbitMQ's Exchages"

New-Alias -Name grq -value Get-RabbitMQQueue -Description "Gets RabbitMQ's Queues"
New-Alias -Name getqueue -value Get-RabbitMQQueue -Description "Gets RabbitMQ's Queues"
New-Alias -Name arq -value Add-RabbitMQQueue -Description "Adds RabbitMQ's Queues"
New-Alias -Name addqueue -value Add-RabbitMQQueue -Description "Adds RabbitMQ's Queues"
New-Alias -Name rrq -value Remove-RabbitMQQueue -Description "Removes RabbitMQ's Queues"
New-Alias -Name delqueue -value Remove-RabbitMQQueue -Description "Removes RabbitMQ's Queues"

Export-ModuleMember -Alias * 

# Modules
Export-ModuleMember -Function Get-RabbitMQVirtualHost, Add-RabbitMQVirtualHost, Remove-RabbitMQVirtualHost
Export-ModuleMember -Function Get-RabbitMQOverview
Export-ModuleMember -Function Get-RabbitMQExchange, Add-RabbitMQExchange, Remove-RabbitMQExchange

Export-ModuleMember -Function Get-RabbitMQConnection, RemoveConnection.ps1
Export-ModuleMember -Function Get-RabbitMQNode
Export-ModuleMember -Function Get-RabbitMQChannel

Export-ModuleMember -Function Get-RabbitMQQueue, Add-RabbitMQQueue, Remove-RabbitMQQueue
