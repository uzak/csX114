---
Title: 03 Control Strutures and Loops
---

# Conditionals

Conditionals in a programming language are used to make decisions in the flow of a program based on whether certain conditions are met. They allow the program to execute different code paths depending on the evaluation of a condition (True or False).

## `if` Statement
The if statement allows executing a block of code if a condition is `True`.

```
x = 10
if x > 5:
    print("x is greater than 5")  # Output: x is greater than 5
```

### Nested Conditions

```
x = 10
if x > 5:
    if x < 15:
        print("x is between 5 and 15")  # Output: x is between 5 and 15
```

### Logical Operations in Conditions
Combine conditions using `and`, `or`, and `not`.

```
x = 10
if x > 5 and x < 15:
    print("x is between 5 and 15")  # Output: x is between 5 and 15
```

### `if-else` Statement

Adds an alternative block when the condition is `False`.

```
x = 3
if x > 5:
    print("x is greater than 5")
else:
    print("x is not greater than 5")  # Output: x is not greater than 5
```

### `if-elif-else` Statement

```
x = 7
if x > 10:
    print("x is greater than 10")
elif x > 5:
    print("x is greater than 5 but not more than 10")  # Output
else:
    print("x is 5 or less")
```

There can be any number of `elif` sections.

# Loops

Loops execute a block of code repeatedly, saving time and effort. They're used for:

* **Repetition**: Automate repetitive tasks.  Example: Printing numbers 1 to 10.
* **Iteration**: Process items in a sequence (e.g., list or string).  Example: Summing numbers in a list.
* **Conditional Repetition**.  Example: Prompt user until input is valid.

## `while` loop
Repeats as long as the condition is True.

```
x = 1
while x <= 5:
    print(x)  # Output: 1 2 3 4 5
    x += 1
```

### `break` and `continue`
* `break` exits the loop.
* `continue` skips to the next iteration.

```
x = 0
while x < 5:
    x += 1
    if x == 3:
        continue
    if x == 5:
        break
    print(x)  # Output: 1 2 4

```

Both keywords work in both `while` and `for` loops.

## `for` loop
Iterates over a sequence.

```
for i in [1, 2, 3]:
    print(i)  # Output: 1 2 3
```

### `range()` function
Generates a sequence of numbers.

```
for i in range(1, 6):
    print(i)  # Output: 1 2 3 4 5
```

### nested loops
Loops inside loops for multi-dimensional iteration.

```
for i in range(1, 3):
    for j in range(1, 3):
        print(f"i={i}, j={j}")
```

### infinite loops

```
while True:
    print("Infinite Loop")
```

# `pass`
A placeholder that does nothing but satisfies syntax requirements.

```
for i in range(3):
    pass  # Placeholder for future code
```

# Homework (graded)

## conditionals

Create a calculator that will ask the user for operand1, operation
(+/-/*/division), operand2 and will read the values, convert them to
numbers and print the result

## loops

Create a Number Guessing Game in Python. Write a Python program that
allows a user to guess a secret number between 1 and 10. The program
should guide the user by providing feedback on whether their guess is
too low, too high, or correct. The game continues until the user guesses
 the correct number.