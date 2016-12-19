#This is an introductory challenge.
#The purpose of this challenge is to give you a working I/O template in your preferred language.
#It includes scanning  integers from STDIN, calling a function, returning a value, and printing it to STDOUT.

main = interact $ show . sum . map read . lines
