string action
string argument
string worker_result
string context_message

bool approved

uint8 status
uint8 SUCCESS=0
uint8 FAILURE=1
uint8 TIMEOUT=2
uint8 REJECTED=3

string failure_reason
string REASON_NONE="none"
string REASON_UNSPECIFIED="unspecified"
string REASON_UNKNOWN_ACTION="unknown_action"
string REASON_INVALID_ARGUMENT="invalid_argument"
string REASON_UNSUPPORTED_ARGUMENT="unsupported_argument"
string REASON_ARGUMENT_MISMATCH="argument_mismatch"
string REASON_MALFORMED_RESULT="malformed_result"
string REASON_TIMEOUT="timeout"
string REASON_NO_INPUT="no_input"
string REASON_NAVIGATION_FAILED="navigation_failed"
string REASON_TTS_FAILED="tts_failed"
string REASON_DOOR_CLOSED="door_closed"
string REASON_DOOR_OPEN="door_open"
# Door detector service failed; this is different from a valid closed-door reading.
string REASON_CHECK_SERVICE_FAILED="check_service_failed"

string details
