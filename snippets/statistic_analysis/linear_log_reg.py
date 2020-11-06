import statsmodels.api as sm

X_ = sm.add_constant( np.log10(X) ) 
model = sm.OLS(np.log10(y), X_)
res = model.fit()
print(res.summary()) 
v = np.power(10, res.fittedvalues)

ax.plot(X, v)
