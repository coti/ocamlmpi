# libtoolize --force
# aclocal
# autoheader
# automake --force-missing --add-missing
# autoconf

## libtoolize --force && aclocal && autoheader && automake --force-missing --add-missing && autoconf

AC_CONFIG_MACRO_DIR([m4])
#LT_INIT
#LT_LANG([C,OCaml])
AM_PROG_AR
LT_INIT

AC_PREREQ([2.69])
AC_INIT([OCamlMPI], [1.1.0], [coti@lipn.fr])
AM_INIT_AUTOMAKE([-Wall])

AC_CONFIG_HEADERS([config.h])

AC_PROG_CC([mpicc])

# OCaml stuff

AC_PROG_OCAML
if test "$OCAMLC" = "no"; then
  AC_MSG_ERROR([You must install the OCaml compiler])
fi

AC_PROG_FINDLIB
if test "$OCAMLFIND" = "no"; then
  AC_MSG_ERROR([You must install OCaml findlib (the ocamlfind command)])
fi

# MPI stuff

AC_CHECK_HEADERS([mpi.h], [AC_CHECK_LIB([mpi], [MPI_Init], [mpi=1])])
if test "$mpi" != 1
then
 AC_MSG_ERROR([OCamlMPI requires MPI libraries])
fi

AC_CONFIG_FILES([src/Makefile])
AC_OUTPUT
