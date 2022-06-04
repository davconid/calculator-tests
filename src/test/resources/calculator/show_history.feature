Feature: Show history

  As a primary school maths studentI want to see what calculations I have already done
  So that I can review the work I do each session

  Background:
    Given Matt a maths student has opened the calculator

  Scenario: Each completed calculation should appear in the calculation history
    When Matt performs the following calculation:
      | Left Operand | Operator | Right Operand |
      | 10           | +        | 20            |
    Then the calculation history should contain:
      | Expression | Result |
      | 10 + 20    | 30     |

  Scenario: Calculations should be shown in reverse chronological order
    Given Matt has performed the following calculations:
      | Left Operand | Operator | Right Operand |
      | 1            | +        | 2             |
      | 2            | -        | 4             |
      | 3            | *        | 6             |
    When Matt performs the following calculation:
      | Left Operand | Operator | Right Operand |
      | 4            | /        | 2             |
    Then the calculation history should contain:
      | Expression | Result |
      | 4 / 2      | 2      |
      | 3 * 6      | 18     |
      | 2 - 4      | -2     |
      | 1 + 2      | 3      |



#################################
###     My feature file       ###
#################################

#Feature: View calculation history
#  As a math student
#  I want to see what calculations I have already done
#  So that I can review the work I do each session
#
#  Background:
#    Given Matthieu is on the calculator page
#
#  Rule: The list should intialy be empty
#  Scenario: The one where no calculatiion have been made yet
#    Then the history is empty
#
#
#
#  Rule: Each compelted calculation should be added to the history
#  Example: The one where Matt completes a calculation
#    When he performs the following operation:
#      | first number | math operation | second number | result |
#      | 1            | +              | 2             | 3      |
#    Then he should see the following in the history:
#      | Expression | Result |
#      | 1 + 2      | 3      |
#
#
#
#  Rule: Calculations should be shown in reverse chronological order
#    Example: The one where Matt has already performed 3 calculations
#      When he performs the following operation:
#        | first number | math operation | second number | result |
#        | 1            | +              | 2             | 3      |
#        | 12           | +              | 34            | 46     |
#        | 12           | -              | 5             | 7      |
#      Then he should see the following in the history:
#        | Expression | Result |
#        | 1 + 2      | 3      |
#        | 12 + 34    | 46     |
#        | 12 - 5     | 7      |