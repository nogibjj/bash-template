# bash-template
A Template for coding in Bash

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