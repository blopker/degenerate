// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstanceMessage {const WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstanceMessage({this.text});

factory WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstanceMessage.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstanceMessage(
  text: json['text'] as String?,
); }

final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstanceMessage copyWith({String Function()? text}) { return WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstanceMessage(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstanceMessage &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertUpdatedAssignmentAlertMostRecentInstanceMessage(text: $text)'; } 
 }
