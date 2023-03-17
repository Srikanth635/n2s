import numpy as np

time_start = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
time_end = np.array([2, 3, 4, 5, 6, 7, 8, 9, 10, 11])
stamp = np.array([3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
for s in stamp:
    cond1 = np.greater_equal(s, time_start)
    cond2 = np.less(s, time_end)
    print(cond2)
    res = np.argwhere(np.logical_and(cond1, cond2))
    print("s: ", s)
    print(res)
