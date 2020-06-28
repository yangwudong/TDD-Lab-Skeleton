Feature: String Calculator advanced version - REQ #5
  As a user,
  I want to forbidden all negative numbers during string calculation,
  so that I can avoid the offsetting happen.

  ————————————————————————————————————————————————————————————
  5. Calling Add with a negative number will throw an exception “negatives not allowed” - and the negative that was passed.
  if there are multiple negatives, show all of them in the exception message.

  ————————————————————————————————————————————————————————————

  Scenario Outline: 1 - Throw an exception with all negative numbers when input numbers have one or more negative numbers during String Calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then throw an IllegalArgumentException exception and showing the negative number error message with the wrong numbers - "<invalidNumbers>"
    Examples:
      | numbers             | invalidNumbers      |
      | //;\n1;-2;3;4     | -2                  |
      | //*\n-4*3*2*-1    | -4, -1              |
      | -110,-220\n-330     | -110, -220, -330    |
      | -999                | -999                |

