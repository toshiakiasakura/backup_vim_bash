import matplotlib.patches as mpatches

cmap = plt.get_cmap("tab10")
patches = []
for i, name in enumerate(label_names):
    patch = mpatches.Patch(color=cmap(i), label=name)
    patches.append(patch)
plt.legend(title=label_title,handles=patches)
