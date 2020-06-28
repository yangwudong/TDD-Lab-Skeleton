Feature: String Calculator standard version - REQ #4
  As a user,
  I want to use a provided delimiter at beginning of input for string calculation,
  so that I can use whatever delimiters as my preference.

  ————————————————————————————————————————————————————————————
  4. Support different delimiters
  to change a delimiter, the beginning of the string will contain a separate line that looks like this: “//[delimiter]\n[numbers…]” for example “//;\n1;2” should return three where the default delimiter is ‘;’ .
  the first line is optional. all existing scenarios should still be supported
  ————————————————————————————————

  Scenario Outline: 1 - Return the sum result for all input numbers which could be a provided delimiter, or "\n" - line separator, or commas.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers                                       | expectedSumResult |
      | //;\n1;2;3;4                                | 10                |
      | //*\n4*3*2*1                                | 10                |
      | //*@\n3*@4*@2*@1                            | 10                |
      | 110,220\n330                                  | 660               |

