# 1-liner for reviewing Outgoing NTLM Traffic events generated when auditing is enabled via GPO "Computer Configuration> Policies> Windows Settings> Security Settings> Local Policies> Security Options> Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers -> Define this policy setting: Audit all"
Get-WinEvent -FilterHashTable @{LogName="Microsoft-Windows-NTLM/Operational"; ID = 8001} | Select MachineName, @{L="TargetServer"; E={$_.Properties[0].Value}}, @{L="SuppliedUser"; E={$_.Properties[1].Value}}, @{L="SuppliedDomain"; E={$_.Properties[2].Value}}, @{L="PID"; E={$_.Properties[3].Value}}, @{L="ClientProcessName"; E={$_.Properties[4].Value}}, @{L="ClientProcessUserID"; E={$_.Properties[6].Value}}, @{L="ClientProcessUserDomain"; E={$_.Properties[7].Value}}, @{L="MechanismOID"; E={$_.Properties[8].Value}} | Format-Table -AutoSize -Wrap
