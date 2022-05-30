Feature: View calculation history
  As a math student
  I want to see what calculations I have already done
  So that I can review the work I do each session

  Background:
    Given Matthieu is on the calculator page

  Rule: The list should intialy be empty
  Scenario: The one where no calculatiion have been made yet
    Then the history is empty



  Rule: Each compelted calculation should be added to the history
  Example: The one where Matt completes a calculation
    When he performs the following operation:
      | first number | math operation | second number | result |
      | 1            | +              | 2             | 3      |
    Then he should see the following in the history:
      | Expression | Result |
      | 1 + 2      | 3      |



  Rule: Calculations should be shown in reverse chronological order
    Example: The one where Matt has already performed 3 calculations
      When he performs the following operation:
        | first number | math operation | second number | result |
        | 1            | +              | 2             | 3      |
        | 12           | +              | 34            | 46     |
        | 12           | -              | 5             | 7      |
      Then he should see the following in the history:
        | Expression | Result |
        | 1 + 2      | 3      |
        | 12 + 34    | 46     |
        | 12 - 5     | 7      |