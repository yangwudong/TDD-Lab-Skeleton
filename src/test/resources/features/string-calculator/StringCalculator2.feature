Feature: String Calculator standard version - REQ #2
  As a user,
  I want the String Calculator to support an unknown amount of numbers,
  so that I don't need to execute many times.

  ————————————————————————————————————————————————————————————
  2. Allow the Add method to handle an unknown amount of numbers

  Scenario Outline: 1 - Return the sum result for all input numbers which could be separated by commas and the amount could be unknown when I use string calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers                               | expectedSumResult |
      | 1,2,3,4,5,6,7,8,9,10                  | 55                |
      | 110,220,330,1,2,3,4,5,6,7,8,9,10      | 715               |
