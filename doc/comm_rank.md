Mpi.comm_rank
=============

This document describes how the ```comm_rank``` function of the ```Mpi``` module works.

What does it do?
----------------

This function determines the rank of the current process on a given communicator.


How to call it?
---------------

Arguments:
  - the communicator

Returned value:
  - the rank of the current process on this communicator

Example
-------

```
let rank = Mpi.comm_rank Mpi.comm_world in
```

Full example
------------

An example of how to use this function can be found in the ```examples``` directory, in the ```sendrecv.ml``` file.

Corresponding MPI function
--------------------------

This function corresponds to the MPI function [MPI_Comm_rank].

[MPI_Comm_rank]:http://www.mpi-forum.org/docs/mpi-1.1/mpi-11-html/node101.html

