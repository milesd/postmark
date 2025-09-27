postmark 1 "May 2005" postmark "User Manual"
============================================

NAME
----

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

The following **postmark** commands are available interactively.

**load** _FILE_
:   Read configuration file from _FILE_.

**run**
:   Runs one iteration of benchmark

**show**
:   Displays current configuration

**help**
:   Prints out available commands

**quit**
:   Exit program

CONFIGURATION
-------------

The following **postmark** configuration settings are available, either interactively or by the specified config file:

**set** **size** _MIN_ _MAX_
:   Sets low and high bounds of files in bytes.

    Defaults to `500 10000`.

**set number** _NUM_
:   Sets number of simultaneous files.

    Defaults to `500`.

**set seed** _NUM_
:   Sets seed for random number generator.

    Defaults to `42`.


**set transactions** _NUM_
:   Sets number of transactions.

    Defaults to `500`.

**set location** _DIR_
:   Sets location of working files.

    Defaults to the present working directory.

**set subdirectories** _NUM_
:   Sets number of subdirectories.

    The default is to use a single working directory.

**set read** _BYTES_
:   Sets read block size in bytes.

    The default is `512`.

**set write** _BYTES_
:   Sets write block size in bytes.

    The default is `512`.

**set buffering** [true|false]
:   Sets usage of buffered I/O.

    The default is `true`.

**set bias read** _NUM_
:   Sets the chance of choosing read over append.

    The default is `5`.

**set bias create** _NUM_
:   Sets the chance of choosing create over delete.

    The default is `5`.

**set report** [verbose|terse]
:   Choose verbose or terse report format.

    The default is `verbose`.


AUTHORS
-------

Written by Jeffrey Katcher (katcher@netapp.com) under contract to Network Appliance.

The manual page was written by Russell Coker (russell@coker.com.au),
for the Debian GNU/Linux system.
