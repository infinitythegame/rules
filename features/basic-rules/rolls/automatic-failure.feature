@source:N3
@section:basic-rules
@page:21
@rolls
@automatic-failure
Feature: Attributes Below 1
  Negative MODs can sometimes cause the final value of an
  Attribute to effectively drop below 1 for an action. In these
  cases, the player does not roll the dice, and the Roll is an
  automatic failure.

Scenario: Unable to hit
  Given that I have a 'Probot'
  And the 'Probot' declared 'BS Attack'
  And that the MOD was -12
  When the 'Probot' shoots
  Then it will be an Automatic Failure
