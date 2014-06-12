(* ocamlc -I +ocamlmpi -o sendrecv mpi.cma sendrecv.ml               *)
(* mpiexec -n 2 ./sendrecv                                           *)

open Mpi

let main () =

  (* Determine what my rank is *)

  let rank = Mpi.comm_rank Mpi.comm_world in
  
  let token = ref ( 42 + rank ) in
  let my_tag = 1664 in
  
  print_string( "I am rank " ^ ( string_of_int rank ) ^ " and my token is " ^ (string_of_int !token ) );
  print_newline();

  if rank = 0 then
    Mpi.send !token 1 my_tag Mpi.comm_world
  else
    if rank = 1 then
      begin
	token := receive 0 my_tag Mpi.comm_world ;
	print_string( "I am rank " ^ ( string_of_int rank ) ^ " and I received token " ^ (string_of_int !token ) );
	print_newline()
      end
  ;
      
    

  Mpi.barrier comm_world
;;
  
if !Sys.interactive then () else main ();;
