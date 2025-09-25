PostMark
========

[NAME](#NAME)\
[SYNOPSIS](#SYNOPSIS)\
[DESCRIPTION](#DESCRIPTION)\
[COMMANDS](#COMMANDS)\
[NOTES](#NOTES)\
[AUTHOR](#AUTHOR)

* * * * *


NAME
----

**postmark** - a file system benchmark based around small file operations

SYNOPSIS
--------

**postmark** [config-file]

DESCRIPTION
-----------

**postmark** is a benchmark that's based around small file operations similar to those used on large mail servers and news servers.

When **postmark** is run it gives a command-line interface to configure and run tests. The "help" command displays basic information on how to operate it.

The name of a text file containing commands may be specified on the command line.

COMMANDS
--------

The following **postmark** commands are available, either interactively or by the specified config file:

**set size**

&nbsp;&nbsp;&nbsp;&nbsp;Sets low and high bounds of files

**set number**

&nbsp;&nbsp;&nbsp;&nbsp;Sets number of simultaneous files

**set seed**

&nbsp;&nbsp;&nbsp;&nbsp;Sets seed for random number generator

**set transactions**

&nbsp;&nbsp;&nbsp;&nbsp;Sets number of transactions

**set location**

&nbsp;&nbsp;&nbsp;&nbsp;Sets location of working files

**set subdirectories**

&nbsp;&nbsp;&nbsp;&nbsp;Sets number of subdirectories

**set read**

&nbsp;&nbsp;&nbsp;&nbsp;Sets read block size

**set write**

&nbsp;&nbsp;&nbsp;&nbsp;Sets write block size

**set buffering**

&nbsp;&nbsp;&nbsp;&nbsp;Sets usage of buffered I/O

**set bias read**

&nbsp;&nbsp;&nbsp;&nbsp;Sets the chance of choosing read over append

**set bias create**

&nbsp;&nbsp;&nbsp;&nbsp;Sets the chance of choosing create over delete

**set report**

&nbsp;&nbsp;&nbsp;&nbsp;Choose verbose or terse report format

**run**

&nbsp;&nbsp;&nbsp;&nbsp;Runs one iteration of benchmark

**load**

&nbsp;&nbsp;&nbsp;&nbsp;Read configuration file

**show**

&nbsp;&nbsp;&nbsp;&nbsp;Displays current configuration

**help**

&nbsp;&nbsp;&nbsp;&nbsp;Prints out available commands

**quit**

&nbsp;&nbsp;&nbsp;&nbsp;Exit program


NOTES
-----

From the original [site](https://web.archive.org/web/20031210100218/http://www.netapp.com/tech_library/postmark.html):

> The file [postmark-1_5.c](postmark-1_5.c) contains the source code for the PostMark benchmark, as described in NetApp Technical Report TR-3022, __PostMark: A New File System Benchmark__.
> 
> This code has been successfully compiled and run by Network Appliance on various platforms, including Solaris 2 on an Ultra-170, and Windows NT on a Compaq ProLiant. However, the PostMark source code is distributed under the [Artistic License](LICENSE) also included in the source code distribution. As such, no support is provided. However, please report any errors to the author, [Jeffrey Katcher](mailto:katcher@netapp.com), or to [Andy Watson](mailto:watson@netapp.com).


AUTHORS
-------

Written by Jeffrey Katcher &lt;katcher@netapp.com&gt; under contract to Network Appliance.

The manual page was written by Russell Coker &lt;russell@coker.com.au&gt;,
for the Debian GNU/Linux system.

* * * * *