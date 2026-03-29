// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_description_item.dart';import 'zero_trust_gateway_read_only_timestamp.dart';import 'zero_trust_gateway_value.dart';final class ZeroTrustGatewayItems2 {const ZeroTrustGatewayItems2({this.createdAt, this.description, this.value, });

factory ZeroTrustGatewayItems2.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayItems2(
  createdAt: json['created_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['created_at'] as String) : null,
  description: json['description'] != null ? ZeroTrustGatewayDescriptionItem.fromJson(json['description'] as String) : null,
  value: json['value'] != null ? ZeroTrustGatewayValue.fromJson(json['value'] as String) : null,
); }

final ZeroTrustGatewayReadOnlyTimestamp? createdAt;

/// Provide the list item description (optional).
final ZeroTrustGatewayDescriptionItem? description;

final ZeroTrustGatewayValue? value;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'description', 'value'}.contains(key)); } 
ZeroTrustGatewayItems2 copyWith({ZeroTrustGatewayReadOnlyTimestamp Function()? createdAt, ZeroTrustGatewayDescriptionItem Function()? description, ZeroTrustGatewayValue Function()? value, }) { return ZeroTrustGatewayItems2(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description != null ? description() : this.description,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayItems2 &&
          createdAt == other.createdAt &&
          description == other.description &&
          value == other.value; } 
@override int get hashCode { return Object.hash(createdAt, description, value); } 
@override String toString() { return 'ZeroTrustGatewayItems2(createdAt: $createdAt, description: $description, value: $value)'; } 
 }
