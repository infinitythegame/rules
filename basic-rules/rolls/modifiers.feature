@source:N3
@section:basic-rules
@rolls
@modifiers
Feature: Modify attributes based on external factors
  In most cases, the circumstances of an action apply Modifiers
  (MODs) to the relevant Attribute before a roll is made. MODs,
  by increasing or decreasing the numeric value of an Attribute,
  denote the difficulty of the Skill at hand. A positive MOD
  applies when the Skill performed is easier than usual, and a
  negative MOD represents that the Skill is harder than usual.
  The most commonly used MODs are:
  - Range (see page 33): can modify the BS and WIP Attributes.
  - Cover (see page 34): can modify the BS and ARM Attributes.
  - Skills and Equipment: can modify several different Attributes.
  - Maximum Modifier: The sum total of the Modifiers applied
    to a Roll can never exceed +12 or -12.
  Any Modifier that adds up to more than +12 or less than -12
  is ignored and replaced by the maximum MOD of +12 or -12,
  as appropriate.

  Whenever a rule mentions the value of an Attribute, consider it to
  mean the final value, obtained after applying all MODs.

@range
@bs-attack
Scenario: Range of a weapon may modify the BS Attribute negatively
  Given that an 'Akal Commando' declares a BS Attack with his 'Combi Rifle' against a 'Ghulam'
  And the 'Ghulam' is at 'Maximum' Range (-6 MOD)
  When the 'BS' Attribute of the 'Akal Commando' is calculated
  Then the MOD should be -6

@range
@bs-attack
Scenario: Range of a weapon may modify the BS Attribute positively
  Given that an 'Akal Commando' declares a BS Attack with his 'Combi Rifle' against a 'Ghulam'
  And the 'Ghulam' is at 'Medium' Range (+3 MOD)
  When the 'BS' Attribute of the 'Akal Commando' is calculated
  Then the total MOD should be 3

@range
@cover
@bs-attack
Scenario: Modifiers to attributes stack
  Given that an 'Akal Commando' declares a BS Attack with his 'Combi Rifle' against a 'Ghulam'
  And the 'Ghulam' is at 'Long' Range (-3 MOD)
  And the Ghulam is in Partial Cover (-3 MOD)
  When the 'BS' Attribute of the 'Akal Commando' is calculated
  Then the total MOD should be -6

@range
@cover
@bs-attack
@technical-weapon
@targeted
Scenario: Modifiers should be added together to return the sum of all of them
  Given that a 'Ghulam Forward Observer' declares a BS Attack with her 'Flash Pulse' against 'Fusilier Angus'
  And 'Fusilier Angus' is at 'Medium' Range (+3 MOD)
  And 'Fusilier Angus' is in the 'Targeted' State (+3 MOD)
  And 'Fusilier Angus' is in Partial Cover (-3 MOD)
  And 'Fusilier Angus' is within a 'Low Visibility Zone' (-3 MOD)
  When the 'WIP' Attribute of the 'Ghulam Forward Observer' is calculated
  Then the total MOD should be 0

@range
@cover
@bs-attack
Scenario: The sum total of the Modifiers applied to a Roll can never exceed -12
  Given that an 'Akal Commando' declares a BS Attack with his 'Combi Rifle' against a 'Spektr'
  And the 'Spektr' has the Special Skill 'TO Camouflage' (-6 MOD)
  And the 'Spektr' is in Partial Cover (-3 MOD)
  And the 'Spektr' is at 'Maximum' Range (-6 MOD)
  Then the total MOD should be -12

@range
@cover
@bs-attack
@visibility
Scenario: The sum total of the Modifiers applied to a Roll can never exceed -12
  Given that an 'Akal Commando' declares a BS Attack with his 'Combi Rifle' against a 'Spektr'
  And the 'Spektr' has the Special Skill 'TO Camouflage' (-6 MOD)
  And the 'Spektr' is in Partial Cover (-3 MOD)
  And the 'Spektr' is at 'Maximum' Range (-6 MOD)
  And the 'Spektr' is in the 'Targeted' State (+3 MOD)
  And the attack must pass through a 'Poor Visibility Zone' (-6 MOD)
  Then the total MOD should be -12
