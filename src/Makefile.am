# all: libcamlmpi.a mpi.cma mpi.cmxa mpi.mli mpi.cmi mpi.a

# CLEANFILES = *.cmi *.cmo *.cmx *.cma *.cmxa *.o *.a *.so

lib_LTLIBRARIES: libcamlmpi.la #  mpi.cma mpi.cmxa mpi.mli mpi.cmi mpi.a

libcamlmpi_la_SOURCES = \
			comm.c    init.c    msgs.c \
			collcomm.c  groups.c     utils.c

libcamlmpi_la_LDFLAGS = -version-info 1:1:0

mpi_cma_SOURCES = mpi.ml