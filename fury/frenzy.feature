@fury
Feature:
  FURY: FRENZY
  The trooper’s urge to kill is barely contained. Once they get
  a first taste of blood, they will become a whirlwind of death.

  REQUIREMENTS
  Frenzy activates only after the trooper causes an enemy to
  lose one point from their Wounds or STR Attribute.

  EFFECTS
  When they deploy, a trooper with Frenzy
  is Non Impetuous. However, if they cause
  an enemy to lose one point from their
  Wounds or STR Attribute, then they will
  start their next Active Turn as an Impetuous
  trooper and will remain Impetuous for the
  rest of the game.

  When a trooper with Frenzy becomes Impetuous, it loses the
  advantages provided by Special Skills like CH: Camouflage,
  CH: TO Camouflage (both are reduced to CH: Mimetism),
  Impersonation, Holoprojector (see Infinity. Human Sphere), etc.

@deployment
Scenario: A trooper with Frenzy is deployed as Non Impetuous
  Given that the Army list has 'Kornak Gazarot'
  When 'Kornak Gazarot' is deployed
  Then 'Kornak Gazarot' should be 'Non Impetuous'

Scenario: A trooper with Frenzy is Non-Impetuous until they cause a Wound or STR damage
  Given that the Active Player has a 'Myrmidon'
  When they complete the Order Count Phase
  Then the 'Myrmidon' should be 'Non Impetuous'

Scenario: A trooper with Frenzy who causes a Wound stays Non-Impetuous until the start of the owning player's next Active Turn.
  Given that the Active Player has 'Cadmus-Naish Agent Sheskiin'
  When 'Cadmus-Naish Agent Sheskiin' causes an enemy trooper 1 Wound
  Then 'Cadmus-Naish Agent Sheskiin' should be 'Non Impetuous' for the remainder of this Player Turn

Scenario: A trooper with Frenzy who causes an enemy to lose one or more points from their Wounds Attribute prior to the Active Turn will become Impetuous
  Given that the Active Player has a 'Domaru Butai'
  And the 'Domaru Butai' caused an enemy trooper 2 Wounds in ARO
  When they complete the Order Count Phase
  Then the 'Domaru Butai' should have an 'Impetuous' Order.

Scenario: A trooper with Frenzy who causes an enemy to lose one or more Wounds prior to the Active Turn will stay Impetuous for the rest of the game
  Given that it is Active Turn 3 and the Active Player has a 'Knight of Santiago'
  And the 'Knight of Santiago' caused an enemy trooper 1 Wound in ARO in Game Round 1
  When they complete the Order Count Phase
  Then the 'Knight of Santiago' should have an 'Impetuous' Order.

Scenario: A trooper with Frenzy who causes an enemy remote to lose one or more STR Attribute prior to the Active Turn will become Impetuous
  Given that the Active Player has a 'Myrmidon'
  When the 'Myrmidon' causes an enemy Remote to lose 1 STR
  Then the 'Myrmidon' should be 'Impetuous'
