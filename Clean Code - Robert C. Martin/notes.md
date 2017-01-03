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

These should have verb or verb phrases names like postPayment, deletePage, or save.

**Add Meaningful Context**

Add meaningful context. If you see city, state and country you might think of an address but if you see state alone you probably would not. It's better to use addressCity, addressState. A better solution is to create an address model.

**Don't add gratuitous context**

Don't add the prefix HRL (Happy Puppies Rule) to your new Puppy app's classes. HPLUser is not necessary in most modern programming languages (sorry Objective-C).

**Don't be afraid**

Don't be afraid to rename things where it makes sense. Developers on your project should be happy that you have improved the code.

**Functions**

The first rule of functions is that they should be small. But how small? They should do one thing. But what does one thing  mean?

A function should include code that is only one level of abstraction below it's stated intent. We can also say: if part of a function can be refactored into a separate function with a name that is not a restatement of what that function already is named, then it is doing one more than thing.

**Step down rule**

We want the code to read like a newspaper. We have the headline interfaces at the top and each method below descends into the next layers of abstraction.

**Switch statements**

These often violate SRP because, by nature, they act on multiple scenarios. Try to keep these to a minimum by using polymorphism to create the objects using the switch statement.
