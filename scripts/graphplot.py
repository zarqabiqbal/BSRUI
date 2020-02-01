import matplotlib.pyplot as plt 
import csv

x1=[97.2]
x2=[64.7]
x3=[39.9]
x4=[3.9]

y1=['Adarsh']
y2=['Zk']
y3=['Kartik']
y4=['Rishika']

plt.ylabel("Brain")
plt.xlabel("Name")

plt.ylim([0,100])


plt.title("Brain Graph with color")
 
plt.bar(y1,x1,color='blue')
plt.bar(y2,x2,color='red')
plt.bar(y3,x3,color='green')
plt.bar(y4,x4,color='yellow')

plt.savefig('graph.png')

plt.show()

