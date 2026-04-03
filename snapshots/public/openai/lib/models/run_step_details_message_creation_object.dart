// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_details_message_creation_object_message_creation.dart';/// Always `message_creation`.
@immutable final class RunStepDetailsMessageCreationObjectType {const RunStepDetailsMessageCreationObjectType._(this.value);

factory RunStepDetailsMessageCreationObjectType.fromJson(String json) { return switch (json) {
  'message_creation' => messageCreation,
  _ => RunStepDetailsMessageCreationObjectType._(json),
}; }

static const RunStepDetailsMessageCreationObjectType messageCreation = RunStepDetailsMessageCreationObjectType._('message_creation');

static const List<RunStepDetailsMessageCreationObjectType> values = [messageCreation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepDetailsMessageCreationObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepDetailsMessageCreationObjectType($value)'; } 
 }
/// Details of the message creation by the run step.
@immutable final class RunStepDetailsMessageCreationObject {const RunStepDetailsMessageCreationObject({required this.type, required this.messageCreation, });

factory RunStepDetailsMessageCreationObject.fromJson(Map<String, dynamic> json) { return RunStepDetailsMessageCreationObject(
  type: RunStepDetailsMessageCreationObjectType.fromJson(json['type'] as String),
  messageCreation: RunStepDetailsMessageCreationObjectMessageCreation.fromJson(json['message_creation'] as Map<String, dynamic>),
); }

/// Always `message_creation`.
final RunStepDetailsMessageCreationObjectType type;

final RunStepDetailsMessageCreationObjectMessageCreation messageCreation;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'message_creation': messageCreation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('message_creation'); } 
RunStepDetailsMessageCreationObject copyWith({RunStepDetailsMessageCreationObjectType? type, RunStepDetailsMessageCreationObjectMessageCreation? messageCreation, }) { return RunStepDetailsMessageCreationObject(
  type: type ?? this.type,
  messageCreation: messageCreation ?? this.messageCreation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDetailsMessageCreationObject &&
          type == other.type &&
          messageCreation == other.messageCreation; } 
@override int get hashCode { return Object.hash(type, messageCreation); } 
@override String toString() { return 'RunStepDetailsMessageCreationObject(type: $type, messageCreation: $messageCreation)'; } 
 }
