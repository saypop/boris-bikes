# BORIS BIKES #

## LOCATION ##

https://github.com/saypop/boris-bikes
Taken from https://github.com/makersacademy/course/tree/master/boris_bikes

## DESCRIPTION ##

This is a coding exercise we are doing in our first week at Makers Academy.
We are going to simulate the releasing returning of bikes from docking stations.

## FRAMEWORK USED ##

Ruby

## HOW TO USE ##
From the command line, enter:
```script
ruby ./boris-bikes/boris-bikes.rb
```

## STEPS ##
1. The first step of this exercise was to create this directory, initialise a git, create this readme and push to github.
2. Next we translated some user stories into functional representations over here: https://docs.google.com/spreadsheets/d/1Xjil_MCMeRIaGoWcDQp8bMnEl_8EWXU6wqdAhFShFig/edit?usp=sharing
3. We defined a feature test in irb and built an understanding of what a stack trace is. We attempted to created a new instance of a docking station using the command DockingStation.new but obviously this failed since we have not yet defined the class.
4. We learned how to use a stack trace to debug errors, in this case we found a "NameError" which told us that the constant we were calling had not been initialised. Which happened here .rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'. To solve this we will need to define the class we are trying to create an instance of.
5. We learned a bit more about the RSpec testing framework and TDD. We initiated RSpec and set a spec file up to describe our class. The error we get when run rspec told us that we have 0 examples which makes sense because our description in the spec file is empty.
6. Here we learned how to pass a unit test (RSPec) and to use the require command which tells a program to load another. We still see the same message that 0 examples ran because our RSpec test is empty.
7. Next we learned how to move between feature and unit tests. In our unit test we didn't get the same error we did before when trying to create a new docking station because we wrote the class in 6. But now we get an 'undefined method error' when we try to run release_bike method because that doesn't exist yet.
8. We've learned how to write an RSpec using 'it' and test that an object responds to a Message. When we did that our test failed but after creating the method we passed.
9. This was a big step. We ran a feature test to see what would  happen if we try to see that if the bike we release is working. We got an error saying the method was undefined for the nil class because we created a nil object when we ran release_bike because the method is empty. So we set up a unit test for this and in order to make it pass we had to use require in the spec file, create a class file and add a method to the class.
10. Here we learned how to use objects within other objects, use RSpec 'predicate' syntax and pass a feature test. We were failing our feature test because our release_bike method was returning nil when we need it to return a bike object. Also, learned that in RSpec there is a command 'is_xyz' which test if a method called 'xyz' is true.
11. In this step we learned about instance variables. We covered how to write RSpec tests that require arguments, passing instance variables as arguments, sets attributes in objects using instance variables and use attr_reader.
12. We wrote RSpec errors that expect errors in this step, learned how to use fail and raise to generate an error and learned what 'guard conditions' are and how to use them to stop your programmes doing the impossible. We also learned when to use nested describes in RSpec tests.
13. This is very similar to what we did in 12, except we're applying a ceiling instead of a floor.
14. In this step we learned how to wrap a collection in a class and set initial atribute values using initialize.
15. We learned how to use the single responsibility principle and refactoring.
16. Learned how to use a constant and getting rid of magic numbers. We also learned about namespace operators.
17. In this step we figured out how to initialise an attribute value and set a default initialisation value.
