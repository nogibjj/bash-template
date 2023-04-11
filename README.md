# bash-template
A Template for coding in Bash

Bash scripting is a powerful tool for automating tasks on Unix-like systems. Here are some common actions you can demonstrate using Bash scripts:

File and directory manipulation:

Create, move, copy, delete files and directories
Rename files and directories
Change file permissions and ownership
Text processing:

Read and write to files
Search for patterns in files using grep
Perform text manipulation with tools like awk and sed
System administration tasks:

Monitor system resources (CPU, memory, disk usage)
Manage processes and services
Backup and restore files
User management:

Add, delete, and modify user accounts
Set and enforce password policies
Networking tasks:

Check network connectivity
Download files from the internet using curl or wget
Monitor network traffic and bandwidth
Automation and scheduling:

Execute tasks at specified times with cron jobs
Run a series of commands in sequence or in parallel
Custom command-line tools:

Create custom commands by combining existing tools
Implement command-line arguments and options for your script
Logging and reporting:

Record script execution details to a log file
Generate reports based on logged data
Error handling and debugging:

Handle errors and exceptions gracefully
Use debugging techniques like setting breakpoints and tracing variables
Environment management:

Set and modify environment variables
Create and manage aliases and function


## Lesson 6:  Manipulate the File System

`filesystem-proj`

`./create-tree-all.sh --help`


## Lesson 5:  Makefiles

tldr; you can use the `Makefile` to build and run, i.e: `make invoke`

`docker run -it marco:latest /bin/bash ./marco.sh "Marco"`

cd `makeLesson`
`touch Makefile`

To run it you do the following:  `./marco.sh "Marco"`

or we tweak our `Makefile` and tell it to run:

`make run`

Let's use this `Makefile` to build Docker



## Lesson 4:  Fix Volume Mount


## Lesson 3:  Configure Dockerfiles for Bash Scripts

Invoke Docker via volume mount:

WARNING BROKEN!!!
`docker run -it --rm -v $(pwd):/tmp adaf5a928ce4 /bin/bash /tmp/helloWorld.sh`


## Lesson 2

* Shell initialization files

`~/.bashrc` :  A place to automation

1. to edit ~/.bashrc `vim ~/.bashrc`

* Variables

Putting spaces around the equal sign will cause errors.

```
APPLE="apple"
echo $APPLE
```

To delete a variable you use `unset` i.e `unset APPLE`

### How to test a local variable

This is only local:

```
PEAR="pear"
echo $PEAR
```

to fix use `export` (but only to child shell)

```
export LEMON="lemon"
echo $LEMON
```


* Quoting characters

```
TODAY=`date`
echo $TODAY
echo '$TODAY' #won't display variable output
echo "$TODAY" #will display

```

* Shell expansion

HOME is equal to ~
```
cd ~
echo $HOME
```


* Aliases

To edit bashrc shortcut
`alias ec='vim ~/.bashrc'`

To reload bashrc shortcut
`alias rl='source ~/.bashrc'`


* [Bash Environment](https://tldp.org/LDP/Bash-Beginners-Guide/html/)


## Lesson 1

* List of dev containers:  https://github.com/microsoft/vscode-dev-containers/tree/main/containers
* [Debugging Tips](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_02_03.html)

1. Build a hello world `helloWorld.sh`
2. Build a phrase repeater `phrase.sh`


## Lessons ideas

* TBD: Figure out a build system to check and lint bash code