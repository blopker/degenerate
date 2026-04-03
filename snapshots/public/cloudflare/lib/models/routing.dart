// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'routing_routing.dart';@immutable final class Routing {const Routing({this.apiRouting});

factory Routing.fromJson(Map<String, dynamic> json) { return Routing(
  apiRouting: json['api_routing'] != null ? RoutingRouting.fromJson(json['api_routing'] as Map<String, dynamic>) : null,
); }

/// API Routing settings on endpoint.
final RoutingRouting? apiRouting;

Map<String, dynamic> toJson() { return {
  if (apiRouting != null) 'api_routing': apiRouting?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'api_routing'}.contains(key)); } 
Routing copyWith({RoutingRouting Function()? apiRouting}) { return Routing(
  apiRouting: apiRouting != null ? apiRouting() : this.apiRouting,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Routing &&
          apiRouting == other.apiRouting; } 
@override int get hashCode { return apiRouting.hashCode; } 
@override String toString() { return 'Routing(apiRouting: $apiRouting)'; } 
 }
