*** Settings ***
Documentation   Testing application functionality.
Metadata        Version 1.0
Metadata        Author  kbalko

Resource        resources.robot

Library   SeleniumLibrary

Suite Teardown   Close All Browsers

*** Test Cases ***

Test 1 Succcesful Logging with valid login and password
   Go to website
   Logging with valid credentials
   Check if user is log in
   Close browser

Test 2 Fail logging attempt with valid login and invalid password
   Go to website
   Entering login: valid, taken
   Entering invalid password
   Click submit button
   Check if user is NOT log in
   Close browser

Test 3 Fail logging attempt with not registred login and valid password
   Go to website
   Entering login: valid, free
   Entering valid password
   Click submit button
   Check if user is NOT log in
   Close browser

Test 4 Fail logging attempt with no input login and password
   Go to website
   Click submit button
   Page Should Not Contain   ${logging_sucess}
   Close browser

Test 5 Fail user registration attepmt with taken login
   Go to website
   Go to registration form
   Entering login: valid, taken
   Entering email: valid, free
   Entering valid password
   Confirming password with valid password
   Click submit button
   Page Should Contain   ${login_is_taken}
   Close browser

Test 6 Fail user registration attepmt with too short login
   Go to website
   Go to registration form
   Entering login: too short login
   Entering email: valid, free
   Entering valid password
   Confirming password with valid password
   Click submit button
   Page Should Contain   ${login_is_short}
   Close browser


Test 7 Fail user registration attepmt with too long login
   Go to website
   Go to registration form
   Entering login: too long login
   Entering email: valid, free
   Entering valid password
   Confirming password with valid password
   Click submit button
   Page Should Contain   ${login_is_long}
   Close browser

Test 8 Fail user registration attepmt with invalid login (invalid characters)
   Go to website
   Go to registration form
   Entering login: invalid characters
   Entering email: valid, free
   Entering valid password
   Confirming password with valid password
   Click submit button
   Page Should Contain   ${login_is_invalid}
   Close browser

Test 9 Fail user registration attepmt with invalid email
   Go to website
   Go to registration form
   Entering login: valid, free
   Entering email: invalid
   Entering valid password
   Confirming password with valid password
   Click submit button
   Page Should Contain   ${email_is_invalid}
   Close browser

Test 10 Fail user registration attepmt with taken email
   Go to website
   Go to registration form
   Entering login: valid, free
   Entering email: valid, taken
   Entering valid password
   Confirming password with valid password
   Click submit button
   Page Should Contain   ${email_is_taken}
   Close browser

Test 11 Fail user registration attepmt - fail confirmation password
   Go to website
   Go to registration form
   Entering login: valid, free
   Entering email: valid, free
   Entering valid password
   Confirming password with different password
   Click submit button
   Page Should Contain   ${different_pass}
   Close browser

Test 12 Check if navbar '/explore' direction works
   Go to website
   Logging with valid credentials
   Check if user is log in
   Go to /explore page
   Back to index page
   Close browser

Test 13 Check if navbar '/user/<username>' direction works
   Go to website
   Logging with valid credentials
   Check if user is log in
   Go to /user page
   Back to index page
   Close Browser

Test 14 Check if navbar 'logout' direction works
   Go to website
   Logging with valid credentials
   Check if user is log in
   Click in '/logout' direction
   Close Browser

Test 15 Check if '/edit_profile' direction and 'save'/'back' buttons works
   Go to website
   Logging with valid credentials
   Check if user is log in
   Go to /user page
   Go to /edit_profile page
   Click submit button
   Page Should Contain    ${save_change}
   Click button           ${back_button}
   Page Should Contain    ${user_page}
   Close Browser

Test 16 Check if 'follow'/'unfollow' button works
   Go to website
   Logging with valid credentials
   Check if user is log in
   Go to                  ${other_user_page}
   Click submit button
   Page Should Contain    ${follow}
   Click submit button
   Page Should Contain    ${unfollow}
   Close Browser

Test 17 Check if user can add post
   Go to website
   Logging with valid credentials
   Check if user is log in
   Input text in text area
   Click submit button
   Page Should Contain    ${afer_post}
   Page Should Contain    ${test_text}
   Close Browser

Test 18 Fail attepmt to reset password with invalid email
   Go to website
   Go to /reset_password_request
   Wait Until Element Is Visible    ${selector_email}
   Entering email: invalid
   Click submit button
   Page Should Contain              ${email_is_invalid}
   Close Browser

Test 19 Check if navbar '/devops' direction works
   Go to website
   Go to /devops page by navbar
   Page Should Contain              ${devops_page}
   Click submit button
   Page Should Not Contain          ${devops_page}
   Close Browser

Test 20 Check if textlink '/devops' direction works
   Go to website
   Go to /devops page by link
   Page Should Contain              ${devops_page}
   Click submit button
   Page Should Not Contain          ${devops_page}
