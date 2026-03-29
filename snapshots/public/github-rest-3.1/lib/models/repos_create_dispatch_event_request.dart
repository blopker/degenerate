// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposCreateDispatchEventRequest {const ReposCreateDispatchEventRequest({required this.eventType, this.clientPayload, });

factory ReposCreateDispatchEventRequest.fromJson(Map<String, dynamic> json) { return ReposCreateDispatchEventRequest(
  eventType: json['event_type'] as String,
  clientPayload: (json['client_payload'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

/// A custom webhook event name. Must be 100 characters or fewer.
final String eventType;

/// JSON payload with extra information about the webhook event that your action or workflow may use. The maximum number of top-level properties is 10. The total size of the JSON payload must be less than 64KB.
final Map<String,dynamic>? clientPayload;

Map<String, dynamic> toJson() { return {
  'event_type': eventType,
  'client_payload': ?clientPayload,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_type') && json['event_type'] is String; } 
ReposCreateDispatchEventRequest copyWith({String? eventType, Map<String, dynamic> Function()? clientPayload, }) { return ReposCreateDispatchEventRequest(
  eventType: eventType ?? this.eventType,
  clientPayload: clientPayload != null ? clientPayload() : this.clientPayload,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateDispatchEventRequest &&
          eventType == other.eventType &&
          clientPayload == other.clientPayload; } 
@override int get hashCode { return Object.hash(eventType, clientPayload); } 
@override String toString() { return 'ReposCreateDispatchEventRequest(eventType: $eventType, clientPayload: $clientPayload)'; } 
 }
