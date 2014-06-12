Mpi.comm_size
=============

This document describes how the ```comm_size``` function of the ```Mpi``` module works.

What does it do?
----------------

This function determines the size (ie, the number of processes) of a given communicator.


How to call it?
---------------

Arguments:
  - the communicator

Returned value:
  - the size of this communicator

Example
-------

```
let size = Mpi.comm_size Mpi.comm_world in
```

Full example
------------

An example of how to use this function can be found in the ```examples``` directory, in the ```sendrecv.ml``` file.

Corresponding MPI function
--------------------------

This function corresponds to the MPI function [MPI_Comm_size].

[MPI_Comm_size]:http://www.mpi-forum.org/docs/mpi-1.1/mpi-11-html/node101.html

