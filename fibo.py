# This program calculates the Fibonacci sequence
a = 0
b = 1
count = 0
max_count = 20
while count < max_count:
    count = count + 1
    # we need to keep track of a since we change it
    old_a = a
    old_b = b
    a = old_b
    b = old_a + old_b
    # Notice that the , at the end of a print statement keeps it
    # from switching to a new line
    print(old_a),
