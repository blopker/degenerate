// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_app_type_id.dart';import 'zero_trust_gateway_app_types_components_schemas_name.dart';import 'zero_trust_gateway_timestamp.dart';/// Identify this application. Only one application per ID.
extension type const ZeroTrustGatewayAppId(int value) {
factory ZeroTrustGatewayAppId.fromJson(num json) => ZeroTrustGatewayAppId(json.toInt());

num toJson() => value;

}
final class ZeroTrustGatewayApplication {const ZeroTrustGatewayApplication({this.applicationTypeId, this.createdAt, this.id, this.name, });

factory ZeroTrustGatewayApplication.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayApplication(
  applicationTypeId: json['application_type_id'] != null ? ZeroTrustGatewayAppTypeId.fromJson(json['application_type_id'] as num) : null,
  createdAt: json['created_at'] != null ? ZeroTrustGatewayTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? ZeroTrustGatewayAppId.fromJson(json['id'] as num) : null,
  name: json['name'] != null ? ZeroTrustGatewayAppTypesComponentsSchemasName.fromJson(json['name'] as String) : null,
); }

/// Identify the type of this application. Multiple applications can share the same type. Refers to the `id` of a returned application type.
final ZeroTrustGatewayAppTypeId? applicationTypeId;

final ZeroTrustGatewayTimestamp? createdAt;

/// Identify this application. Only one application per ID.
final ZeroTrustGatewayAppId? id;

/// Specify the name of the application or application type.
final ZeroTrustGatewayAppTypesComponentsSchemasName? name;

Map<String, dynamic> toJson() { return {
  if (applicationTypeId != null) 'application_type_id': applicationTypeId?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewayApplication copyWith({ZeroTrustGatewayAppTypeId Function()? applicationTypeId, ZeroTrustGatewayTimestamp Function()? createdAt, ZeroTrustGatewayAppId Function()? id, ZeroTrustGatewayAppTypesComponentsSchemasName Function()? name, }) { return ZeroTrustGatewayApplication(
  applicationTypeId: applicationTypeId != null ? applicationTypeId() : this.applicationTypeId,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayApplication &&
          applicationTypeId == other.applicationTypeId &&
          createdAt == other.createdAt &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(applicationTypeId, createdAt, id, name); } 
@override String toString() { return 'ZeroTrustGatewayApplication(applicationTypeId: $applicationTypeId, createdAt: $createdAt, id: $id, name: $name)'; } 
 }
