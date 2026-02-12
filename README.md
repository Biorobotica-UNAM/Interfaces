# Interfaces

This repository contains the ROS 2 interface definitions used across our robotic software architecture.
Its purpose is to provide a centralized, well-defined, and modular set of **services**, **messages**, and **actions** that enable communication between planning, execution, vision, manipulation, human–robot interaction modules and Hardware modules.

Each interface package is designed to be semantically explicit and independent, promoting scalability, reusability, and clear separation of responsibilities.

---

## `clips_interfaces`

### Services
- **`String.srv`**  

---

## `executor_interfaces`

### Actions
- **`ExecuteTask.action`**  
  High-level action used to execute an atomic task step.  
  It encapsulates task execution, progress feedback, and final status reporting, enabling asynchronous and monitored execution of robot behaviors.

### Messages
- **`TaskStep.msg`**  
  Defines a single executable task step, including identifiers, action names, and parameters required for execution.

- **`TaskFeedback.msg`**  
  Represents intermediate feedback during task execution, allowing monitoring of progress or partial results.

- **`TaskResult.msg`**  
  Encapsulates the final outcome of a task step, including success or failure status and an optional descriptive message.

- **`RobotContext.msg`**  
  Describes the current contextual state of the robot, used to inform decision-making and execution logic.

---

## `known_locations_interfaces`

### Services
- **`LocationsGet.srv`**  
  Service used to retrieve stored known locations, typically for navigation or task planning purposes.

- **`LocationsServer.srv`**  
  Service interface for managing known locations, including insertion, update, or deletion of location entries.

---

## `listener_interfaces`

### Services
- **`Listen.srv`**  
  Service that triggers the listening process for speech input, commonly used within human–robot interaction pipelines.

---

## `manipulation_planner_interfaces`

### Services
- **`SolveRightArmIK.srv`**  
  Service for solving the inverse kinematics of the robot’s right arm given a target pose, supporting manipulation planning and execution.

---

## `semantic_parser_interfaces`

### Services
- **`Parser.srv`**  
  Service that parses natural language input and produces a structured semantic representation suitable for planning or execution modules.

---

## `supervisor_interfaces`

### Messages
- **`SystemStatus.msg`**  
  Publishes the operational status of core subsystems (e.g., navigation, manipulation, vision, HRI), enabling supervision, monitoring, and fault handling.

---

## `talker_interfaces`

### Services
- **`Talk.srv`**  
  Service interface for text-to-speech output, allowing other modules to request spoken responses from the robot.

---

## Design Philosophy

The interfaces in this repository follow these principles:
- Clear semantic separation between services, messages, and actions.
- Explicit naming to reflect functional intent.
- Minimal coupling between modules.
- Compatibility with distributed, modular robotic architectures.

This repository is intended to be shared across multiple packages and robots within the system.
