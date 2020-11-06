import matplotlib.dates as mdates

class DatePlot(BasicPlot):        
    def __init__(self,rotation=90,x_fontsize=10,**kargs):
        super().__init__(**kargs)
        self.rotation = rotation
        self.x_fontsize = x_fontsize

    def option(self):
        self.ax.xaxis.set_major_locator(mdates.DayLocator(bymonthday=None, interval=1, tz=None))
        self.ax.xaxis.set_major_formatter(mdates.DateFormatter("%Y-%m-%d"))
        plt.xticks(rotation=self.rotation,fontsize=self.x_fontsize)

