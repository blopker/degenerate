// GENERATED CODE - DO NOT MODIFY BY HAND

import 'addressing_service_identifier.dart';import 'addressing_service_name.dart';final class IpAddressManagementServiceBindingsListServicesResponseResult {const IpAddressManagementServiceBindingsListServicesResponseResult({this.id, this.name, });

factory IpAddressManagementServiceBindingsListServicesResponseResult.fromJson(Map<String, dynamic> json) { return IpAddressManagementServiceBindingsListServicesResponseResult(
  id: json['id'] != null ? AddressingServiceIdentifier.fromJson(json['id'] as String) : null,
  name: json['name'] != null ? AddressingServiceName.fromJson(json['name'] as String) : null,
); }

/// Identifier of a Service on the Cloudflare network. Available services and their IDs may be found in the
/// **List Services** endpoint.
/// 
final AddressingServiceIdentifier? id;

/// Name of a service running on the Cloudflare network
final AddressingServiceName? name;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
IpAddressManagementServiceBindingsListServicesResponseResult copyWith({AddressingServiceIdentifier Function()? id, AddressingServiceName Function()? name, }) { return IpAddressManagementServiceBindingsListServicesResponseResult(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementServiceBindingsListServicesResponseResult &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'IpAddressManagementServiceBindingsListServicesResponseResult(id: $id, name: $name)'; } 
 }
