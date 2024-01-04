How exactly should we break our classes up into those methods?
- Most Ruby
  programmers favor very short methods, methods that stick to doing one thing and
  doing it well.
- Breaking your code up into many short, single-purpose
  methods not only plays to the strengths of the Ruby programming language but also
  makes your whole application more testable.

**Compressing Specifications**

**Composing Methods for Humans**

> The composed method technique advocates dividing your class up into methods that have three characteristics.

- **First**, each method should do a single thing—focus on solving a single aspect of the problem. By concentrating on one
  thing, your methods are not only easier to write, they are also easier to understand.
- **Second**, each method needs to operate at a single conceptual level: Simply put,
  don’t mix high-level logic with the nitty-gritty details. A method that implements the
  business logic around, say, currency conversions, should not suddenly veer off into the
  details of how the various accounts are stored in a database.
- **Finally**, each method needs to have a name that reflects its purpose. Nothing new
  here; we have all heard endless lectures about picking good method names. The time
  to listen to all of that haranguing is when you are creating lots of little methods that
  you are trying to pull together into a functional whole. Done right, the method names
  guide you through the logic of the code.

**Composing Ruby Methods**
> By decomposing your class into a lot of small methods, you provide a much larger
number of sockets into which you can plug your tests.

**One Way Out?**
> Every method should have exactly one way out,
so that all of the logic converges at the bottom for a single return. 

**Staying Out of Trouble**
> The key to preventing your composed methods from turning on you is to remember
that every method should have two things going for it.
-  First, it should be short. 
- And
second, it should be coherent.
- In plain English, your method should be compact but
  it should also do something.

**In the Wild**

