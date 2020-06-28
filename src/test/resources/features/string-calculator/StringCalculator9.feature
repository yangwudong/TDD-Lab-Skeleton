Feature: String Calculator advanced version - REQ #9
  As a user,
  I want to use multiple selected delimiters with unlimited length for input numbers,
  so that I can choose delimiters based on different cases.

  ————————————————————————————————————————————————————————————
  9. Make sure you can also handle multiple delimiters with length longer than one char

  ————————————————————————————————————————————————————————————

  Scenario Outline: 1 - Use multiple selected delimiters with unlimited length during String Calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers                                  | expectedSumResult   |
      | //[;;][**@*]\n1**@*2;;3;;4               | 10                  |
      | //[$$$$$$$$$][@][)]\n4)3)2@1             | 10                  |

