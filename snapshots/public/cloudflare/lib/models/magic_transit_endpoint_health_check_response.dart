// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_transit_check_type.dart';import 'magic_transit_uuid.dart';@immutable final class MagicTransitEndpointHealthCheckResponse {const MagicTransitEndpointHealthCheckResponse({required this.checkType, required this.endpoint, required this.id, this.name, });

factory MagicTransitEndpointHealthCheckResponse.fromJson(Map<String, dynamic> json) { return MagicTransitEndpointHealthCheckResponse(
  checkType: MagicTransitCheckType.fromJson(json['check_type'] as String),
  endpoint: json['endpoint'] as String,
  name: json['name'] as String?,
  id: MagicTransitUuid.fromJson(json['id'] as String),
); }

/// type of check to perform
final MagicTransitCheckType checkType;

/// the IP address of the host to perform checks against
final String endpoint;

/// Optional name associated with this check
final String? name;

final MagicTransitUuid id;

Map<String, dynamic> toJson() { return {
  'check_type': checkType.toJson(),
  'endpoint': endpoint,
  'name': ?name,
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('check_type') &&
      json.containsKey('endpoint') && json['endpoint'] is String &&
      json.containsKey('id'); } 
MagicTransitEndpointHealthCheckResponse copyWith({MagicTransitCheckType? checkType, String? endpoint, String Function()? name, MagicTransitUuid? id, }) { return MagicTransitEndpointHealthCheckResponse(
  checkType: checkType ?? this.checkType,
  endpoint: endpoint ?? this.endpoint,
  name: name != null ? name() : this.name,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTransitEndpointHealthCheckResponse &&
          checkType == other.checkType &&
          endpoint == other.endpoint &&
          name == other.name &&
          id == other.id; } 
@override int get hashCode { return Object.hash(checkType, endpoint, name, id); } 
@override String toString() { return 'MagicTransitEndpointHealthCheckResponse(checkType: $checkType, endpoint: $endpoint, name: $name, id: $id)'; } 
 }
