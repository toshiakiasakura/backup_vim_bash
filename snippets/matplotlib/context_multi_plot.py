class MultiPlot():
    def __init__(self, figsize=(8,6), dpi=150,grid=(2,2) ,suptitle="",
            save_path=None,show=True, tight=True):
        self.fig = plt.figure(figsize=figsize,dpi=dpi)
        self.grid = grid
        self.save_path = save_path
        self.show = show
        self.tight = tight

        plt.suptitle(suptitle)

    def set_ax(self,index,xlim=None, ylim=None, xlabel="", ylabel="",title=""):
        ax = self.fig.add_subplot(*self.grid,index)
        ax.set_xlabel(xlabel)
        ax.set_ylabel(ylabel)
        ax.set_xlim(xlim) if xlim else None
        ax.set_ylim(ylim) if ylim else None
        ax.set_title(title)
        return(ax)

    def __enter__(self):
        return(self)

    def __exit__(self,exc_type, exc_value, exc_traceback):
        self.option()
        plt.tight_layout() if self.tight else None
        plt.savefig(self.save_path) if self.save_path else None
        plt.show() if self.show else None

    def option(self):
        """This method is for additional graphic setting. 
        See DatePlot for example."""
        pass
