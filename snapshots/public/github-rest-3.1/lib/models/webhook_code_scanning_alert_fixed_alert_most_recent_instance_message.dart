// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookCodeScanningAlertFixedAlertMostRecentInstanceMessage {const WebhookCodeScanningAlertFixedAlertMostRecentInstanceMessage({this.text});

factory WebhookCodeScanningAlertFixedAlertMostRecentInstanceMessage.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertFixedAlertMostRecentInstanceMessage(
  text: json['text'] as String?,
); }

final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
WebhookCodeScanningAlertFixedAlertMostRecentInstanceMessage copyWith({String Function()? text}) { return WebhookCodeScanningAlertFixedAlertMostRecentInstanceMessage(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertFixedAlertMostRecentInstanceMessage &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertFixedAlertMostRecentInstanceMessage(text: $text)'; } 
 }
