// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The URL where webhooks will be sent.
extension type StreamNotificationUrl(Uri value) {
factory StreamNotificationUrl.fromJson(String json) => StreamNotificationUrl(Uri.parse(json));

String toJson() => value.toString();

}
@immutable final class StreamWebhookRequest {const StreamWebhookRequest({required this.notificationUrl});

factory StreamWebhookRequest.fromJson(Map<String, dynamic> json) { return StreamWebhookRequest(
  notificationUrl: StreamNotificationUrl.fromJson(json['notificationUrl'] as String),
); }

/// The URL where webhooks will be sent.
final StreamNotificationUrl notificationUrl;

Map<String, dynamic> toJson() { return {
  'notificationUrl': notificationUrl.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('notificationUrl'); } 
StreamWebhookRequest copyWith({StreamNotificationUrl? notificationUrl}) { return StreamWebhookRequest(
  notificationUrl: notificationUrl ?? this.notificationUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamWebhookRequest &&
          notificationUrl == other.notificationUrl; } 
@override int get hashCode { return notificationUrl.hashCode; } 
@override String toString() { return 'StreamWebhookRequest(notificationUrl: $notificationUrl)'; } 
 }
