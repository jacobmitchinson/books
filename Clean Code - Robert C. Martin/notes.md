The idea behind clean code is that maintenance is just as important as production e.g. Total Productive Maintenance or TMP.

Seiri - knowing where things are.

Seiton - tidiness.

Seiso - cleaning.

Seiketsu - standarization.

Shutsuke - discipline.

Road to craftsmanship - knowledge and work.

**It’s your job to defend the code with equal passion. **

**
**

What if you were a doctor and the patient said stop washing your hands, I need you to work faster?

You will not make the deadline by making a mess. You need to write clean code to write fast.

We are authors. Remember the next time you are writing code that you are writing for it to be read.

Leave the campground cleaner than you found it.

**Meaningful Names**

**
**

**VARIABLES**

**
**

**USE INTENTION REVEALING NAMES **

**
**

A variable, function or class should tell you why it exists, what it does, and how it is used.

We want to reveal the intention behind what we have done rather than forcing our readers to work it out for themselves.

**DON’T USE SIMILAR SOUNDING NAMES**

**
**

Avoid using names that look or sound the same. With code completion, we don’t want a developer to use the wrong function or variable.

**
**

****

****

**BE EXPLICIT**

**
**

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

**
**

Don’t leave false clues that hide the meaning of the code. Don’t use variables that look very similar.

**Avoid meaningless distinctions**

**
**

Don’t create a Product class and then create ProductData or ProductInfo - it does not help us!

Make names so that the reader can tell the difference!!

**Make searchable variables**

**
**

Avoid mental mapping - e.g. don’t map variables in your head and then expect other people to understand them.

Class names should be nouns not verbs.

**METHODS**

**
**

These should have verb or verb phrases names like postPayment, deletePage, or save.

Pick one word per concept e.g. fetch, retrieve, get..

Add meaningful context. If you see city, state and country you might think of an address but if you see state alone you probably would not. It's better to use addrCity, addrState. A better solution is to create an address model.
