Feature: User registration on Basketball England

  Scenario: Successful user registration
    Given I am on the registration page using browser "firefox"
    When I fill all inputs with valid data
    And I accept the terms and conditions
    And I submit the form
    Then Account should be created successfully

  Scenario:Registration fails when last name is missing
    Given I am on the registration page using browser "chrome"
    When I fill in valid data without last name
    And I accept the terms and conditions
    And  I submit the form
    Then An error message for missing last name should be displayed

  Scenario: Registration fails when passwords do not match
    Given I am on the registration page using browser "firefox"
    When I fill in valid data with mismatched passwords
    And I accept the terms and conditions
    And I submit the form
    Then An error message for mismatched passwords should be displayed

  Scenario: Registration fails when terms and conditions are not accepted
    Given I am on the registration page using browser "chrome"
    When I fill all inputs with valid data
    And I do not accept the terms and conditions
    And I submit the form
    Then An error message for terms and conditions should be displayed



