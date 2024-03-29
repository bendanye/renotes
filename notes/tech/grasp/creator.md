# Creator

The creation of objects is one of the most common activities in an object-oriented system. Which class is responsible for creating objects is a fundamental property of the relationship between objects of particular classes.

Problem: Who creates object A?
Solution: In general, Assign class B the responsibility to create object A if one, or preferably more, of the following apply:

* Instances of B contain or compositely aggregate instances of A
* Instances of B record instances of A
* Instances of B closely use instances of A
* Instances of B have the initializing information for instances of A and pass it on creation.

Ref: https://en.wikipedia.org/wiki/GRASP_(object-oriented_design)#Creator
