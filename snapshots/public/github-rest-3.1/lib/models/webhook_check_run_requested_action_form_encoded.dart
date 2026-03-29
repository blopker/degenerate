// GENERATED CODE - DO NOT MODIFY BY HAND

/// The check_run.requested_action webhook encoded with URL encoding
final class WebhookCheckRunRequestedActionFormEncoded {const WebhookCheckRunRequestedActionFormEncoded({required this.payload});

factory WebhookCheckRunRequestedActionFormEncoded.fromJson(Map<String, dynamic> json) { return WebhookCheckRunRequestedActionFormEncoded(
  payload: json['payload'] as String,
); }

/// A URL-encoded string of the check_run.requested_action JSON payload. The decoded payload is a JSON object.
final String payload;

Map<String, dynamic> toJson() { return {
  'payload': payload,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payload') && json['payload'] is String; } 
WebhookCheckRunRequestedActionFormEncoded copyWith({String? payload}) { return WebhookCheckRunRequestedActionFormEncoded(
  payload: payload ?? this.payload,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCheckRunRequestedActionFormEncoded &&
          payload == other.payload; } 
@override int get hashCode { return payload.hashCode; } 
@override String toString() { return 'WebhookCheckRunRequestedActionFormEncoded(payload: $payload)'; } 
 }
