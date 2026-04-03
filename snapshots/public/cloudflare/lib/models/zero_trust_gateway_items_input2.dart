// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_description_item.dart';import 'zero_trust_gateway_value.dart';@immutable final class ZeroTrustGatewayItemsInput2 {const ZeroTrustGatewayItemsInput2({this.description, this.value, });

factory ZeroTrustGatewayItemsInput2.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayItemsInput2(
  description: json['description'] != null ? ZeroTrustGatewayDescriptionItem.fromJson(json['description'] as String) : null,
  value: json['value'] != null ? ZeroTrustGatewayValue.fromJson(json['value'] as String) : null,
); }

/// Provide the list item description (optional).
final ZeroTrustGatewayDescriptionItem? description;

final ZeroTrustGatewayValue? value;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'value'}.contains(key)); } 
ZeroTrustGatewayItemsInput2 copyWith({ZeroTrustGatewayDescriptionItem Function()? description, ZeroTrustGatewayValue Function()? value, }) { return ZeroTrustGatewayItemsInput2(
  description: description != null ? description() : this.description,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayItemsInput2 &&
          description == other.description &&
          value == other.value; } 
@override int get hashCode { return Object.hash(description, value); } 
@override String toString() { return 'ZeroTrustGatewayItemsInput2(description: $description, value: $value)'; } 
 }
