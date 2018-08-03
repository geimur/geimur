set shell=CreateObject("Shell.Application")
' shell.ShellExecute "application", "arguments", "path", "verb", window
shell.ShellExecute "on.bat",,"PATH", "runas", 0
set shell=nothing 
