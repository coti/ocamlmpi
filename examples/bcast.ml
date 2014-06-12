(* ocamlc -I +ocamlmpi -o bcast mpi.cma unix.cma bcast.ml            *)
(* mpiexec -n 4 ./bcast                                              *)

open Mpi
open Unix

let main () =

  let rank = Mpi.comm_rank Mpi.comm_world in  
  let token = ref 0 in
  
  if rank = 0 then
    token := Unix.getpid()
  ;

    token := Mpi.broadcast !token 0 Mpi.comm_world;
  
  print_string "[" ; print_int rank ; print_string "] token is " ; 
  print_int !token ; print_newline();
  
    Mpi.barrier Mpi.comm_world
;;
  
if !Sys.interactive then () else main ();;
