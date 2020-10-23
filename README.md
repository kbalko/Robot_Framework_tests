Basic Test Cases of Web-application
===================================
app: https://microflaskapp.herokuapp.com (you can check that project in my other repo)

Tech:
Robot Framework
Selenium Library

- To start install dependencies


 manually:

    $ pip install robotframework
    $ pip install robotframework-seleniumlibrary

 or just use target from Makefile:

    $ make deps

 install gecodriver

- Start tests

   with visible browser window:

      $make test_browser

   or without browser window:

      $make test_headless


After tests  output, log and report will be store in Outputs directory.

- CLI output:


          ==============================================================================
          Test :: Testing application functionality.                                    
          ==============================================================================
          Test 1 Succcesful Logging with valid login and password               | PASS |
          ------------------------------------------------------------------------------
          Test 2 Fail logging attempt with valid login and invalid password     | PASS |
          ------------------------------------------------------------------------------
          Test 3 Fail logging attempt with not registred login and valid pas... | PASS |
          ------------------------------------------------------------------------------
          Test 4 Fail logging attempt with input no login and no password       | PASS |
          ------------------------------------------------------------------------------
          Test 5 Fail user registration attempt with taken login                | PASS |
          ------------------------------------------------------------------------------
          Test 6 Fail user registration attempt with too short login            | PASS |
          ------------------------------------------------------------------------------
          Test 7 Fail user registration attempt with too long login             | PASS |
          ------------------------------------------------------------------------------
          Test 8 Fail user registration attempt with invalid login (invalid ... | PASS |
          ------------------------------------------------------------------------------
          Test 9 Fail user registration attempt with invalid email              | PASS |
          ------------------------------------------------------------------------------
          Test 10 Fail user registration attempt with taken email               | PASS |
          ------------------------------------------------------------------------------
          Test 11 Fail user registration attempt - fail confirmation password   | PASS |
          ------------------------------------------------------------------------------
          Test 12 Check if navbar '/explore' direction works                    | PASS |
          ------------------------------------------------------------------------------
          Test 13 Check if navbar '/user/<username>' direction works            | PASS |
          ------------------------------------------------------------------------------
          Test 14 Check if navbar 'logout' direction works                      | PASS |
          ------------------------------------------------------------------------------
          Test 15 Check if '/edit_profile' direction and 'save'/'back' butto... | PASS |
          ------------------------------------------------------------------------------
          Test 16 Check if 'follow'/'unfollow' button works                     | PASS |
          ------------------------------------------------------------------------------
          Test 17 Check if user can add post                                    | PASS |
          ------------------------------------------------------------------------------
          Test 18 Fail attepmt to reset password with invalid email             | PASS |
          ------------------------------------------------------------------------------
          Test 19 Check if navbar '/devops' direction works                     | PASS |
          ------------------------------------------------------------------------------
          Test 20 Check if textlink '/devops' direction works                   | PASS |
          ------------------------------------------------------------------------------
          Test :: Testing application functionality.                            | PASS |
          20 critical tests, 20 passed, 0 failed
          20 tests total, 20 passed, 0 failed
          ================================================================================
