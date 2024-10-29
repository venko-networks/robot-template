*** Settings ***
Documentation    Robot Framework test scripts. Each file here represents a suite targeting specific scenarios.
Resource    ../hooks/HOOKS.resource
Resource    ../commom/constants.resource
Suite Setup       My Suite Setup Keyword
Suite Teardown    My Suite Teardown keyword

*** Test Cases ***
Test case 01: [Test Case Name]
    [Documentation]    Test case documentation
    [Tags]     MyTag
    [Setup]    My Test Case Setup
    [Teardown]    My Test Case Teardown
    Given my given keyword
    When my when keyword
    Then my then keyword


*** Keywords ***

my given keyword
    Log    Step 1
    Log    Step 2
    Log    Step N

my when keyword
    Log    Step 1
    Log    Step 2
    Log    Step N

my then keyword
    Log    Step 1
    Log    Step 2
    Log    Step N