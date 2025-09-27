## PostMark

**postmark** - a file system benchmark based around small file operations

# MANPAGE

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


NOTES
-----

From the original [site](http://www.netapp.com/tech_library/postmark.html):

> The file [postmark-1_5.c](postmark-1_5.c) contains the source code for the PostMark benchmark, as described in NetApp Technical Report TR-3022, __PostMark: A New File System Benchmark__.
> 
> This code has been successfully compiled and run by Network Appliance on various platforms, including Solaris 2 on an Ultra-170, and Windows NT on a Compaq ProLiant. However, the PostMark source code is distributed under the [Artistic License](LICENSE) also included in the source code distribution. As such, no support is provided. However, please report any errors to the author, [Jeffrey Katcher](katcher@netapp.com), or to [Andy Watson](watson@netapp.com).


AUTHORS
-------

Written by Jeffrey Katcher (katcher@netapp.com) under contract to Network Appliance.

The manual page was written by Russell Coker (russell@coker.com.au),
for the Debian GNU/Linux system.
