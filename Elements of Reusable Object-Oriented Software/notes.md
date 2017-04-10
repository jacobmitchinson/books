Design patterns help us to create software that is reusable.

They have a few components:

*Pattern Name*

The pattern name describes a design problem in a few words.

*The Problem*

The problem describes when to use the problem.

*The Solution*

The solution describes a template to use with the problem but does not describe specifics.

*The Consequences*

The consequences are the trade offs of using a design pattern.

Finding a design pattern that's right for your problem.

*Creational Design Patterns*

Abstract Factory

*Intent*

An abstract factory is useful when we are trying to create families of related or similar objects but don't want to specify their classes.

*Motivation*

Imagine we have some views that we wished to be of similar sizes and shapes. Imagine also that we wanted to be able to change which one of these views was used with ease. One of these buttons is created using a class called "SquareView". If we decided to use this class everywhere it would difficult for us to then change it to say "RectangleView" at a later date. This is where the abstract factory design pattern can help. To do this, we provide an abstraction with which our system can create said views. See: example in playground.

*Applicability*

Use this pattern when:

* We want our system to be independent of the creation, composition and representation of certain behavior
* A system requires different configurations based on a family of objects
* A family of objects is designed to be used together and you want to enforce this
* You want to reveal only interfaces and not implementations

*Consequences*

The Abstract Factory pattern has several benefits and liabilities:

* Isolates object creation
* It makes changing object families easy. We can switch to a different factory and create a new family without needing to know about how this is done.
* We can enforce how objects are created and used together
* Supporting new kinds of families can be difficult. Fixing the interface requires updating that interface if we want new behaviour.

*Implementation*

Tips for the implementing the Abstract Factory pattern:

* Factories as singleton. Since we usually only requires a single instance of a factory. Consider how this might impact testability, however.
* Creating objects is not handled by the Abstract Factory pattern. It only provides an interface for creation. Consider using the Factory Method to enable this.
* Defining extensible factories. Rather than creating a new method for each factory created, consider using indentifiers such as enums to switch between different factories.


*Builder Pattern*

*Intent*

The builder pattern abstracts the construction process of an object to an interface so that the same construction process can be used to create different objects.

*Motivation*

Imagine we have a body of English text that, depending on the settings, needs to be converted to 
