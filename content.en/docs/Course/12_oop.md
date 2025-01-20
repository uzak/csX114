---
Title: 12 Object Oriented Programming
---

# Object Oriented Programming

OOP is a programming paradigm based on the concept of objects. An object is a self-contained entity that contains data (attributes) and functions (methods) that operate on that data. OOP organizes code into reusable and logical structures called classes, which serve as blueprints for creating objects.

Why is OOP Used?

* Code Reusability: Through inheritance, OOP allows sharing and reusing common code, reducing duplication.
* Modularity: By encapsulating data and methods within classes, OOP promotes better organization and separation of concerns.
* Scalability and Maintainability: OOP makes code easier to update and scale as projects grow, thanks to its modular nature.
* Real-World Modeling: OOP reflects real-world entities and interactions, making it intuitive for developers to design systems.
* Flexibility with Polymorphism: Different objects can be used interchangeably if they share the same interface, enhancing flexibility in functionality.

Why is OOP Popular?

* Widely Supported: OOP is supported by many modern programming languages like Python, Java, and C++.
* Intuitive Design: Concepts like objects, inheritance, and encapsulation closely mirror real-world concepts, making it easier for developers to think about problems and their solutions.
* Improved Collaboration: Teams can work on different classes and modules independently, streamlining development in large projects.
* Proven Effectiveness: OOP has been used in countless successful applications, from operating systems to web applications, proving its effectiveness in solving complex problems.

## Class

A class is a blueprint for creating objects. It defines the structure and behavior of objects, encapsulating data (attributes) and functionality (methods).

```
# Define a class
class Dog:
    def __init__(self, name, breed):
        self.name = name  # Attribute
        self.breed = breed  # Attribute

    def bark(self):  # Method
        return f"{self.name} says Woof!"
```

## Object (Instance)

An object is an instance of a class. It is created using the class blueprint and has its own unique state (data).

```
# Create instances (objects) of the class
dog1 = Dog("Buddy", "Golden Retriever")
dog2 = Dog("Max", "Labrador")

print(dog1.name)  # Output: Buddy
print(dog2.breed)  # Output: Labrador
print(dog1.bark())  # Output: Buddy says Woof!
```

## Polymorphism

Polymorphism allows objects of different classes to be treated uniformly through shared methods. The method behaves differently based on the class of the object.

```
class Bird:
    def sound(self):
        return "Chirp"

class Dog:
    def sound(self):
        return "Bark"

def animal_sound(animal):
    print(animal.sound())

bird = Bird()
dog = Dog()

animal_sound(bird)  # Output: Chirp
animal_sound(dog)  # Output: Bark
```

## Inheritance

Inheritance allows a class (child) to inherit attributes and methods from another class (parent), enabling code reuse and extending functionality.

```
class Animal:
    def eat(self):
        return "This animal is eating."

class Cat(Animal):  # Cat inherits from Animal
    def meow(self):
        return "Meow!"

cat = Cat()
print(cat.eat())  # Output: This animal is eating.
print(cat.meow())  # Output: Meow!
```

## Other OOP features
More advanced topics, that are not so strongly enforced by Python.

### Encapsulation
No direct access to object's data is premitted. All operations happen through a well defined interface. In Python, **introspection** is at least as important thus Encapsulation is not taken as seriously as in Java/C++ etc. One underscore `_` indicates that you'd only touch that variable/function if you know what you're doing. Two underscored `__` imply some name mangling thus making the introspection more difficult, yet not impossible. Example:
```
class Example:
    def __init__(self):
        self.public_var = "I am public"
        self._protected_var = "I am protected (use with caution)"
        self.__private_var = "I am private (name mangled)"
    
    def get_private_var(self):
        # Public interface to access private data
        return self.__private_var
    
    def set_private_var(self, value):
        # Public interface to modify private data
        self.__private_var = value

# Create an instance of Example
example = Example()

# Access public variable
print(example.public_var)  # Output: I am public

# Access protected variable (allowed, but not recommended)
print(example._protected_var)  # Output: I am protected (use with caution)

# Attempt to access private variable directly (will fail)
try:
    print(example.__private_var)
except AttributeError as e:
    print(f"AttributeError: {e}")  # Output: AttributeError: 'Example' object has no attribute '__private_var'

# Access private variable using the public interface
print(example.get_private_var())  # Output: I am private (name mangled)

# Modify private variable using the public interface
example.set_private_var("New private value")
print(example.get_private_var())  # Output: New private value

# Access private variable using name mangling (not recommended)
print(example._Example__private_var)  # Output: New private value

```
### Data Abstraction
Parent provides (part of) the implementation that relies on child's details. Parent provides all the common data and functionality, children just provide the details the parent cannot know. Example:
```
class Animal:
    def eat(self):
        return f"{self.name()} is eating."
    
    def name(self):
        return "Random Animal"

class Cat(Animal):  
    def meow(self):
        return "Meow!"
    
    def name(self):
        return "Cat"

cat = Cat()
print(cat.eat())  # Output: Cat is eating.
print(cat.meow())  # Output: Meow!

```

## 7. Class vs. Instance Attributes and Methods

* Class Attributes: Shared by all objects of the class.
* Instance Attributes: Unique to each object.
* Class Methods: Operate on class attributes and don't require an instance.
* Instance Methods: Operate on instance attributes.

```
class Car:
    wheels = 4  # Class attribute (shared by all instances)

    def __init__(self, make, model):
        self.make = make  # Instance attribute
        self.model = model  # Instance attribute

    @classmethod
    def change_wheels(cls, new_wheel_count):
        cls.wheels = new_wheel_count

car1 = Car("Toyota", "Corolla")
car2 = Car("Honda", "Civic")

print(car1.wheels)  # Output: 4 (class attribute)
Car.change_wheels(6)
print(car1.wheels)  # Output: 6 (class attribute updated for all instances)
```