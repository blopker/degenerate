// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigUpdateGatewayResponseResultStripeUsageEvents {const AigConfigUpdateGatewayResponseResultStripeUsageEvents({required this.payload});

factory AigConfigUpdateGatewayResponseResultStripeUsageEvents.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayResponseResultStripeUsageEvents(
  payload: json['payload'] as String,
); }

final String payload;

Map<String, dynamic> toJson() { return {
  'payload': payload,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payload') && json['payload'] is String; } 
AigConfigUpdateGatewayResponseResultStripeUsageEvents copyWith({String? payload}) { return AigConfigUpdateGatewayResponseResultStripeUsageEvents(
  payload: payload ?? this.payload,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayResponseResultStripeUsageEvents &&
          payload == other.payload; } 
@override int get hashCode { return payload.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayResponseResultStripeUsageEvents(payload: $payload)'; } 
 }
