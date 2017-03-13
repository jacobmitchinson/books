Benefits of POP / Value Types


Model

Reference types can make it harder for us to reason locally. Things can change from underneath us. Relationships become complicated. Each variable has independent storage with value types and it makes it much easier to reason about the code.

Elsewhere

Views:

The model is not the only place we can gain wins from value types. If we have a layout for example that we are using on a cell, consider moving this code over to a struct so that this can be reused and, again, we gain the ability to reason about the code much more easily.

Example:

struct MyLayout {

  var content:Layout
  var decoration:Layout

  mutating func createLayout() {
    content.frame = ...
    decoration.frame = ...
  }

}

protocol Layout {
  var frame:CGRect { get set }
}

extension UIView: Layout {}
extension SKNode: Layout {}

Notice how we use the protocol Layout that conforms to frame. This is a great benefit of relying on protocols for polymorphism instead of superclasses, as we can add this functionality to any future type.

Remember:

Class instances are expensive!
Structs are cheap!

We can use composition to create new types that have similar behavior rather than using inheritance.

We can use typealiases for type safety. associatedtype are like plaeholders for types:

protocol Layout {

  mutating func layout(in rect:CGRect)
  associatedtype Content
  var contents:[Content] { get }

}

Usage:

struct Layout2: Layout {

    mutating func layout(in rect:CGRect)  
    associatedtype Content = UIView
    var contents:[Content] { get }

}

But rather than doing this, we can use generics to specify what the Content associatedtype is:

struct Layout2<Child:Layout> : Layout {
      mutating func layout(in rect:CGRect)  
      associatedtype Content = child.content
      var contents:[Content] { get }
}

A great advantage of using structs this way is that they are highly testable.

Controllers:

We can move state into enums to ensure that states are tracked correctly and prevent errors.

Takeaways:

Customization through composition instead of inheritance
Use protocols for generic reusable code
Take advantage of value semantics
Local reasoning is very important!
