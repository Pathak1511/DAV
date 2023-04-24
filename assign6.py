
import matplotlib.pyplot as plt
import numpy as np

# data for histogram
x = np.random.randn(500)
# data for bar chart
y = {'Apple':20,'Banana':30,'orange':22,'mango':27}
# data for pie chart
percentage = [40,20,10,20,10] # put value such that it will be equal to 100
label = ['A','B','C','D','E']

# histogram
fig, ax = plt.subplots(figsize =(5, 4))
ax.hist(x,bins =10)
plt.title('Histogram')
# Show plot
plt.show()

# bar chart
fruitName = y.keys()
fruitValues = y.values()
fig = plt.figure(figsize = (5, 4))
plt.bar(fruitName, fruitValues, color ='orange',width = 0.6)
 
plt.xlabel("Fruits")
plt.ylabel("No. of fruits")
plt.title("fruits vs quantity")
plt.show()

# Creating plot
fig = plt.figure(figsize =(5, 4))
plt.pie(percentage, labels = label,colors=['red','orange','blue','yellow','purple'])
plt.title('Percentage and label')
# show plot
plt.show()

