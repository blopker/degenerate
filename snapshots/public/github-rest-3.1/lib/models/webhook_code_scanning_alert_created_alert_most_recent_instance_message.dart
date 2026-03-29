// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookCodeScanningAlertCreatedAlertMostRecentInstanceMessage {const WebhookCodeScanningAlertCreatedAlertMostRecentInstanceMessage({this.text});

factory WebhookCodeScanningAlertCreatedAlertMostRecentInstanceMessage.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertCreatedAlertMostRecentInstanceMessage(
  text: json['text'] as String?,
); }

final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
WebhookCodeScanningAlertCreatedAlertMostRecentInstanceMessage copyWith({String Function()? text}) { return WebhookCodeScanningAlertCreatedAlertMostRecentInstanceMessage(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertCreatedAlertMostRecentInstanceMessage &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertCreatedAlertMostRecentInstanceMessage(text: $text)'; } 
 }
