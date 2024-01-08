> **Operator overloading**
> >the ability to put
your own code behind built-in operators like + and *

> **Defining Operators in Ruby**
> > Ruby translates every expression involving programmer-definable
operators into an equivalent expression where the operators are replaced with method
calls.
> - sum = first + second 
> - equivalent to:
> - sum = first.+(second)

> **A Sampling of Operators**
> > - Ruby allows you to define
    more than twenty operators for your classes
> > - Although you can override ! and make it do anything you want,
      you can’t override the nearly synonymous not . The not operator, along with and , or ,
      ||, and && , are built in to Ruby, and their behavior is fixed.
> > - The + and – operators are interesting in a different way: They can be both binary and unary. It’s easy to see the dual role of + and - with numeric expressions. In the
      expression -(2+6) , the minus sign is a unary operator that simply changes the sign of
      the final result while the plus sign is a binary operator that adds the numbers together.
> > -  The plain old - method defines the
       binary operator while -@ defines the unary one.
> > - Ruby programmers can also define a couple of methods that will make their
      objects look like arrays or hashes: [] and []= . Although technically these bracketed
      methods are **not** operators,the Ruby parser sprinkles some very operator-like syntac-
      tic sugar on them: When you say foo[4] you are really calling the [] method on foo ,
      passing in four as an argument. Similarly, when you say foo[4] = 99, you are actu-
      ally calling the []= method on foo, passing in four and ninety-nine.

> **Operating Across Classes**

> **Staying Out of Trouble**

> **In the Wild**

> **Wrapping Up**