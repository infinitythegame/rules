@rulebook:n3
@basic-rules
@rolls
@normal-roll
Feature: Rules for Normal rolls
  Normal Rolls are the most common, basic dice rolls in Infinity.
  This roll is used when a troop is not facing off against an
  enemy, but instead must prove successful in an uncontested
  or passively contested Skill (such as Opening/Closing doors,
  trying to Discover a camouflaged enemy or healing an ally
  by means of the Doctor Special Skill).
  To make a Normal Roll and find out if a troop is successful
  when performing a Skill, simply roll one d20 and compare the
  result against the relevant Attribute of the troop performing
  the action. If the result on the die is equal to or lower than the
  Attribute, the Skill is successful, and the troop achieves its goal.

@scenario: Trooper rolls under their Attribute
  Given that 'Fusilier Angus' has to make a Normal 'BS' Roll
  And that 'Fusilier Angus' has a 'BS' Attribute of 12
  When 'Fusilier Angus' rolls 8
  Then 'Fusilier Angus' should pass the roll.

@scenario: Trooper rolls equal to their Attribute
  Given that 'Fendetestas the Irmandinho' has to make a Normal 'WIP' Roll
  And that 'Fendetestas the Irmandinho' has a 'WIP' Attribute of 13
  When 'Fendetestas the Irmandinho' rolls 13
  Then 'Fendetestas the Irmandinho' should pass the roll.

@scenario: Trooper rolls above their Attribute
  Given that 'Fusilier Angus' has to make a Normal 'BS' Roll
  And that 'Fusilier Angus' has a 'BS' Attribute of 12
  When 'Fusilier Angus' rolls 15
  Then 'Fusilier Angus' fails the roll
