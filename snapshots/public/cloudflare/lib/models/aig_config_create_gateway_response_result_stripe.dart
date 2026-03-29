// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_create_gateway_response_result_stripe_usage_events.dart';final class AigConfigCreateGatewayResponseResultStripe {const AigConfigCreateGatewayResponseResultStripe({required this.authorization, required this.usageEvents, });

factory AigConfigCreateGatewayResponseResultStripe.fromJson(Map<String, dynamic> json) { return AigConfigCreateGatewayResponseResultStripe(
  authorization: json['authorization'] as String,
  usageEvents: (json['usage_events'] as List<dynamic>).map((e) => AigConfigCreateGatewayResponseResultStripeUsageEvents.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String authorization;

final List<AigConfigCreateGatewayResponseResultStripeUsageEvents> usageEvents;

Map<String, dynamic> toJson() { return {
  'authorization': authorization,
  'usage_events': usageEvents.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('authorization') && json['authorization'] is String &&
      json.containsKey('usage_events'); } 
AigConfigCreateGatewayResponseResultStripe copyWith({String? authorization, List<AigConfigCreateGatewayResponseResultStripeUsageEvents>? usageEvents, }) { return AigConfigCreateGatewayResponseResultStripe(
  authorization: authorization ?? this.authorization,
  usageEvents: usageEvents ?? this.usageEvents,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigCreateGatewayResponseResultStripe &&
          authorization == other.authorization &&
          listEquals(usageEvents, other.usageEvents); } 
@override int get hashCode { return Object.hash(authorization, Object.hashAll(usageEvents)); } 
@override String toString() { return 'AigConfigCreateGatewayResponseResultStripe(authorization: $authorization, usageEvents: $usageEvents)'; } 
 }
