import matplotlib.pyplot as plt
from scipy.stats import norm
import numpy as np

q = np.linspace(0,10,1000)
plt.subplots(constrained_layout=True)
plt.plot(q, norm(3,1).pdf(q))
plt.fill_between(q[500:], norm(3,1).pdf(q[500:]), alpha=0.3, hatch='/')
plt.annotate('p-value', xy=(5.5, norm(3,1).pdf(5.5)), xytext=(6, 0.1), arrowprops=dict(facecolor='tab:blue', edgecolor='tab:blue', width=0.7), fontsize=20)
plt.annotate(r'$f(q_\mu\vert\mu,\hat{b}_\mu)$', xy=(3, norm(3,1).pdf(3)), xytext=(4, 0.35), fontsize=20)
plt.xlim(0,10)
plt.ylim(0,)
plt.xlabel(r'$q_\mu$')
plt.savefig('build/distribution.pdf')
plt.close()
