@source:N3
@section:basic-rules
@rolls
@automatic-failure
Feature: Attributes Below 1
  Negative MODs can sometimes cause the final value of an
  Attribute to effectively drop below 1 for an action. In these
  cases, the player does not roll the dice, and the Roll is an
  automatic failure.

Scenario: Unable to hit
  Given that I have a 'Probot'
  And the 'Probot' declares 'BS Attack'
  And that the MOD is -12
  When the 'Probot' shoots
  Then it is an Automatic Failure
