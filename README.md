# SOLID Principles for iOS developers


## Principles

- Single Responsibility Principle (SRP)
- Open/Closed Principle (OCP)
- Liskov Substitution Principle (LSP)
- Interface Segregation Principle (ISP)
- Dependency Inversion Principle (DIP)

Single Responsibility Principle (SRP): This principle states that a class should have only one reason to change, meaning it should have a single responsibility. In other words, a class should focus on doing one thing well. This helps to keep the codebase modular, easier to test, and less prone to bugs.

Open/Closed Principle (OCP): The principle suggests that software entities (such as classes, modules, functions) should be open for extension but closed for modification. This means that you should be able to add new functionality without altering existing code. This promotes code reusability and reduces the risk of introducing bugs when making changes.

Liskov Substitution Principle (LSP): According to this principle, objects of a derived class should be able to replace objects of the base class without affecting the correctness of the program. In simpler terms, a subclass should be substitutable for its base class without causing unexpected behavior. This ensures that the inheritance hierarchy is well-defined and maintains the expected behavior.

Interface Segregation Principle (ISP): This principle advises that a class should not be forced to implement interfaces it does not use. Instead of having large, monolithic interfaces, you should have smaller, focused interfaces. This prevents clients from being burdened with unnecessary methods and ensures that classes only implement the methods they need.

Dependency Inversion Principle (DIP): The DIP suggests that high-level modules should not depend on low-level modules, but both should depend on abstractions. Additionally, abstractions should not depend on details; details should depend on abstractions. This encourages the use of interfaces or abstract classes to decouple components and improve flexibility.

