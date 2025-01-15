---
Title: 02 Python and Data
---


# Python

## Recap

* Interactive Mode
* Scripts - files with .py extension
* Syntax and structure
  - Syntax: rules, how code must be written.
  - Semantics: Meaning of a statement or instruction.
* print()
* input()

## Variables

A variable is a name that stores a value, acting as a reference to
that value in memory. It allows you to reuse and manipulate data in your
 programs. Example:

```
x = 10       # Integer
y = "Hello"  # String
z = 3.14     # Float

x = "Now I'm a string!"     # Reassignment
```

Rules for Variable Names:

* Must start with a letter or an underscore (_).
* Cannot start with a number.
* Can contain letters, numbers, and underscores.
* Cannot use Python keywords (e.g., if, else, class).

### Snake Case

Snake case is a naming convention where words are written in lowercase and separated by underscores (`_`). It is commonly used in Python for variable and function names to improve readability. E.g. `valid_name`.

## Comments

```
# this is the first comment
spam = 1  # and this is the second comment
          # ... and now a third!
text = "# This is not a comment because it's inside quotes."
```

## Statements and Expressions

* Statement is a command. It does something, but not necessarily return a value.
* Expression is a combination of values, variables, operators, funtion calls that evaluates to a value.

```
# Print statement
print("Hello, World!")

# Control structure (if statement)
if x > 5:
    print("x is greater than 5")

# Arithmetic expression
5 + 3  # Evaluates to 8

# Logical expression
x > 5  # Evaluates to True or False

# Function call as an expression
len("Python")  # Evaluates to 6

# String concatenation as an expression
"Hello" + " World"  # Evaluates to "Hello World"
```

You can execute several statements (expressions) in one line. Don't do that! Stick to one idea/task/expression per line. That way it will be easier to understand.

# Data

Data refers to information or values that a computer program processes, stores, or manipulates. It can be as simple as a single number or as complex as a collection of multimedia files. In programming, data is categorized into **data types**, which define the kind of value and what operations can be performed on it.

Kinds of data types:
  * **Primitive**: Basic, indivisible data types like integers, floats, and booleans.
  * **Structured**: Organized collections of data, like arrays, lists, and objects.

Hand in hand with data types go operators. An operator is a symbol or keyword in programming that performs an action or operation on data (called operands). For example, + is an operator that adds two numbers.


## Numeric

* Integer: int
* Float: float
* Complex: complex

```
>>> # Let's start with integers and floats
>>> x = 42  # An integer
>>> y = 3.14  # A float

>>> # Check their types
>>> type(x)
<class 'int'>
>>> type(y)
<class 'float'>

>>> # Perform basic arithmetic operations
>>> x + y 
45.14
>>> x - y
38.86
>>> x * y 
131.88
>>> x / y  # Division (always returns float)
13.375796178343949

>>> # Floor division and modulus
>>> x // 5  # Integer division
8
>>> x % 5  # Remainder
2

>>> # Exponentiation
>>> 2 ** 3  # 2 raised to the power of 3
8

>>> # Working with floats
>>> z = 7.5 / 2 
>>> z
3.75

>>> # Rounding floats
>>> round(z, 1)  # Round to 1 decimal place
3.8

>>> # Type conversions (casting)
>>> int(z)  # Convert float to integer (truncates)
3
>>> float(x)  # Convert integer to float
42.0

>>> # Handling very large numbers
>>> big_number = 12345678901234567890
>>> big_number * 2
24691357802469135780

>>> # Scientific notation for small numbers
>>> small_number = 1e-10  # Equivalent to 0.0000000001
>>> small_number
1e-10

>>> # Some built-in functions
>>> abs(-42)  # Absolute value
42
>>> pow(2, 3)  # 2 raised to the power of 3 (same as 2 ** 3)
8
```

## Text

* String: str
* Existing strings cannot be changed. You can only use them to create new strings out of the existing ones.

