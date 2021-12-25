# Introduction

[prolog](https://en.wikipedia.org/wiki/Prolog) is a logic programming language, it suits best for solving problems like ['Einstein puzzle'](https://udel.edu/~os/riddle.html)

[swi-prolog](https://www.swi-prolog.org/) is a implementation of prolog.

On MacOS, simply run `brew install swi-prolog` to install it and its dependencies.

# Goal for this repo

I'm trying to solve following puzzle, using prolog.

> 2 <= X, Y <=50 are two integers. S and P are two mathematicians (and consequently perfect logicians); S knows the sum X + Y and P knows the product X × Y. Both S and P know all the information in this paragraph.
>
>The following conversation occurs (both participants are telling the truth):
> - S says "P does not know X and Y."
> - P says "Correct, I do not know X and Y. How about you?"
> - S says "Now I know X and Y."
> - P says "I do, too"
> 
> What are X and Y? 

<details>
  <summary>Hint 1</summary>

  The sum and product uniquely determines X and Y.
</details>


<details>
  <summary>Hint 2</summary>

  In the first statement, S can't be sure that P doesn't know if:
  - The sum can be represented as sum of two primes
  - The sum is greater than 29

  So the possible sums are 11, 17, 23, 27, 29 
</details>

<details>
  <summary>Hint 3</summary>

  In the second statement, P can figure out X and Y if:
  - The product can be *uniquely* represented as A*B where A+B is 11, 17, 23, 27 or 29.

  This rules out few from 11, 17, 23, 27, 29
</details>

<details>
  <summary>Answer</summary>
  5,6
</details>

# Conclusion

Feels like I just did a functional programming, not a logic programming. :(