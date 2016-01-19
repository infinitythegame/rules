@source:N3
@section:basic-rules
@page:20
@rolls
@criticals
Feature: Rolls that exactly match a modified attribute are criticals
  Criticals represent the improved outcomes of actions that
  resulted in an exceptional success. When the result on the
  die matches the value of the Attribute (remember: the value
  of the Attribute with all MODs applied), the action is a Critical
  success. The goal of the action was achieved in the best
  possible way. A perfect success, congratulations!

Scenario: Rolling equal to an unmodified attribute is a Critical success
  Given that 'Fusilier Angus' had to make a Normal 'BS' Roll
  And that 'Fusilier Angus' had a 'BS' Attribute of 12
  When 'Fusilier Angus' rolls 12
  Then 'Fusilier Angus' will achieve a Critical Success

@modifiers
Scenario: Rolling equal to an modified attribute is a Critical success
  Given that 'Fusilier Angus' had to make a Normal 'BS' Roll
  And that 'Fusilier Angus' had a 'BS' Attribute of 12
  And that the shot was at 'Long Range' (-3 MOD)
  When 'Fusilier Angus' rolls 9
  Then 'Fusilier Angus' will achieve a Critical Success

@modifiers
Scenario: Rolling above a modified attribute does not achieve a Critical Success
  Given that 'Fusilier Angus' had to make a Normal 'BS' Roll
  And that 'Fusilier Angus' had a 'BS' Attribute of 12
  And that the shot was at 'Long' Range (-3 MOD)
  When 'Fusilier Angus' rolls 12
  Then 'Fusilier Angus' will not achieve a Critical Success

@modifiers
Scenario: Rolling below a modified attribute does not achieve a Critical Success
  Given that 'Fusilier Angus' made a Normal 'BS' Roll
  And that 'Fusilier Angus' had a 'BS' Attribute of 12
  And that the shot was at 'Medium' Range (+3 MOD)
  When 'Fusilier Angus' rolls 12
  Then 'Fusilier Angus' will not achieve a Critical Success
