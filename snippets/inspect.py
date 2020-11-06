import inspect 
import subprocess 
path = inspect.getfile(np.sum)
subprocess.check_call(["open",path])
