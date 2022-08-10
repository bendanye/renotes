# 4 Pillars of Unit Testing

## Protection against bugs or protection against regressions

It is how likely your test to catch a bug if you introduce that bug in your code base. So that’s basically a function of how much of your code your test executes.

The larger that slice of code, the better (the) test executes it, the higher the probability that your test will find a bug in that code base, in that slice of code. Of course, given that your test has all the required assertions.

## Resilience to refactoring

The most controversial, or the least I would say understood property of a good unit test. And that is how likely your test to fail, to turn red if you refactor the code that this test covers. So another way to describe what this metric is how likely your tests to raise false alarms or false positives. The false alarm is a situation where your test fails, but the underlying code works fine.

## Fast Feedback

It’s about how fast your tests execute. This metric is important because the faster your tests execute, the quicker you get the feedback if your code stops working properly. This saves you time moving in the wrong direction.

## Maintainability

It’s a function of how easy it is to read your tests and understand them, which itself is a function of basically how large your test is. Because the larger your tests, the harder it is to understand that test.

Ref: https://techleadjournal.dev/episodes/58/
