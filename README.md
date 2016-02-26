### sysdig-sandbox
Sandbox to explore [sysdig](http://www.sysdig.org). Setup via Vagrant:

 - ubuntu with docker
 - nginx
 - node.js and test script
 - sysdig

#### Get Started
Print all syscalls

  sudo sysdig

GUI for analyzing current syscall

  sudo csysdig

Start filtering, do more, see http://www.sysdig.org/wiki/chisels-user-guide

#### Examples
Tail all log files (matching *.log, _log, etc.) any process is writing to

  sudo sysdig -c spy_logs
 
Log last 10 minutes of activity before application "app" crashes/exits

  sudo sysdig -G 60 -W 10 -wdump.scap proc.name=app

List all chisels

  sudo sysdig -cl

Print usage info for chisel with "name"

  sudo sysdig -i name

#### Misc
Find chisels in 

  /usr/share/sysdig/chisels
