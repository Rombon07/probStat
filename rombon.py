import numpy as np
from scipy.stats import multinomial

n_trials_rombon = 10
probabilities_rombon = [0.2, 0.3, 0.5]


multinom_dist_rombon = multinomial(n_trials_rombon, probabilities_rombon)

sample_rombon = multinom_dist_rombon.rvs()
print("Sampel hasil percobaan:")
print(sample_rombon)


pmf_sample_rombon = multinom_dist_rombon.pmf(sample_rombon)
print("\nProbabilitas massa dari sampel yang dihasilkan:", pmf_sample_rombon)


from scipy.stats import multinomial


n_trials = 20
probabilities = [8 / 20, 6 / 20, 6 / 20]


multinom_dist = multinomial(n_trials, probabilities)

outcome = [8, 6, 6]
pmf_outcome = multinom_dist.pmf(outcome)
print("Probabilitas massa:", pmf_outcome)


import numpy as np
from scipy.stats import hypergeom

N = 50
K = 20
n = 10
k = 5


hypergeom_dist = hypergeom(N, K, n)

pmf_value = hypergeom_dist.pmf(k)
print("Probabilitas massa:", pmf_value)


from scipy.stats import hypergeom

N = 30
K = 10
n = 8
k1 = 3
k2 = 2
k3 = 3


hypergeom_dist = hypergeom(N, K, n)


pmf_value = hypergeom_dist.pmf([k1, k2, k3])
print("Probabilitas massa:", pmf_value)


import numpy as np
from scipy.stats import poisson

mu = 2


poisson_dist = poisson(mu)


sample = poisson_dist.rvs(size=10)
print("Sampel hasil distribusi Poisson:")
print(sample)


pmf_sample = poisson_dist.pmf(sample)
print("\nProbabilitas massa dari sampel yang dihasilkan:", pmf_sample)


from scipy.stats import poisson


mu = 4


prob_tepat_6 = poisson.pmf(6, mu)
print("Peluang bahwa akan tiba tepat 6 paket dalam jam berikutnya:", prob_tepat_6)
