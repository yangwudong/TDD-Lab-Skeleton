Feature: String Calculator advanced version - REQ #7
  As a user,
  I want to use an unlimited length of delimiter for input numbers,
  so that I can choose delimiters by my preference.

  ————————————————————————————————————————————————————————————
  7. Delimiters can be of any length with the following format: “//[delimiter]\n” for example: “//[***]\n1***2***3” should return 6

  ————————————————————————————————————————————————————————————

  Scenario Outline: 1 - Use an unlimited length delimiter during String Calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers                         | expectedSumResult   |
      | //[;;;]\n1;;;2;;;3;;;4            | 10                  |
      | //[****]\n4****3****2****1        | 10                  |

