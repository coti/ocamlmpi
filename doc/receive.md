Mpi.receive
========

This document describes how the ```receive``` function of the ```Mpi``` module works.

What does it do?
----------------

This function received data from a given remote process on a given communicator with a given tag. 

How to call it?
---------------

Arguments:
  - the rank of the source process
  - the tag
  - the communicator that must be used for this communication

Returned value:
  - the data that was received

Example
-------

```
let my_tag = 1664 in
let src = 0 in
token = receive src my_tag Mpi.comm_world ;
```

Full example
------------

An example of how to use this function can be found in the ```examples``` directory, in the ```sendrecv.ml``` file.

Corresponding MPI function
--------------------------

This function corresponds to the MPI function [MPI_Recv]

[MPI_Recv]:http://www.mpi-forum.org/docs/mpi-1.1/mpi-11-html/node34.html
