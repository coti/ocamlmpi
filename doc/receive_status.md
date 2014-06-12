Mpi.receive_status
==================

This document describes how the ```receive_status``` function of the ```Mpi``` module works.

What does it do?
----------------

This function receives data from a remote process on a given communicator with a tag. 

The originating process can be any process or a given process. In the latter case, the wildcard ```Mpi.any_source``` must be used as the source of the communication.

The tag can be a given tag or any tag. In the latter case, the wildcard ```Mpi.any_tag``` must be used as the tag of the communication.


How to call it?
---------------

Arguments:
  - the rank of the source process
  - the tag
  - the communicator that must be used for this communication

Returned value:
  - a triplet that contains:
    - the data that was received
    - the rank of the source process
    - the tag of the communication

Example
-------

```
let ( token, src, tag ) = 
   Mpi.receive_status Mpi.any_source Mpi.any_tag Mpi.comm_world in
```

Full example
------------

An example of how to use this function can be found in the ```examples``` directory, in the ```receive_source.ml``` file.

Corresponding MPI function
--------------------------

This function corresponds to the MPI function [MPI_Recv] used with the MPI_ANY_SOURCE and/or MPI_ANY_TAG wildcards.

[MPI_Recv]:http://www.mpi-forum.org/docs/mpi-1.1/mpi-11-html/node34.html

