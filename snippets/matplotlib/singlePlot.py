fig = plt.figure(figsize=(5,3),dpi=150)
ax = fig.add_subplot(111)
ax.plot(x,y)
ax.set_xlabel("x")
ax.set_ylabel("y")
plt.tight_layout()
plt.show()
