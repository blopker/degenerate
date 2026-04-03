// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RunStepDetailsMessageCreationObjectMessageCreation {const RunStepDetailsMessageCreationObjectMessageCreation({required this.messageId});

factory RunStepDetailsMessageCreationObjectMessageCreation.fromJson(Map<String, dynamic> json) { return RunStepDetailsMessageCreationObjectMessageCreation(
  messageId: json['message_id'] as String,
); }

/// The ID of the message that was created by this run step.
final String messageId;

Map<String, dynamic> toJson() { return {
  'message_id': messageId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message_id') && json['message_id'] is String; } 
RunStepDetailsMessageCreationObjectMessageCreation copyWith({String? messageId}) { return RunStepDetailsMessageCreationObjectMessageCreation(
  messageId: messageId ?? this.messageId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDetailsMessageCreationObjectMessageCreation &&
          messageId == other.messageId; } 
@override int get hashCode { return messageId.hashCode; } 
@override String toString() { return 'RunStepDetailsMessageCreationObjectMessageCreation(messageId: $messageId)'; } 
 }
