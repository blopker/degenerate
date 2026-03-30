// GENERATED CODE - DO NOT MODIFY BY HAND

import 'message_feedback_enum_outcome.dart';final class CreateMessageFeedbackRequest {const CreateMessageFeedbackRequest({this.outcome});

factory CreateMessageFeedbackRequest.fromJson(Map<String, dynamic> json) { return CreateMessageFeedbackRequest(
  outcome: json['Outcome'] != null ? MessageFeedbackEnumOutcome.fromJson(json['Outcome'] as String) : null,
); }

/// Reported outcome indicating whether there is confirmation that the Message recipient performed a tracked user action. Can be: `unconfirmed` or `confirmed`. For more details see [How to Optimize Message Deliverability with Message Feedback](https://www.twilio.com/docs/messaging/guides/send-message-feedback-to-twilio).
final MessageFeedbackEnumOutcome? outcome;

Map<String, dynamic> toJson() { return {
  if (outcome != null) 'Outcome': outcome?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'Outcome'}.contains(key)); } 
CreateMessageFeedbackRequest copyWith({MessageFeedbackEnumOutcome Function()? outcome}) { return CreateMessageFeedbackRequest(
  outcome: outcome != null ? outcome() : this.outcome,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateMessageFeedbackRequest &&
          outcome == other.outcome; } 
@override int get hashCode { return outcome.hashCode; } 
@override String toString() { return 'CreateMessageFeedbackRequest(outcome: $outcome)'; } 
 }
