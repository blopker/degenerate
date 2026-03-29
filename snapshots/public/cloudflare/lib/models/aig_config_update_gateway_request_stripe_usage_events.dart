// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigUpdateGatewayRequestStripeUsageEvents {const AigConfigUpdateGatewayRequestStripeUsageEvents({required this.payload});

factory AigConfigUpdateGatewayRequestStripeUsageEvents.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayRequestStripeUsageEvents(
  payload: json['payload'] as String,
); }

final String payload;

Map<String, dynamic> toJson() { return {
  'payload': payload,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payload') && json['payload'] is String; } 
AigConfigUpdateGatewayRequestStripeUsageEvents copyWith({String? payload}) { return AigConfigUpdateGatewayRequestStripeUsageEvents(
  payload: payload ?? this.payload,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayRequestStripeUsageEvents &&
          payload == other.payload; } 
@override int get hashCode { return payload.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayRequestStripeUsageEvents(payload: $payload)'; } 
 }
