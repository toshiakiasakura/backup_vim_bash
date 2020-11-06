import statsmodels.api as sm
from statsmodels.stats.weightstats import ttest_ind

tstat , p, deg_free = ttest_ind(x1, x2)
print("p-value : ",np.round(p,5) )
