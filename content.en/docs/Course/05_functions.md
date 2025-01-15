---
Title: 05 Functions
---

# Funtions in Python

## Introduction

Functions are reusable blocks of code that perform a specific task. They implement na algorithm. Moreover, they help us organize and structure our programs, avoid repetition, and improve readability.

Function reduce complexity, as the user (caller) of a function doesn't need to know the algorithm, only what's the input and expected output. Thus, from the perspective of the caller of the function it is a blackbox.

A function in Python is defined using the `def` keyword:

```
# Defining function
def greet():
    print("Hello, World!")

# Calling the function
greet()
```

A function like greet that doesn't contain a `return` statement automatically returns the value `None`. As such it is also called a procedure. A proper function returns a value.  Example:
```
def calculate_circumference(radius):
    if radius < 0:
        raise ValueError("Radius cannot be negative")
    pi = 3.141592653589793
    return 2 * pi * radius

radius = 5
circumference = calculate_circumference(radius)
print(f"The circumference of a circle with radius {radius} is {circumference}")
```

When a `return` statement is executed, the function terminates at that point returning the value to the caller and gives control to the caller.

## Arguments

Functions can accept inputs called arguments. These allow the function to work with dynamic data.

### Positional Arguments

Positional arguments are the most common type. Their order is important:

```
def greet_person(name):   # `name` is a positional argument
    print(f"Hello, {name}!")

greet_person("Alice")     
```

The values passed to a function in the place of an argument are called parameters. So in the example above the parameter for `greet_person` is `"Alice"`.

### Default Arguments

Default arguments have predefined values. If not provided during the call, the default is used:

```
def greet_person(name="Stranger"):
    print(f"Hello, {name}!")

# Calling the function
greet_person()       # Uses default value
greet_person("Bob")  # Overrides default value
```

### Arbitrary Argument List

Sometimes, you may not know how many arguments will be passed to the function. You can use `*args` to accept a variable number of arguments:

```
def greet_people(*names):
    for name in names:
        print(f"Hello, {name}!")

greet_people("Alice", "Bob", "Charlie")
```

### Arbitrary Keyword Arguments

```
def describe_person(**details):
    for key, value in details.items():
        print(f"{key}: {value}")

# Calling the function
describe_person(name="Alice", age=25, location="New York")
```

### Docstrings
A docstring is a special string that describes what the function does. It is written as the first statement inside the function body and is usually enclosed in triple quotes (""" or ''').

```
# Example: Function with Docstring
def greet_person(name):
    """
    Greets a person with the provided name.

    Args:
        name (str): The name of the person to greet.

    Returns:
        None
    """
    print(f"Hello, {name}!")

print(greet_person.__doc__)   # Accessing a function's docstring
greet_person('Peter')         # Calling is as usual
```

## Homework (graded)

### Basic Function

Write a function `say_hello` that prints "Hello, Python!".  Call the function to ensure it works.

### Positional and Default Arguments

Write a function `introduce` that takes two arguments: `name` and `age` (default value for age should be 18). Print a sentence introducing the person. Call the function with both arguments and with only name.

### Arbitrary Arguments

Write a function `list_hobbies` that accepts any number of hobby names using `*args`. Print all hobbies passed to the function.  Call the function with at least three hobby names.

### Keyword Arguments

Write a function person_details that accepts `name`, `age`, and `city` as keyword arguments.  Print these details in a formatted string.  Call the function using keyword arguments in different orders.

### Arbitrary Keyword Arguments

Write a function `profile` that accepts any number of keyword arguments using `**kwargs`. Print all the key-value pairs in a readable format. Call the function with at least three key-value pairs.

### Docstring

Write a function `calculate_area` that calculates and returns the area of a rectangle given length and width.  Add a docstring explaining the purpose of the function, its arguments, and what it returns. Access and print the docstring. Call the function to test it.

### Combo

Combine all these concepts into a single function `full_profile` that takes:

* A mandatory positional argument for `name`.
* A default argument for `age`.
* An arbitrary list of hobbies using `*args`.
* Additional details using `**kwargs`.

Print the complete profile in a structured format. 
