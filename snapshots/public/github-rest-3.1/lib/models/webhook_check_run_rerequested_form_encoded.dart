// GENERATED CODE - DO NOT MODIFY BY HAND

/// The check_run.rerequested webhook encoded with URL encoding
final class WebhookCheckRunRerequestedFormEncoded {const WebhookCheckRunRerequestedFormEncoded({required this.payload});

factory WebhookCheckRunRerequestedFormEncoded.fromJson(Map<String, dynamic> json) { return WebhookCheckRunRerequestedFormEncoded(
  payload: json['payload'] as String,
); }

/// A URL-encoded string of the check_run.rerequested JSON payload. The decoded payload is a JSON object.
final String payload;

Map<String, dynamic> toJson() { return {
  'payload': payload,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payload') && json['payload'] is String; } 
WebhookCheckRunRerequestedFormEncoded copyWith({String? payload}) { return WebhookCheckRunRerequestedFormEncoded(
  payload: payload ?? this.payload,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCheckRunRerequestedFormEncoded &&
          payload == other.payload; } 
@override int get hashCode { return payload.hashCode; } 
@override String toString() { return 'WebhookCheckRunRerequestedFormEncoded(payload: $payload)'; } 
 }
