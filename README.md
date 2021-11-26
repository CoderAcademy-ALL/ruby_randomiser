# Ruby Randomiser

## Problem 
I have a group of students. And sometimes: 
- I need to pick a random student. 
- Sometimes I need to randomise the order of the group.
    ```ruby
     group = ["Alice", "Bob", "Charlie"]
     #=> 
      ["Bob", "Alice", "Charlie"]
    ```
- Sometimes I need to allocate random groups of a specific size (STRECH GOAL)
      ```ruby
     group = ["Alice", "Bob", "Charlie", "Danny", "Ellen", "Fred"]
     #=> 
      [["Charlie", "Fred"], ["Bob", "Danny"], ["Ellen", "Alice"]]
    ```