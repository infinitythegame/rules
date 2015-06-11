@source:N3
@section:basic-rules
@page:21
@rolls
@criticals
Feature: Attributes above 20 provide more chance of a critical
  In other cases, accumulating positive MODs can cause the final
  value of an Attribute to rise above 20. In this case, consider the
  final value of the Attribute to be 20, but with the peculiarity
  that the player adds to his result on the die the amount by
  which the Attribute exceeded 20 (an Attribute of 23 would
  add 3 to the die).
  In these cases, any result of 20 or more on the roll is a Critical,
  if applicable. Attributes above 20 (either from positive MODs
  or plainly stated in the troop profile) increase the chance of
  obtaining a Critical result.

Scenario: Any result equal to or above 20 is a Critical
  Given that 'Miyamoto Mushashi' has a Close Combat (CC) Attribute of 25
  When 'Miyamoto Mushashi' rolls 18
  Then 'Miyamoto Mushashi' achieves a Critical Success
