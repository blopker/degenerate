// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_description.dart';import 'zero_trust_gateway_items2.dart';import 'zero_trust_gateway_name.dart';import 'zero_trust_gateway_read_only_timestamp.dart';import 'zero_trust_gateway_schemas_type.dart';import 'zero_trust_gateway_schemas_uuid.dart';@immutable final class ZeroTrustGatewaySingleResponseWithListItemsResult {const ZeroTrustGatewaySingleResponseWithListItemsResult({this.createdAt, this.description, this.id, this.items, this.name, this.type, this.updatedAt, });

factory ZeroTrustGatewaySingleResponseWithListItemsResult.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewaySingleResponseWithListItemsResult(
  createdAt: json['created_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['created_at'] as String) : null,
  description: json['description'] != null ? ZeroTrustGatewayDescription.fromJson(json['description'] as String) : null,
  id: json['id'] != null ? ZeroTrustGatewaySchemasUuid.fromJson(json['id'] as String) : null,
  items: (json['items'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayItems2.fromJson(e as Map<String, dynamic>)).toList(),
  name: json['name'] != null ? ZeroTrustGatewayName.fromJson(json['name'] as String) : null,
  type: json['type'] != null ? ZeroTrustGatewaySchemasType.fromJson(json['type'] as String) : null,
  updatedAt: json['updated_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['updated_at'] as String) : null,
); }

final ZeroTrustGatewayReadOnlyTimestamp? createdAt;

/// Provide the list description.
final ZeroTrustGatewayDescription? description;

/// Identify the API resource with a UUID.
final ZeroTrustGatewaySchemasUuid? id;

/// Provide the list items.
final List<ZeroTrustGatewayItems2>? items;

/// Specify the list name.
final ZeroTrustGatewayName? name;

/// Specify the list type.
final ZeroTrustGatewaySchemasType? type;

final ZeroTrustGatewayReadOnlyTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (items != null) 'items': items?.map((e) => e.toJson()).toList(),
  if (name != null) 'name': name?.toJson(),
  if (type != null) 'type': type?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'description', 'id', 'items', 'name', 'type', 'updated_at'}.contains(key)); } 
ZeroTrustGatewaySingleResponseWithListItemsResult copyWith({ZeroTrustGatewayReadOnlyTimestamp Function()? createdAt, ZeroTrustGatewayDescription Function()? description, ZeroTrustGatewaySchemasUuid Function()? id, List<ZeroTrustGatewayItems2> Function()? items, ZeroTrustGatewayName Function()? name, ZeroTrustGatewaySchemasType Function()? type, ZeroTrustGatewayReadOnlyTimestamp Function()? updatedAt, }) { return ZeroTrustGatewaySingleResponseWithListItemsResult(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  items: items != null ? items() : this.items,
  name: name != null ? name() : this.name,
  type: type != null ? type() : this.type,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewaySingleResponseWithListItemsResult &&
          createdAt == other.createdAt &&
          description == other.description &&
          id == other.id &&
          listEquals(items, other.items) &&
          name == other.name &&
          type == other.type &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, description, id, Object.hashAll(items ?? const []), name, type, updatedAt); } 
@override String toString() { return 'ZeroTrustGatewaySingleResponseWithListItemsResult(createdAt: $createdAt, description: $description, id: $id, items: $items, name: $name, type: $type, updatedAt: $updatedAt)'; } 
 }
