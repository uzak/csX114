---
Title: 09 Modules
---

# Modules

## Introduction

A module is a Python file containing definitions and statements that can be reused in other Python programs. Why?

* Organize code.
* Promote code reuse.
    * If you don't you allow bugs to multiply and you'll have to fix them wheever you copied the code.
* Use built-in functionalities provided by Python and the community.
    * Saves a lot of effort
    * Allows for RAD (Rapid Application Development)

### Create

Create a file called `math_utils.py`:

```
def add(a, b):
    return a + b

def multiply(a, b):
    return a * b
```

### Use
Import and use modules from `math_utils.py`

```
import math_utils

print(math_utils.add(3, 5))
print(math_utils.multiply(4, 6))
```

Different way:

```
from math_utils import add
print(add(2, 3))
```

Activity: create a simple module string_utils.py with functions like `to_uppercase`, `to_lowercase`, and use it in another script.

## Batteries Included: Python Standard Library

Python comes with a rich set of pre-installed modules for various tasks. Here the [documentation](https://docs.python.org/3/library/index.html).

Some famous modules:

* **math**
```
import math
print(math.sqrt(16))
print(math.pi)
```
* **datetime**
```
from datetime import datetime
now = datetime.now()
print(f"Current time: {now}")
```
* **random**
```
import random
print(random.randint(1, 100))
```
* **os**
Provides a way to interact with the operating system.
    * Work with the FS (file system).
    * Retrieve and set environment variables
    * Run shell commands
```
import os
print(os.getcwd())  # Get current directory
```
* **json**
```
import json
data = {"name": "Alice", "age": 25}
json_string = json.dumps(data)
print(json_string)
```

Activity (7 min)
* Use math to calculate the square root of a number.
* Use random to generate a random number between 1 and 50.
* Use datetime to display the current date and time.

Other mentions:
* **shutil** - High-level operations on files and directories. Used for copying, moving, and removing files or entire directories.
* **copy** - Provides functions to copy objects in Python. Supports both deep and shallow copies.
* **time** - Functions for working with time and delays.  Provides utilities to measure execution time, format time, and create delays.
* **sys** - Provides access to system-specific parameters and functions. Often used to access CLI arguments.
* **re** - Provides support for regular expressions (regex) to work with text patterns.  Used for powerful pattern matching, searching, and replacing strings.
* **argparse** - Used for creating user-friendly command-line interfaces.
* **itertools** - Provides a collection of fast and memory-efficient tools for working with iterators. Useful for looping, generating combinations, permutations, and more.
* **decimal** - the library if you need to work with decimal numbers without losing precision

## PyPI
The [Python Package Index (PyPI)](https://pypi.org/) is a repository of software for the Python programming language.

This is how you install packages from there:

```
pip install requests
```

And then you can start using them in your programs:

```
import requests
response = requests.get("https://api.github.com")
print(response.json())
```

## Homework (graded)

### Calculator
Create a module calculator.py with functions: `add`, `subtract`, `multiply`, and `divide`. Write a script that imports and uses this module.

### PyPI
Install the requests library.  Use it to fetch the current weather for your city from a free API (e.g., OpenWeatherMap).