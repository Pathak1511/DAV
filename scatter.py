import seaborn as sns
import matplotlib.pyplot as plt
import mpl_toolkits.mplot3d as Axes3D

x=[1,2,3,4,5,6,7,8,9,10]
y=[3,5,9,6,3,5,0,3,7,5]
z=[6,8,9,5,4,3,5,2,7,4]

sns.set(rc={'figure.figsize':(8,8)})
fig = plt.figure()
ax = fig.add_subplot(projection='3d')
ax.scatter(x,y,z,c='r',marker='o')
ax.set_xlabel('X Label'), ax.set_ylabel('Y Label'), ax.set_zlabel('Z Label')
plt.show()
