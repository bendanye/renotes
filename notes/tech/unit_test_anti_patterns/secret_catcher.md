# Secret Catcher

A test that at first glance appears to be doing no testing due to the absence of assertions, but as they say, “the devil is in the details.” The test is really relying on an exception to be thrown when a mishap occurs, and is expecting the testing framework to capture the exception and report it to the user as a failure.

Ref: https://www.yegor256.com/2018/12/11/unit-testing-anti-patterns.html
