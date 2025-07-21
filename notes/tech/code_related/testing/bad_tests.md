# bad tests

Tests that don't have assertions.
Having assertions that always pass, regardless of the code implementation it is trying to test.
Having assertions inside of async functions but not waiting for the function to complete.
Bad naming of tests. Not including the right context of what is being tested / expected.
Having complex logic for calculating expected values (inside test code) instead of using plain values directly.
Sharing a changing state variable across multiple tests.
Misconfigured setup or teardown logic.
Failure to group or classify tests in an easy-to-follow sequence.
- Temporal coupling of tests, i.e. they need to be executed in a specific order.
- tests have side effects that affect the future runs
- too many assertions in a test
- if the setup is complicated, perhaps the subject has too many dependencies (some even transitive)
- mocks misconfigured as stubs
