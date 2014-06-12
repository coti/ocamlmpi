(* ocamlc -I +ocamlmpi -o recv_source mpi.cma recv_source.ml         *)
(* mpiexec -n 4 ./recv_source                                        *)

open Mpi

let main () =

  (* Determine what my rank is and how many processes exist with me  *)

  let rank = Mpi.comm_rank Mpi.comm_world in
  let size = Mpi.comm_size Mpi.comm_world in
  
  let my_tag = 1664 + rank in
  

  if rank = 0 then
    let re = ref 0 in

    while !re != ( size - 1 ) do
      let ( token, src, tag ) = 
        Mpi.receive_status Mpi.any_source Mpi.any_tag Mpi.comm_world in
	print_string( "[0] received token " ^ (string_of_int token ) ^ " from " ^ (string_of_int src ) ^ " with tag " ^ ( string_of_int tag ) );
      print_newline();

      re := !re + 1 
    done
  else
    begin
      let token = 42 + rank in
      Mpi.send token 0 my_tag Mpi.comm_world;
      print_string( "[" ^ ( string_of_int rank ) ^ "] sent token " ^ (string_of_int token ) );
      print_newline()
    end
  ;
  
  Mpi.barrier comm_world
;;
  
if !Sys.interactive then () else main ();;
