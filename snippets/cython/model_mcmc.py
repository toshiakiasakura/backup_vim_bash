%%cython -a
 
cimport cython
# custom function
cimport myStats as ms
cimport myMCMC 
 
cdef class model(myMCMC.MCMC):
    """ Log-Likelihood function is defined.
    """
    cdef public double x
    cdef public double y
    
    def __init__(self,path,parName,sdRandomWalk):
        super().__init__(path,parName,sdRandomWalk)
        
    cpdef int setParameters(self):
        self.x = self.par[0]
        self.y = self.par[1]
        
    cpdef int setInitial(self): 
        self.par[0] = self.x        
        self.par[1] = self.y        
        
    ########## Data setting part ##################
    cdef public double a
    cdef public double b
    def setInitParams(self):
        self.a = 1
        self.b = 100
        self.x = 2
        self.y = 2 
        
    ############# calculate log likelihood ###############
    @cython.cdivision(True)
    cpdef double logLikelihood(self):
        cdef double v 
        cdef double lv
        v = ms.pow(self.a - self.x,2) + self.b*ms.pow(self.y  - self.x*self.x,2) + 1e-5
        lv = ms.log(v)
        return(- lv)
