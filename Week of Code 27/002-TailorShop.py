# Week of Code 27, Problem 2
# https://www.hackerrank.com/contests/w27/challenges/tailor-shop

# Jaime the Tailor's new customer wants to add  distinct clusters to her dress,
# where each cluster is filled with a distinct number of buttons of a certain color.
# In other words, no two clusters should have the same color buttons.

# The customer also has specific ideas about how much she wants to pay for each cluster in that for some cluster i,
# she wants to pay at least ai dollars.
# In addition, she wants each cluster to contain a distinct number of buttons.
# And, finally, she wants to minimize her total cost.

# Jaime stocks an infinite number of buttons in an infinite number colors at his shop, and each button costs p dollars.
# Given n, p, and the amount of money that the customer wants to pay for each respective cluster,
# help Jaime by finding and printing a long integer denoting the minimum number of buttons he can use to satisfy her request.

# Input:
# The first line contains two space-separated integers denoting the respective values of n and p. 
# The second line contains n space-separated integers where each integer i denotes the value of ai 
# Output:
# Print a single integer denoting the minimum number of buttons required for Jaime to satisfy his customer's request.


#!/bin/python3
#!/bin/python3

import sys


n,p = input().strip().split(' ')
n,p = [int(n),int(p)]
a = [int(a_temp) for a_temp in input().strip().split(' ')]


clusters = []
total_buttons = 0
for i in a:
    num = i//p if (i%p==0) else i//p +1
    while num in clusters:
        num += 1
    clusters.append(num)
    total_buttons += num
    
print(total_buttons)
