Mpi.send
========

This document describes how the ```send``` function of the ```Mpi``` module works.

What does it do?
----------------

This function sends data to a given remote process on a given communicator with a given tag. 

How to call it?
---------------

Arguments:
  - the data to be sent
  - the rank of the destination process
  - the tag
  - the communicator that must be used for this communication

Example
-------

```
let token = 42 in
let my_tag = 1664 in
let dst = 1 in
Mpi.send token dst my_tag Mpi.comm_world
```

Full example
------------

An example of how to use this function can be found in the ```examples``` directory, in the ```sendrecv.ml``` file.

Corresponding MPI function
--------------------------

This function corresponds to the MPI function [MPI_Send]

[MPI_Send]:http://www.mpi-forum.org/docs/mpi-1.1/mpi-11-html/node31.html
