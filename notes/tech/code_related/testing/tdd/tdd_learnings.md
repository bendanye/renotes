# TDD Learnings

Attended a workshop in 2022 and this is the following that i have learnt.

* Test name tied to domain name
* Use builder.withAmount(100) instead of builder.withAmount(amount)
* Is it necessary to have “calculate” in the method name?
  * Calculate vs get
* Consistent over form, follow team naming convention
* Every test is specification
* Every bug is missing test case
* Tests should be deterministic
* Can use loan to get accountId, amount for createLoan instead of create new variable for each value
* Can randomise data inside builder so that will not be fixed for one value
* findBy instead of findAllByAccount
* Keep parameter order consistent
* If use MASInterestRateProvider instead ExternalInterestRateProvider, people might think is there other kind of provider
* Mock when want to control the outcome
  * Mock on behaviour, not on state
* End to End is the tool we use to run our acceptance test
* Acceptance Test is the development phase, where you test the application like a user would. One way to automate it is to use end to end test.
* Write a failing acceptance test first then write unit test
* Do not need to write integration test for external API, should be done on end to end tests
* Acceptance tests run from client POV and can be written by non-developers, whereas integration tests are written by devs and covered more edge cases.
* Write assert first followered by act then arrange
* If not using mock, is integration test