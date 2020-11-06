cdef extern from "time.h":
    ctypedef unsigned long clock_t
    cdef clock_t clock()
    cdef enum:
        CLOCKS_PER_SEC

cdef float ts
cdef float run_time
ts = clock()
run_time = (clock() - ts )/CLOCKS_PER_SEC
