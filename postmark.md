postmark 1 "May 2005" postmark "User Manual"
============================================

# NAME

**postmark** - a file system benchmark based around small file operations

SYNOPSIS
--------

__postmark__ [config-file]

DESCRIPTION
-----------

**postmark** is a benchmark that's based around small file operations similar to those used on large mail servers and news servers.

When **postmark** is run it gives a command-line interface to configure and run tests. The "help" command displays basic information on how to operate it.

The name of a text file containing commands may be specified on the command line.

COMMANDS
--------

The following **postmark** commands are available, either interactively or by the specified config file:

**set** **size**
:   Sets low and high bounds of files

**set number**
:   Sets number of simultaneous files

**set seed**
:   Sets seed for random number generator

**set transactions**
:   Sets number of transactions

**set location**
:   Sets location of working files

**set subdirectories**
:   Sets number of subdirectories

**set read**
:   Sets read block size

**set write**
:   Sets write block size

**set buffering**
:   Sets usage of buffered I/O

**set bias read**
:   Sets the chance of choosing read over append

**set bias create**
:   Sets the chance of choosing create over delete

**set report**
:   Choose verbose or terse report format

**run**
:   Runs one iteration of benchmark

**load**
:   Read configuration file

**show**
:   Displays current configuration

**help**
:   Prints out available commands

**quit**
:   Exit program


AUTHORS
-------

Written by Jeffrey Katcher (katcher@netapp.com) under contract to Network Appliance.

The manual page was written by Russell Coker (russell@coker.com.au),
for the Debian GNU/Linux system.
