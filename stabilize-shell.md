How to stabilize a shell connection after gaining remote access. This way, I can use Ctrl+D, Ctrl+C, tab complete, run su, without issue.

Need to automate this as a script on day...

**on target machine:**
```
python -c "import pty; pty.spawn('/bin/bash')"
Ctrl+Z  # this will foreground the target and switch to the attacker
```

**on attacker machine:**
```
stty raw -echo  # disable text on attacker terminal
fg  # this will bring up the foreground process, which is the target
```

**on target machine:**
```
export TERM=xterm-256-color  # or anyother term you'd like
```

The shell should now be stabilized!
