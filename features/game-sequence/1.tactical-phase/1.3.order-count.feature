@source:N3
@section:game-sequence
@page:27
@active-turn
@tactical-phase
@order-count
Feature: Add all of the Regular Orders to the Order Pool of each Combat Group
  Order count
  The Active Player counts how many Orders they have at their disposal
  for this Turn, by counting the number, type and state of
  their troops. They also applies the effects of Retreat! and/or Loss
  of Lieutenant (if necessary).
  Regular Orders (p.27)
  For each Regular troop deployed on the table that is not in a
  Null state (Unconscious, Dead, Sepsitorized…), the Active Player
  adds one Regular Order Marker (REGULAR) to his Order Pool.

Scenario: Combat Group with 6 Regular Troopers
  Given I have a Combat Group with 6 Troopers with 'Regular Training'
  When I check my Combat Group Order Pools
  Then the Combat Group has an Order Pool of 6 Regular Orders

Scenario: 2 Combat Groups, 1 with 10 Regular Troopers and 1 with 4 Regular Troopers
  Given I have 2 Combat Groups
  And 'Combat Group 1' has 10 Troopers with 'Regular Training'
  And 'Combat Group 2' has 4 Troopers with 'Regular Training'
  When I check my Combat Group Order Pools
  Then 'Combat Group 1' has an Order Pool of 10 Regular Orders
  And 'Combat Group 2' has an Order Pool of 4 Regular Orders

Scenario: Combat Group with 5 Regular Troopers and 2 Irregular Troopers
  Given I have a Combat Group with 5 Troopers with 'Regular Training'
  And it contains 2 Troopers with 2 Irregular Troopers
  When I check my Combat Group Order Pools
  Then the Combat Group has an Order Pool of 5 Regular Orders

Scenario: Combat Group with 10 Regular Troopers of which 3 are in a Null state
  Given I have a Combat Group with 10 Troopers with 'Regular Training'
  And that 3 Troopers are Unconscious
  And that 1 Trooper is Dead
  And that 2 Troopers are Sepsitorized
  When I check my Combat Group Order Pools
  Then the Combat Group has an Order Pool of 4 Regular Orders
