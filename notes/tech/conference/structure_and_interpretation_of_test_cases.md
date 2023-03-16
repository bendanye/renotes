# Structure and interpretation of test cases

Still testing != Done

Tests should give some of form description about the function or System under test

Don't duplicate information in the tests

Order of test cases are Important, for reading

"Should" is not helpful or meaningful?

Good test method naming can show the reader the opposite of the test if is failed

"A year divisible by 100 but not 400 is not a leap year" if failed test means is a leap year

If the tests are getting repeated, can abstract to a class. For example a year is a leap year and a year is not a leap year classes

Watch out for accumulated state/value especially from test coverage angle as it may misled yourself. Best is do not accumulated state and return result immediately 

Structure+ interpretation= program 

Credit: https://youtu.be/MWsk1h8pv2Q
