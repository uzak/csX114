---
Title: 06 Structures
---

# Structures

Structures in programming are ways to organize, store, and manage data efficiently. They determine how data is arranged in memory and how operations like accessing, adding, or modifying data can be performed.

Structures in Python are called collections and create complex data types out of primitive ones or other structures.

## Tuple

Immutable, ordered collections of items.

* Cannot be changed after creation. Just like strings.
* Use parentheses `()` to define.

```
# Example: Storing coordinates
point = (3, 5)
print("X:", point[0], "Y:", point[1])

# Tuple unpacking
x, y = point
print(f"Point coordinates: X={x}, Y={y}")
```

The parentheses can be omitted. Python will know based on the coma that it deals with a tuple:

```
point = 3, 5
print("X:", point[0], "Y:", point[1])
```

## Lists

Mutable, ordered collections of items.

* Can grow or shrink dynamically.
* Use square brackets `[]` to define.

```
# Example: Managing a to-do list
tasks = ["Read book", "Write code", "Go jogging"]
tasks.append("Cook dinner")  # Add an item
tasks.remove("Write code")   # Remove an item
print(tasks)

# Access by index
print("First task:", tasks[0])
```

## Sets

Unordered collections of unique items.

* Doesn't allow for duplicates.
* Use curly braces {} to define or set() constructor.

```
# Example: Removing duplicates from a list
numbers = [1, 2, 3, 1, 2, 4]
unique_numbers = set(numbers)
print("Unique numbers:", unique_numbers)

# Set operations
set_a = {1, 2, 3}
set_b = {3, 4, 5}
print("Union:", set_a | set_b)       # Combine both sets
print("Intersection:", set_a & set_b)  # Common elements
```

## Dictionaries

Mutable, unordered collections of key-value pairs.

* Keys are unique and immutable.
* Use curly braces {} with key-value pairs to define.

```
# Example: Storing user information
user = {
    "name": "Alice",
    "age": 25,
    "location": "New York"
}
print(user["name"])  # Access value by key

# Adding or modifying key-value pairs
user["age"] = 26
user["email"] = "alice@example.com"
print(user)

# Iterating over keys and values
for key, value in user.items():
    print(f"{key}: {value}")
```

## Summary
| **Structure** | **Mutable** | **Ordered** | **Unique Items** | **Common Use**       |
|---------------|-------------|-------------|-------------------|----------------------|
| Tuple         | No          | Yes         | No                | Fixed data           |
| List          | Yes         | Yes         | No                | Dynamic data         |
| Set           | Yes         | No          | Yes               | Unique items         |
| Dict          | Yes         | No          | Keys are unique   | Key-value pairs       |

## Homework (graded)

### Books
Create a list of your favorite books. Remove duplicates using a set.

### Cities
Store details about a city (name, population, country) in a dictionary and update the population.

### Distance in 3D space
Use a tuple to represent a point in a 3D space and calculate its distance from the origin.