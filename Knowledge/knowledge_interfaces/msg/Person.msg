string name
PersonType type
KnownLocation known_location
PhysicalDescription description
string favorite_drink
bool has_navigable_pose
geometry_msgs/Pose navigable_pose     # valid only if has_navigable_pose
uint8[] photo                         # empty = no photo (or not requested)
string[] order                        # names of the ordered objects
