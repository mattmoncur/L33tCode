# L33t Code Problems

## Description
My project for solving L33t Code problems in Objective-C

## Solved

### Two Sum
Solved using a comparison where I iterate through all values and sum each together.
Not optimal solution for performance, but simple.

https://leetcode.com/problems/two-sum/

### Reverse String
Solved using a reverse for-loop and appended characters to a mutable string

https://leetcode.com/problems/reverse-string/

### Battleships in a Board

My approach was to traverse through the board top->bottom, left->right. 
When encountering a "X" for the first time, attempt to record all coordinates for that battleship, and increase the count by one. 
If coming across an "X" coordiante that already belongs to a battleship, do not increment the count, continue on traversing.


https://leetcode.com/problems/battleships-in-a-board/

### Invert Binary Tree

Using recursion to invert the tree. First invert the nodes, then call invert on the child node. 

https://leetcode.com/problems/invert-binary-tree/

## On Deck:

TBD
