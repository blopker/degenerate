// GENERATED CODE - DO NOT MODIFY BY HAND

final class PauseResumeStopRecordingRequestAction {const PauseResumeStopRecordingRequestAction._(this.value);

factory PauseResumeStopRecordingRequestAction.fromJson(String json) { return switch (json) {
  'stop' => stop,
  'pause' => pause,
  'resume' => resume,
  _ => PauseResumeStopRecordingRequestAction._(json),
}; }

static const PauseResumeStopRecordingRequestAction stop = PauseResumeStopRecordingRequestAction._('stop');

static const PauseResumeStopRecordingRequestAction pause = PauseResumeStopRecordingRequestAction._('pause');

static const PauseResumeStopRecordingRequestAction resume = PauseResumeStopRecordingRequestAction._('resume');

static const List<PauseResumeStopRecordingRequestAction> values = [stop, pause, resume];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PauseResumeStopRecordingRequestAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PauseResumeStopRecordingRequestAction($value)'; } 
 }
final class PauseResumeStopRecordingRequest {const PauseResumeStopRecordingRequest({required this.action});

factory PauseResumeStopRecordingRequest.fromJson(Map<String, dynamic> json) { return PauseResumeStopRecordingRequest(
  action: PauseResumeStopRecordingRequestAction.fromJson(json['action'] as String),
); }

final PauseResumeStopRecordingRequestAction action;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action'); } 
PauseResumeStopRecordingRequest copyWith({PauseResumeStopRecordingRequestAction? action}) { return PauseResumeStopRecordingRequest(
  action: action ?? this.action,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PauseResumeStopRecordingRequest &&
          action == other.action; } 
@override int get hashCode { return action.hashCode; } 
@override String toString() { return 'PauseResumeStopRecordingRequest(action: $action)'; } 
 }