```
>>> # Let's start with basic strings
>>> name = "Alice"
>>> greeting = "Hello"

>>> # Check the type of a string
>>> type(name)
<class 'str'>

>>> # Concatenate strings
>>> full_greeting = greeting + ", " + name + "!"
>>> full_greeting
'Hello, Alice!'

>>> # Repeating strings
>>> excited_greeting = full_greeting * 2
>>> excited_greeting
'Hello, Alice!Hello, Alice!'

>>> # Accessing characters by index
>>> full_greeting[0]  # First character
'H'
>>> full_greeting[-1]  # Last character
'!'

>>> # Slicing strings
>>> full_greeting[0:5]  # First 5 characters
'Hello'
>>> full_greeting[7:]  # Everything from index 7 onwards
'Alice!'
>>> full_greeting[:5]  # Everything up to index 5 (exclusive)
'Hello'

>>> # String length
>>> len(full_greeting)
13

>>> # Converting case
>>> full_greeting.upper()  # Uppercase
'HELLO, ALICE!'
>>> full_greeting.lower()  # Lowercase
'hello, alice!'

>>> # Stripping whitespace
>>> padded = "   hello, world!   "
>>> padded.strip()
'hello, world!'
>>> padded.lstrip()
'hello, world!   '
>>> padded.rstrip()
'   hello, world!'

>>> # Splitting strings
>>> sentence = "Python is awesome"
>>> words = sentence.split()  # Split into a list of words (we'll deal with lists later)
>>> words
['Python', 'is', 'awesome']

>>> # Joining strings
>>> "-".join(words)  # Combine words with a hyphen
'Python-is-awesome'

>>> # Checking substrings
>>> "awesome" in sentence  # Is "awesome" part of the sentence?
True
>>> "boring" in sentence
False

>>> # Replacing parts of a string
>>> sentence.replace("awesome", "fantastic")
'Python is fantastic'

>>> # Formatting strings - string interpolatoin
>>> age = 25
>>> formatted = f"My name is {name} and I am {age} years old."
>>> formatted
'My name is Alice and I am 25 years old.'

>>> # Advanced formatting (see: https://pyformat.info/)
>>> pi = 3.14159
>>> f"The value of pi is approximately {pi:.2f}"  # Format to 2 decimal places
'The value of pi is approximately 3.14'
```

* Strings are texts in quotes (`"`) or apostrophes (`'`) on one line.
* Multiline strings begin and end with triple quotes or apostrophes. E.g.:
```
>>> long_text = """Line 1
... Line 2
... ...
... and here is the END"""
>>> long_text
'Line 1\nLine 2\n...\nand here is the END'
>>> 
```
* `\n` is new line character.
* All characters starting with `\` are called [escape sequences](https://en.wikipedia.org/wiki/Escape_sequence) and contain special characters.

`input()` always returns a string, even if the user enter digits. It's your job to convert it to number. Example:

```
>>> number = input("Please enter a number: ")
Please enter a number: 42
>>> number
'42'
>>> type(number)
<class 'str'>
>>> number = int(number)
>>> type(number)
<class 'int'>
>>> number
42
```

## Boolean

* Boolean: bool
* Valid values are `True` and `False`. Comparisons yield these values.

```
>>> # Booleans represent True or False
>>> t = True
>>> f = False

>>> # Check the type of a boolean
>>> type(t)
<class 'bool'>

>>> # Boolean operations
>>> t and f  # Logical AND
False
>>> t or f  # Logical OR
True
>>> not t  # Logical NOT
False

>>> # Booleans with comparison operators
>>> 5 > 3  # Greater than
True
>>> 5 < 3  # Less than
False
>>> 5 == 5  # Equal to
True
>>> 5 != 3  # Not equal to
True

>>> # Combining comparisons
>>> 5 > 3 and 2 < 4
True
>>> 5 > 3 or 2 > 4
True
>>> not (5 > 3)
False

>>> # Booleans with arithmetic operations
>>> True + 1  # True is treated as 1
2
>>> False + 1  # False is treated as 0
1

>>> # Boolean casting 
>>> bool(1)  # Non-zero numbers are True
True
>>> bool(0)  # Zero is False
False
>>> bool("Hello")  # Non-empty strings are True
True
>>> bool("")  # Empty strings are False
False
>>> bool([])  # Empty lists are False
False
>>> bool([1, 2, 3])  # Non-empty lists are True
True

>>> age = 19
>>> is_adult = age >= 18    # expression + assignment
>>> is_adult
True
```


## None

None is a special constant in Python that represents the absence of a value or a null value.

```
>>> x = None
>>> x is None
True
>>> x is not None
False
>>>
```

## Homework (graded)

### Calculator
Create a program that will read three numbers, store them in three distinct variables and then create the sum of them. This will be stored in another variable. Then it will print the variable result saying: "result is N" where N is the sum.

### Meter
Create a program that will let the user input his name. The program will then say how many characters are there in his name.

Extra points: if spaces are inserted, substract their count from the result, so that "Peter Pan" will return 8 and not 9.