// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Fields that specify how to calculate a meter event's value.
@immutable final class PostBillingMetersRequestValueSettings {const PostBillingMetersRequestValueSettings({required this.eventPayloadKey});

factory PostBillingMetersRequestValueSettings.fromJson(Map<String, dynamic> json) { return PostBillingMetersRequestValueSettings(
  eventPayloadKey: json['event_payload_key'] as String,
); }

final String eventPayloadKey;

Map<String, dynamic> toJson() { return {
  'event_payload_key': eventPayloadKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_payload_key') && json['event_payload_key'] is String; } 
PostBillingMetersRequestValueSettings copyWith({String? eventPayloadKey}) { return PostBillingMetersRequestValueSettings(
  eventPayloadKey: eventPayloadKey ?? this.eventPayloadKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingMetersRequestValueSettings &&
          eventPayloadKey == other.eventPayloadKey; } 
@override int get hashCode { return eventPayloadKey.hashCode; } 
@override String toString() { return 'PostBillingMetersRequestValueSettings(eventPayloadKey: $eventPayloadKey)'; } 
 }
