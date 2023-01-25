# Dodger

A unit test which has lots of tests for minor (and presumably easy to test) side effects, but never tests the core desired behavior. Sometimes you may find this in database access related tests, where a method is called, then the test selects from the database and runs assertions against the result.

Ref: https://www.yegor256.com/2018/12/11/unit-testing-anti-patterns.html
