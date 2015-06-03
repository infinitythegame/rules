# FURY: EXTREMELY IMPETUOUS
# Extremely Impetuous troopers crave only the thrill of combat,
# preferably up close and personal

@fury
Feature:  In order to correctly calculate ballistic attacks

# Rules:
#
# Extremely Impetuous troopers cannot benefit from Partial
# Cover MODs.
@cover
Scenario: Given that 'Fusilier Angus' declares the Short Skill 'BS Attack'
          And the target is 'Zamira Nazarova' 15 inches away
          And the 'Zamira Nazarova' is in Partial Cover
          When the Attack is calulated
          Then there is no BS penalty applied for Partial Cover

# Being Extremely Impetuous gives the
# trooper an Impetuous Order. This Impetuous Order is generated in addition to
# the trooper’s normal Order.
#
# Troopers with this Characteristic must expend their Impetuous
# Order during the Impetuous Phase, and follow the
# rules specific to these kinds of orders.
