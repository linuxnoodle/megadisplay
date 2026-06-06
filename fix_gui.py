import re

with open("ctl/src/gui.rs", "r") as f:
    lines = f.readlines()

# Let's write a simple script to count {} and () and print the stack
# Actually it's easier to just reset the end of the update() method and use a fresh multi_replace or properly matched braces.

