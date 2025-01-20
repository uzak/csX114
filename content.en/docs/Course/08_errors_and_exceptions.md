---
Title: 08 Errors and Exceptions
---

# Errors and Exceptions

* Errors: Issues in the syntax or runtime of a program that cause it to stop.
* Exceptions: Errors detected during execution.

Handling errors/exceptoins is essential!

## Types of Errors

Below you'll find some types of errors. Please spot and fix them.

### Syntax Errors

```
print("Hello World"
```

### Runtime Errors

```
x = 10 / 0
```

Difficult to handle beforehand.

### Logical Errors

Also called bugs. Here is a program to sum up to numbers 1 to 5 inclusively. 

```
total = 0
for i in range(1, 5):  
    total += i
print(total)
```

The program prints 10 even though I'm expecting 15!


## Exceptions and Handling them

### `try-except` block

```
try:
    num = int(input("Enter a number: "))
    print(10 / num)
except ZeroDivisionError:
    print("You cannot divide by zero.")
except ValueError:
    print("Please enter a valid number.")
```

### using `else` and `finally`

```
try:
    file = open("example.txt", "r")
    content = file.read()
    print(content)
except FileNotFoundError:
    print("File not found.")
finally:
    print("Execution complete.")
```

Activity: write code that safely handles user input for dividing two numbers (5 min)

## Debugging basics

* Print statements
* IDE tools
* Common errors to look for: indentation, incorrect data types, off-by-one errors.

```
def sum_list(numbers):
    result = 0
    for num in numbers:
        result += num
    return result

print(sum_list([1, 2, 3, "4"]))  # Debug this!
```

## Clean Code Basics

Some basic rules:

* Use meaningful variable names.
* Magic Constants -> extract then into named constants at the top of the file
* Copy & Paste -> DRY (Don't Repeat Yourself), and/or use functions
* Formatting
* Dead Code
* Useless Comments
* No Main Function

## Homework (graded)
### Exception Handling

Write a program:

* Prompt the user for a file name.
* Try to open the file and print its contents.
* Handle exceptions for:
    * File not found.
    * Permission error.
    * Any other error. Handle this error by telling the user also what kind of error has happened.


### Refactoring
Refactor the following code:

```
import random
a = []
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
a.append(int(random.random() * 100))
c = 0
# last = None
# for new in a:
#     if last == new:
#         a.remove(new)
#     last = new
for i in range(0,10):  # here we loop
    if (a[i]%7== 0):
        c += 1
    if (a[i]%11==0):
        c += 1
    if (a[i] % 7 == 0):
        print(a[i], "is divisible by 7 or 11")
    if (a[i] % 11 == 0):
        print(a[i], "is divisible by 7 or 11")
print("found", c, "numbers divisible by 7 or 11")

```
Make sure to:
* Use proper variable names
* Use named constants instead of magical ones
* Remove copy&paste code
* Factor a function where possible/useful/required
* Join logical conditions in Control Structures if they have the same branch
* Create a `main`-function where all will start