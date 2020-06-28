Feature: String Calculator standard version - REQ #3
  As a user,
  I want to use the line separator - "\n" to split my input numbers for using the String Calculator,
  so that I can easily read my input numbers.

  ————————————————————————————————————————————————————————————
  3. Allow the Add method to handle new lines between numbers (instead of commas).
  the following input is ok: “1\n2,3” (will equal 6)
  the following input is NOT ok: “1,\n” (not need to prove it - just clarifying)

  Scenario Outline: 1 - Return the sum result for all input numbers which could be separated by both "\n" - line separator and commas.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers                                     | expectedSumResult |
      | 1,2,3\n4,5,6,7,8,9,10                       | 55                |
      | 110\n220\n330,1,2,3,4,5,6,7,8,9\n10         | 715               |
      | 110\n220                                    | 330               |

