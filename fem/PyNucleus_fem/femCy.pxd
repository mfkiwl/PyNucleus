###################################################################################
# Copyright 2021 National Technology & Engineering Solutions of Sandia,           #
# LLC (NTESS). Under the terms of Contract DE-NA0003525 with NTESS, the           #
# U.S. Government retains certain rights in this software.                        #
# If you want to use this code, please refer to the README.rst and LICENSE files. #
###################################################################################


from PyNucleus_base.myTypes cimport REAL_t, INDEX_t, BOOL_t
from numpy cimport uint8_t


ctypedef REAL_t(*volume_t)(REAL_t[:, ::1])


cdef class local_matrix_t:
    cdef:
        INDEX_t dim
        BOOL_t needsCellInfo
        INDEX_t[::1] cell
        BOOL_t additiveAssembly

    cdef void eval(self,
                   const REAL_t[:, ::1] simplex,
                   REAL_t[::1] contrib)

    cdef void setCell(self,
                      INDEX_t[::1] cell)
