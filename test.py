import numpy as np
import pickle

with open('data_stats.pickle', 'rb') as f:
    model = pickle.load(f)
print(model)
