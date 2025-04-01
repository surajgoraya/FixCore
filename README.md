# FixCore

Kills the CoreAudio service on macOS to get it to try
and reboot itself. 

It usually fixes issues I have with macOS seemingly 
forever *trying* to connect to my AirPods.

**⚠️ Use at your own risk.**

## How to run

`make` or `make run`

Alternatively: `sh ./FixCore.sh`

## Create an alias for quick access

To quickly do this via your terminal you can opt to add an alias in your `~/.zshrc` or `~/.bashrc`.
```bash
    alias fixcore="cd ~/FixCore && make"
    # (assuming your fixcore clone is in your home directory, change cd path as needed.)
```
That way you're able to call `fixcore` anywhere in the terminal
