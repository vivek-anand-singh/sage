from .commutative_polynomial cimport CommutativePolynomial


cdef class MPolynomial(CommutativePolynomial):
    cdef long _hash_c(self) except -1
    cpdef _mod_(self, right) noexcept
    cpdef dict _mpoly_dict_recursive(self, tuple vars=*, base_ring=*) noexcept


cdef class MPolynomial_libsingular(MPolynomial):
    pass
