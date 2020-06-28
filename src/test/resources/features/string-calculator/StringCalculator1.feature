Feature: String Calculator basic version - REQ #1
  As a user,
  I want to use a String Calculator to sum all my input numbers,
  so that I don't need to sum by myself.

  ————————————————————————————————————————————————————————————

  1. Create a simple String calculator with a method signature
  ———————————————
  int Add(string numbers)
  ———————————————

  The method can take up to two numbers, separated by commas, and will return their sum.
  for example “” or “1” or “1,2” as inputs.
  (for an empty string it will return 0)

  Scenario: 1 - Return 0 when input is null when I use string calculation.
    Given a null as input
    When using String Calculator calculate
    Then return 0 as expected

  Scenario: 2 - Return 0 when input is empty when I use string calculation.
    Given a numbers string "" as input
    When using String Calculator calculate
    Then return 0 as expected

  Scenario Outline: 3 - Just return the input number as sum result when it is only one input.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers | expectedSumResult |
      | 1       | 1                 |
      | 2       | 2                 |
      | 5       | 5                 |
      | 3000    | 3000              |

  Scenario Outline: 4 - Return the sum result for all input numbers which could be separated by commas and the amount is less than 3 when I use string calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers | expectedSumResult |
      | 1,2     | 3                 |
      | 4,5     | 9                 |
      | 110,119 | 229               |

  Scenario Outline: 5 - Throw an IllegalArgumentException when I use more than two numbers as input for string calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then throw an IllegalArgumentException exception and showing the parameters exceed error message
    Examples:
      | numbers     |
      | 1,2,3       |
      | 4,2,3,5,6,1 |

  Scenario Outline: 6 - Throw an IllegalArgumentException when I use non-numeric as input for string calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then throw an IllegalArgumentException exception and showing the non-numeric error message
    Examples:
      | numbers |
      | 1,a     |
      | abcd,1e |