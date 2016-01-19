@source:N3
@section:basic-rules
@page:21
@rolls
@face-to-face-roll
Feature: Opposing actions result in a Face-to-Face roll against the attributes used in the skills
  When two or more troops act at the same time to try to thwart
  each other’s progress, Face to Face Rolls are used to determine
  which side acts faster and more effectively.
  To do so, both players roll for their troops involved in the
  face-off and compare each result to the relevant Attribute, as
  they would in a Normal Roll. Failures are simply discarded but,
  unlike in a Normal Roll, each side’s successes are compared
  to the other sides’.
  When comparing, successes cancel enemy successes with a
  lower die result—even if they are Cancelled, in turn, by higher
  enemy successes.
  Here is a rundown of possible outcomes:

  - Both fail. No one achieved their goal.
  - One fails and the other passes. The trooper that succeeded
    wins the Face to Face Roll and achieves its goal.
  - Both pass. The trooper with the higher successful die
    cancels the enemy successes, wins the Face to Face Roll
    and achieves its goal.
  - Both pass, but one of the successes is Critical. The trooper
    who got a Critical wins the Face to Face Roll, even if the
    critical roll was lower than the enemy success.
  - Both successes are Critical. Neither trooper wins the
    Face to Face Roll as both Criticals cancel each other and
    no effects are applied. Non-critical successes are discarded.
  - One rolls a Critical and the other rolls two (or more)
    Criticals. As in the previous case, all Criticals are cancelled
    and no effects are applied.


@scenario: Face to face roll during BS attack
  Given that 'Fusilier Angus' declared 'BS Attack' with 'BS' 12 against 'Alguacil Ortega' with 'BS' 11
  And that 'Alguacil Ortega' declared 'BS Attack' as his ARO
  When 'Fusilier Angus' rolls 4 and 'Alguacil Ortega' rolls 7
  Then 'Fusilier Angus' will not succeed
  And 'Alguacil Ortega' will succeed and win the Face to Face roll
