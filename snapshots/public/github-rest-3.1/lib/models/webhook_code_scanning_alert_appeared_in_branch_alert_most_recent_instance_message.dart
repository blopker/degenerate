// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstanceMessage {const WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstanceMessage({this.text});

factory WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstanceMessage.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstanceMessage(
  text: json['text'] as String?,
); }

final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstanceMessage copyWith({String Function()? text}) { return WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstanceMessage(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstanceMessage &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertAppearedInBranchAlertMostRecentInstanceMessage(text: $text)'; } 
 }
