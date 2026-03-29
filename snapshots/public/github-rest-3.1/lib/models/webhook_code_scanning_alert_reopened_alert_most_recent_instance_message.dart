// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookCodeScanningAlertReopenedAlertMostRecentInstanceMessage {const WebhookCodeScanningAlertReopenedAlertMostRecentInstanceMessage({this.text});

factory WebhookCodeScanningAlertReopenedAlertMostRecentInstanceMessage.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertReopenedAlertMostRecentInstanceMessage(
  text: json['text'] as String?,
); }

final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
WebhookCodeScanningAlertReopenedAlertMostRecentInstanceMessage copyWith({String Function()? text}) { return WebhookCodeScanningAlertReopenedAlertMostRecentInstanceMessage(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertReopenedAlertMostRecentInstanceMessage &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedAlertMostRecentInstanceMessage(text: $text)'; } 
 }
