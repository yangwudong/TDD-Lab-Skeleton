Feature: String Calculator advanced version - REQ #6
  As a user,
  I want to set 1000 as max number for input during string calculation,
  so that I can avoid the exceeded calculation.

  ————————————————————————————————————————————————————————————
  6. Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2

  ————————————————————————————————————————————————————————————

  Scenario Outline: 1 - Ignore number which is greater than 1000 during String Calculation.
    Given a numbers string "<numbers>" as input
    When using String Calculator calculate
    Then return <expectedSumResult> as expected
    Examples:
      | numbers                  | expectedSumResult   |
      | //;\n1;2;3;4;2000        | 10                  |
      | //*\n4*3*2*3000*1        | 10                  |
      | 1000,2000\n3000,5000     | 1000                |
      | 1001,2000\n3000,5000     | 0                   |

