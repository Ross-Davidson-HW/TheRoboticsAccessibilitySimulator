# import necessary libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Load the data
data = pd.read_csv('data.csv')

# This code will show the original data plot before it is log transformed. Comment out the rest of the code if you use this.
# plt.scatter(data['Time s'], data[' Charge C'], label='Original Data', color='blue')
# plt.xlabel("Time (seconds)")
# plt.ylabel("Charge (C)")
# plt.legend()
# plt.grid(True)  
# plt.show()

# Apply logarithmic transformation
data_log = np.log(data)

# Plot the log-transformed data
plt.scatter(data_log['Time s'], data_log[' Charge C'], label='Log Transformed Data', color='orange')

# Calculate and plot the best fit line
coefficients = np.polyfit(data_log['Time s'], data_log[' Charge C'], 1)
slope, intercept = coefficients
best_fit_line = slope * data_log['Time s'] + intercept
plt.plot(data_log['Time s'], best_fit_line, color='red', label='Best Fit Line')

# Customize the plot
plt.xlabel("Time (seconds)")
plt.ylabel("Charge (C)")
plt.legend()
plt.grid(True)  

# Show the plot
plt.show()

