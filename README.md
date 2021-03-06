### sysdig-sandbox
Sandbox to explore [sysdig](http://www.sysdig.org). Setup via Vagrant:

 - ubuntu with docker
 - nginx
 - node.js and test script
 - sysdig

#### Get Started
Print all syscalls
```bash
sudo sysdig
```

GUI for analyzing current syscall
```bash
sudo csysdig
```

Start filtering, do more, see http://www.sysdig.org/wiki/chisels-user-guide

#### Examples
Tail all log files (matching *.log, _log, etc.) any process is writing to, filter
```bash
sudo sysdig -c spy_logs
sudo sysdig -c spy_logs evt.buffer contains error
```

Log last 10 minutes of activity before application "app" crashes/exits to file dump.scap
```bash
sudo sysdig -G 60 -W 10 -w dump.scap proc.name=app
```

List all chisels
```bash
sudo sysdig -cl
```

Print usage info for chisel with "name"
```bash
sudo sysdig -i name
```

#### Misc
Find chisels in 
```bash
/usr/share/sysdig/chisels
```
