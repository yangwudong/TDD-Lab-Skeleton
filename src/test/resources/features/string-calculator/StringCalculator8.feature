Feature: String Calculator advanced version - REQ #8
  As a user,
  I want to use multiple selected delimiters for input numbers,
  so that I can choose delimiters based on different cases.

  ————————————————————————————————————————————————————————————
  8. Allow multiple delimiters like this: “//[delim1][delim2]\n” for example “//[*][%]\n1*2%3” should return 6.

  ————————————————————————————————————————————————————————————

  Scenario Outline: 1 - Use multiple selected delimiters during String Calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers                         | expectedSumResult   |
      | //[;][*]\n1*2;3;4               | 10                  |
      | //[$][@][)]\n4)3)2@1            | 10                  |

