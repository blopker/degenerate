// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_discovery_operation.dart';final class DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse {const DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse({required this.result});

factory DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse.fromJson(Map<String, dynamic> json) { return DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse(
  result: (json['result'] as List<dynamic>).map((e) => ShieldDiscoveryOperation.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldDiscoveryOperation> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse copyWith({List<ShieldDiscoveryOperation>? result}) { return DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse(result: $result)'; } 
 }
