# FURY: FRENZY
# The trooper’s urge to kill is barely contained. Once they get
# a first taste of blood, they will become a whirlwind of death.
#
# REQUIREMENTS
# Frenzy activates only after the trooper causes an enemy to
# lose one point from their Wounds or STR Attribute.
#
# EFFECTS
# When they deploy, a trooper with Frenzy
# is Non Impetuous. However, if they cause
# an enemy to lose one point from their
# Wounds or STR Attribute, then they will
# start their next Active Turn as an Impetuous
# trooper and will remain Impetuous for the
# rest of the game.
#
# When a trooper with Frenzy becomes Impetuous, it loses the
# advantages provided by Special Skills like CH: Camouflage,
# CH: TO Camouflage (both are reduced to CH: Mimetism),
# Impersonation, Holoprojector (see Infinity. Human Sphere), etc.


Scenario: A trooper with Frenzy is Non-Impetuous until they cause a Wound or STR damage
  Given that the Active Player has a 'Myrmidon'
  When they complete the Order Count Phase
  Then the Myrmidon is 'Non Impetuous'

Scenario: A trooper with Frenzy who causes a Wound stays Non-Impetuous until the start of the owning player's next Active Turn.
  Given that the Active Player has a 'Myrmidon'
  When they cause a Wound on an enemy trooper
  Then the Myrmidon is 'Non Impetuous'

Scenario: A trooper with Frenzy who caused a Wound prior to the Active Turn will become Impetuous
  Given that the Active Player has a 'Myrmidon'
  And the 'Myrmidon' caused 2 Wounds in ARO
  When they complete the Order Count Phase
  Then the Myrmidon is 'Impetuous'


Scenario: A trooper with Frenzy who caused a Wound prior to the Active Turn will stay Impetuous
  Given that it is Active Turn 3
  And the 'Myrmidon' caused 2 Wounds in ARO in Game Round 1
  When they complete the Order Count Phase
  Then the Myrmidon is 'Impetuous'
