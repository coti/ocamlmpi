ALL: tokenring sendrecv recv_source bcast

recv_source: recv_source.ml
	ocamlc -I +ocamlmpi -o recv_source mpi.cma recv_source.ml

sendrecv: sendrecv.ml
	ocamlc -I +ocamlmpi -o sendrecv mpi.cma sendrecv.ml

tokenring: tokenring.ml
	ocamlc -I +ocamlmpi -o tokenring mpi.cma tokenring.ml

bcast: bcast.ml
	ocamlc -I +ocamlmpi -o bcast mpi.cma unix.cma bcast.ml

clean:
	rm *cmo *cmi tokenring sendrecv recv_source bcast

run: tokenring sendrecv recv_source bcast
	echo " ===== RUNNING sendrecv ====="
	mpiexec -n 2 ./sendrecv
	echo " ===== RUNNING recv_source ====="
	mpiexec -n 4 ./recv_source
	echo " ===== RUNNING tokenring ====="
	mpiexec -n 4 ./tokenring
	echo " ===== RUNNING bcast ====="
	mpiexec -n 8 ./bcast
