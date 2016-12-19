# Week of Code 27, Problem 1
# https://www.hackerrank.com/contests/w27/challenges/drawing-book

# Drawing Book:
# Given n and p, find and print the minimum number of pages Brie must turn in order to arrive at page .
# n denoting the number of pages in the book. 
# p denoting the page that Brie's teacher wants her to turn to.

print(min(p//2, (n-p)//2))
