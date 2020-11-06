import statsmodels.api as sm

X_ = sm.add_constant(X)
model = sm.OLS(y, X_)
res = model.fit()
print(res.summary())

ax.plot(X_, res.fittedvalues)



