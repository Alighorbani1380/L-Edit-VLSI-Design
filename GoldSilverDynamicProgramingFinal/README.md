

# **Magical Power - Dynamic Programming**

In a row of **n** bags, some contain a gold coin and some contain a silver coin. You are allowed to take a number of consecutive bags containing gold coins for yourself. Logically, you should be looking for the largest substring (a series of consecutive bags) in this row that contains only gold coins so that you can obtain the maximum number of coins.

Suppose you also have a magic wand that can transform a silver coin in a bag into a gold coin if you strike that bag with the wand (the wand has no effect on bags containing gold coins). However, you can use this wand a maximum of **k** times before it loses its power.

Since you want to maximize the number of gold coins you can collect, you need to strategize how to use the power of this wand to maximize the length of the longest substring of bags with gold coins.

Write a program using dynamic programming to determine the maximum number of gold coins that can be obtained.

## **Input**

In the first line of input, **n** (the number of bags) and **k** (the allowed number of times to use the wand) are given, with the constraints \( k \leq n \leq 10000 \).

In the second line, a string of length **n** is given, which represents the type of coin in the bags. In this string, **G** represents a gold coin and **S** represents a silver coin.

## **Output**

The output should be the length of the longest substring of bags containing gold coins (the maximum number of gold coins that can be obtained).

## **Examples**

Here are a few examples to better understand the problem as well as the input and output format of the tests.

**Example Input 1**
```
8 2
GSGSSGGS
```
**Example Output 1**
```
5
```

**Example Input 2**
```
7 1
GSSGGSG
```
**Example Output 2**
```
4
```

--- 


