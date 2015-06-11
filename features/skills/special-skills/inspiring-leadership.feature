@source:N3
@section:special-skills
@page:84
Feature: Inspiring Leadership
  This Special Skill ties the behavior of entire armies to the
  user’s discipline and state of mind.
  - Automatic Skill
  - Obligatory
  EFFECTS:
  As long as the user of Inspiring Leadership remains on
  the battlefield in a non-Null state (any but Unconscious,
  Dead, or Sepsitorized), replace the Training Characteristic
  (Regular/ Irregular) of every other trooper in the Army
  List with the user’s.

  As long as the user of Inspiring Leadership remains on
  the battlefield in a non-Null state, all troopers under
  the user’s command enjoy the benefits of the V: Courage
  Special Skill.

  You may declare a Coordinated Order that includes the user
  by spending the Special Lieutenant Order only, without
  further expenditures of Command Tokens or extra Orders.

  As long as the user of Inspiring Leadership remains on
  the battlefield in a non-Null state, his army will be not
  affected by the effects of the Retreat! rule.

@order-count
Scenario: Lieutenant has the skill Inspiring Leadership
  Given that my Lieutenant is 'William Wallace'
  When I count Orders for my Order Pools
  Then all my Troopers count as having Regular Training
