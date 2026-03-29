// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigCreateGatewayResponseResultStripeUsageEvents {const AigConfigCreateGatewayResponseResultStripeUsageEvents({required this.payload});

factory AigConfigCreateGatewayResponseResultStripeUsageEvents.fromJson(Map<String, dynamic> json) { return AigConfigCreateGatewayResponseResultStripeUsageEvents(
  payload: json['payload'] as String,
); }

final String payload;

Map<String, dynamic> toJson() { return {
  'payload': payload,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payload') && json['payload'] is String; } 
AigConfigCreateGatewayResponseResultStripeUsageEvents copyWith({String? payload}) { return AigConfigCreateGatewayResponseResultStripeUsageEvents(
  payload: payload ?? this.payload,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigCreateGatewayResponseResultStripeUsageEvents &&
          payload == other.payload; } 
@override int get hashCode { return payload.hashCode; } 
@override String toString() { return 'AigConfigCreateGatewayResponseResultStripeUsageEvents(payload: $payload)'; } 
 }
