 Feature: Perform calculation
    As a math student
    I want to perform various calculations
    So that I can practice my math skills

    Background:
      Given Matthieu is on the calculator page


    Scenario Outline: Valid mathematical operation should give the good result
      When he performs the operation with <first number>, "<math operation>" and <second number>
      Then he should see "<result>" as a result

      Examples: Perform additions and substractions
        | first number | math operation | second number | result |
        | 1            | +              | 2             | 3      |
        | 12           | +              | 34            | 46     |
        | 12           | -              | 5             | 7      |
        | 12           | -              | 34            | -22    |
        | 1.9          | +              | 1.9           | 3.8    |

      Examples: Perform multiplications and divisions
        | first number | math operation | second number | result |
        | 2            | *              | 4             | 8      |
        | 10           | /              | 4             | 2.5    |
        | 2            | *              | 2.5           | 5      |


    Scenario Outline: Invalid mathematical operation should give a particular result
      When he performs the operation with <first number>, "<math operation>" and <second number>
      Then he should see "<result>" as a result

      Examples: Invalid inputs reported as NaN
        | first number | math operation | second number | result |
        | abc          | +              | 123           | NaN    |
        | 456          | /              | ABC           | Nan    |
        | !@           | +              | $%            | Nan    |

      Examples: Division by zero
        | first number | math operation | second number | result   |
        | 2            | /              | 0             | Infinity |