Basic Test Cases of Web-application
-----------------------------------
app: https://dry-brushlands-36461.herokuapp.com/  (you can check that in my other repo)

Tech:
Robot Framework
Selenium Librar

To start:

install dependencies

 manually:

   $ pip install robotframework
   $ pip install robotframework-seleniumlibrary

or just use target from Makefile:

   $ make devops

Install gecodriver

Start tests with visible browser window:

  $make test_browser

of without browser window:

  $make test_headless

You can see output, log and report in Outputs directory

CLI output:

==============================================================================
Test :: Testing application functionality.                                    
==============================================================================
Test 1 Succcesful Logging with valid login and password               | PASS |
------------------------------------------------------------------------------
Test 2 Fail logging attempt with valid login and invalid password     | PASS |
------------------------------------------------------------------------------
Test 3 Fail logging attempt with not registred login and valid pas... | PASS |
------------------------------------------------------------------------------
Test 4 Fail logging attempt with no input login and password          | PASS |
------------------------------------------------------------------------------
Test 5 Fail user registration attepmt with taken login                | PASS |
------------------------------------------------------------------------------
Test 6 Fail user registration attepmt with invalid email              | PASS |
------------------------------------------------------------------------------
Test 7 Fail user registration attepmt with taken email                | PASS |
------------------------------------------------------------------------------
Test 8 Fail user registration attepmt - fail confirmation password    | PASS |
------------------------------------------------------------------------------
Test 9 Check if navbar '/explore' direction works                     | PASS |
------------------------------------------------------------------------------
Test 10 Check if navbar '/user/<username>' direction works            | PASS |
------------------------------------------------------------------------------
Test 11 Check if navbar 'logout' direction works                      | PASS |
------------------------------------------------------------------------------
Test 12 Check if '/edit_profile' direction and 'save'/'back' butto... | PASS |
------------------------------------------------------------------------------
Test 13 Check if 'follow'/'unfollow' button works                     | PASS |
------------------------------------------------------------------------------
Test 14 Check if user can add post                                    | PASS |
------------------------------------------------------------------------------
Test 15 Fail attepmt to reset password with invalid email             | PASS |
------------------------------------------------------------------------------
Test 16 Check if navbar '/devops' direction works                     | PASS |
------------------------------------------------------------------------------
Test 17 Check if textlink '/devops' direction works                   | PASS |
------------------------------------------------------------------------------
Test :: Testing application functionality.                            | PASS |
17 critical tests, 17 passed, 0 failed
17 tests total, 17 passed, 0 failed
==============================================================================
