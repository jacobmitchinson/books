The idea behind clean code is that maintenance is just as important as production e.g. Total Productive Maintenance or TMP.

Seiri - knowing where things are.

Seiton - tidiness.

Seiso - cleaning.

Seiketsu - standarization.

Shutsuke - discipline.

Road to craftsmanship - knowledge and work.

**It’s your job to defend the code with equal passion. **

What if you were a doctor and the patient said stop washing your hands, I need you to work faster?

You will not make the deadline by making a mess. You need to write clean code to write fast.

We are authors. Remember the next time you are writing code that you are writing for it to be read.

Leave the campground cleaner than you found it.

**Meaningful Names**

**VARIABLES**

**USE INTENTION REVEALING NAMES **

A variable, function or class should tell you why it exists, what it does, and how it is used.

We want to reveal the intention behind what we have done rather than forcing our readers to work it out for themselves.

**DON’T USE SIMILAR SOUNDING NAMES**

Avoid using names that look or sound the same. With code completion, we don’t want a developer to use the wrong function or variable.

**BE EXPLICIT**

Name your variables such that they tell you why it exists, what it does and how it is used.

NO

this = [*]

that = this.map do |x|

 “Hello ” + x

end

YES

names = [“Jake"]

greeted_names = name.map do |name|

 “Hello ” + name

end

**Avoid disinformation**

Don’t leave false clues that hide the meaning of the code. Don’t use variables that look very similar.

**Avoid meaningless distinctions**

Don’t create a Product class and then create ProductData or ProductInfo - it does not help us!

Make names so that the reader can tell the difference!!

**Use Pronounceable Names**

Humans are good at words. It helps us to talk about our applications. Make it easy for developers to read and talk about your work by not using variables like genymdhms (generation, date, year, month, day, hour, minute, second. How about generationTimestamp as a variable?

**Make Searchable Variables**

Using the letter i is going to make readers sad when they are trying to use your work. How are they to find it if there's a bunch of other variables using i in the name?

**Avoid Hungarian Notation**

Don't name variables with their type in them. nameLabel is not necessary with modern IDEs as the compiler will detect a type error before a compile. They make it harder to change a variable when the type needs changing e.g. Changing nameLabel to nameButton requires a changing of the type and the variable name.

**Avoid Mental Mapping**

Do not insist on making your readers figure out what x, y and z are when you can give them better names and make life easier for everyone. Clarity is king.

**Class names**

Classes and objects should have noun or noun phrase names e.g. Ball, Puppy, PuppyFeeder. Avoid names that are verbs.

**Don't use multiple names per concept**

If you have a method that applies styling to a view and you call it applyStyling() don't in another class call this setupStyling() (protocols can be used to define this behaviour in iOS). Still, if you then use the word "setup" for one method make sure to keep this consistent across the application. This will give readers an idea of what is taking place without doing mental gymnastics.

Likewise, make sure that these words don't have multiple meanings in your application. Don't choose "fetch" when you are fetching from the database and then use this to execute other behaviour.

**Go ahead and use solution and domain names**

You don't have to name everything according to your domain. People reading your code are developers so it's fine to name a class after accountFactory after the factory pattern.

It's also fine to use domain specific names when there is not a technical way of conveying the concept.

**METHODS**

**Method names**

These should be verbs and never nouns. Feed, Play, or Fetch are examples.

**Add Meaningful Context**

Add meaningful context. If you see city, state and country you might think of an address but if you see state alone you probably would not. It's better to use addressCity, addressState. A better solution is to create an address model.

**Don't add gratuitous context**

Don't add the prefix HRL (Happy Puppies Rule) to your new Puppy app's classes. HPLUser is not necessary in most modern programming languages (sorry Objective-C).

**Don't be afraid**

Don't be afraid to rename things where it makes sense. Developers on your project will be happy that you have improved the code.

**Functions**

The first rule of functions is that they should be small. But how small? They should do one thing. But what does one thing  mean?

A function should include code that is only one level of abstraction below it's stated intent. We can also say: if part of a function can be refactored into a separate function with a name that is not a restatement of what that function already is named, then it is doing one more than thing.

**Step down rule**

We want the code to read like a newspaper. We have the headline interfaces at the top and each method below descends into the next layers of abstraction.

**Switch statements**

These often violate SRP because, by nature, they act on multiple scenarios. Try to keep these to a minimum by using polymorphism to create the objects using the switch statement.

**Use Descriptive Names**

You can't overestimate the importance of using good names for functions. "You know you are working on good code when each routine turns out to be pretty much what you expected".

Don't be afraid to make a name long. A long descriptive name is better than a short enigmatic one.

**Function Arguments**

Arguments are difficult for readers. Try not to argue too much. The ideal number of argument that a function takes is zero. More than three arguments should not be used as they are  confusing and hard to test.

**Monadic Functions**

There are two common forms of monadic functions:

1. Question arguments: totalAgeOfPuppies(puppies:[Puppy]) -> Int
2. Transformational arguments: makeGreatAgain(puppy:Puppy) -> Puppy

Try not to use output arguments i.e. sending an argument to a function and then modifying it. Readers normally expect output from functions so make sure that if the function modifies the argument that it also returns it.


**Flag Arguments**

Functions should not accept a boolean. This is a sign that the function is doing more than one thing.

**Dyadic Functions**

Two arguments in a function is acceptable but we should try to make these monads.

**Triads**

Functions that take 3 arguments are significantly harder to understand. Often 3 arguments is a sign that we can wrap the arguments into a class of their own.

**Verb/Noun keyword**

Our function should create a nice verb/noun pair with a monad from the name of function and its first argument e.g. write(name).

**No Side Effects**

Don't let your functions do other things than the name suggests.

**Output arguments**

In general, appendFooter(report) is confusing because we don't know what is being done to s: is it being modified?

It is better to write report.appendFooter(). Now it's clear.

**Command Query Separation**

Functions should either do something or answer something but not both. It is confusing for readers as we don't know what's being done without going into the method.

**Don't repeat yourself**

Just don't.

**Comments**

The proper use of comments is to compensate for our failure to express ourselves in code. Comments lie. Not always, but often. Code changes and evolves but the comments don't always follow the code. We could argue that we should maintain the comments but wouldn't it be better to maintain clearer code? Only the code can truly tell you what it does.

Exlain yourself in code, not comments:

What would you rather see. This:

// check to see if employee is eligible for benefits
if ((employee.flag == self.hourlyFlag) && employee.age > 65)

Or this?

if (employee.isEligibleForBenefits())

Sometimes comments are needed to make things clearer, explain intent, warn, add todos,

If you are writing public apis then you should still write good docs.

**Formatting**

**Keep Classes Small**

How small is small? FitNesse, a testing tool, has 50,000 lines with an average length of 200 lines and an upper limit of 500 lines.

Small files are usually easier to understand than larger ones.

**Newspaper**

Classes should read like newspaper articles. You get the headline at the top and then we move down into the details. The high level concepts should be at the top and the minutae should be at the bottom.

**Add vertical openness**

Each line represents an expression or clause. Each group of lines should express a thought.

**Vertical Distance**

Concepts that are closely related should be close to each other. This will help readers find what you are talking about.

**Dependent Functions**

Functions that call other functions should be vertically close.

**Abstractions**

 It is important to hide implementation. We want to express our data in abstract terms.

 **Data/object symmetry**

Objects hide their data behind abstractions and expose functions that manipulate the data.  Data structures have no meaningful functions and expose their data.

**Law of Demeter**

The Law of Demeter says that an object should not know about the internal structures of another object.

More precisely, we can say that an a method f of class C should only call the methods of these:

1. C
2. An object created by f
3. An object passed as an argument to f
4. An object held in an instance variable of C

In other words, talk to friends, not strangers.

**Avoid Train Wrecks**

This is a train wreck: puppy.owner.favouriteParks = [Park(name:"Finsbury Park"), Park(name:"Regents Park")]

We should avoid manipulating the owner object's internal structure.

**Error handling**

 Throwing exceptions can separate concerns between successful states and errors. This is more favourable versus using error codes.

**Boundaries**

If you use a boundary interface then keep it inside a class and avoid passing it around.

**3rd party code**

We can write tests around the 3rd party to test how expect it to be used in our application. Then if things change in a future update we will know.

The tests cost us nothing since we need to establish how it works anyway.
