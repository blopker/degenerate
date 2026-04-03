// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookCodeScanningAlertClosedByUserAlertMostRecentInstanceMessage {const WebhookCodeScanningAlertClosedByUserAlertMostRecentInstanceMessage({this.text});

factory WebhookCodeScanningAlertClosedByUserAlertMostRecentInstanceMessage.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertClosedByUserAlertMostRecentInstanceMessage(
  text: json['text'] as String?,
); }

final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
WebhookCodeScanningAlertClosedByUserAlertMostRecentInstanceMessage copyWith({String Function()? text}) { return WebhookCodeScanningAlertClosedByUserAlertMostRecentInstanceMessage(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertClosedByUserAlertMostRecentInstanceMessage &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertClosedByUserAlertMostRecentInstanceMessage(text: $text)'; } 
 }
