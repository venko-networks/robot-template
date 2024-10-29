*** Settings ***
Documentation    The purpose of this file is to gather keywords commonly used in the Setup/Teardown of suites or tests.
Resource       ../commom/constants.resource

*** Keywords ***
My Suite Setup Keyword
    Log    Instruction 1
    Log    Instruction 2
    Log    Instruction N

My Suite Teardown keyword
    Log    Instruction 1
    Log    Instruction 2
    Log    Instruction N

My Test Case Setup
    Log    Instruction 1
    Log    Instruction 2
    Log    Instruction N

My Test Case Teardown
    Log    Instruction 1
    Log    Instruction 2
    Log    Instruction N