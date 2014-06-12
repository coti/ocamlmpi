(* ocamlc -I +ocamlmpi -o tokenring mpi.cma tokenring.ml               *)
(* mpiexec -n 4 ./tokenring                                            *)

open Mpi

let main () =

  let size = Mpi.comm_size Mpi.comm_world in
  let rank = Mpi.comm_rank Mpi.comm_world in
  
  let token = ref 0 in
  let cnt = ref 0 in
  
  let my_tag = 1664 in
  
  if rank = 0 then
    Mpi.send !token 1 my_tag Mpi.comm_world
  ;
    
    let left = (( rank + size - 1 ) mod size ) in
    let right = (( rank + 1 ) mod size ) in
    
    while !cnt < 20 do
      
      token := receive left my_tag Mpi.comm_world;
      
      print_string "[" ; print_int rank ; print_string "] received token " ; 
      print_int !token ; print_newline();
      token := !token + 1;
      
      if not ( ( rank = 0 ) && ( !cnt = 20 ) ) then
	begin
	  Mpi.send !token right my_tag Mpi.comm_world;
	  cnt := !cnt + 1;
	  print_string "[" ; print_int rank ; print_string "] cnt is " ; 
	  print_int !cnt ; print_newline();
	end
      ;
	
    done;
    
    Mpi.barrier comm_world
;;
  
if !Sys.interactive then () else main ();;
