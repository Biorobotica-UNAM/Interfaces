# Where an object is. Mirrors domain::ObjectOwnership: exactly one case
# applies, and only the field that matches `type` is meaningful.
uint8 UNKNOWN=0
uint8 AT_LOCATION=1
uint8 HELD_BY_PERSON=2
uint8 HELD_BY_ROBOT=3
uint8 type
string location_name        # valid only if type == AT_LOCATION
string person_name          # valid only if type == HELD_BY_PERSON
RobotHand robot_hand        # valid only if type == HELD_BY_ROBOT
