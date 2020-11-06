class BasicPlot():
    def __init__(self, xlim=None, ylim=None, xlabel="", ylabel="",title="",
            save_path=None, figsize=(5,3), dpi=150, tight=True, show=True):
        self.fig = plt.figure(figsize=figsize,dpi=dpi)
        self.ax = self.fig.add_subplot(111)
        self.ax.set_xlabel(xlabel)
        self.ax.set_ylabel(ylabel)
        self.ax.set_xlim(xlim) if xlim else None
        self.ax.set_ylim(ylim) if ylim else None

        self.save_path = save_path
        self.title = title
        self.tight = tight
        self.show = show

    def __enter__(self):
        return(self)

    def __exit__(self,exc_type, exc_value, exc_traceback):
        self.option()
        plt.title(self.title)
        plt.tight_layout() if self.tight else None
        plt.savefig(self.save_path) if self.save_path else None
        plt.show() if self.show else None

    def option(self):
        """This method is for additional graphic setting.
        See DatePlot for example."""
        pass
