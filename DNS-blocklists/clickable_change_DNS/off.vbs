' https://github.com/geimur/geimur/tree/master/DNS-blocklists/clickable_change_DNS

set shell=CreateObject("Shell.Application")
' shell.ShellExecute "application", "arguments", "path", "verb", window
shell.ShellExecute "off.bat",,"PATH", "runas", 0
set shell=nothing 
