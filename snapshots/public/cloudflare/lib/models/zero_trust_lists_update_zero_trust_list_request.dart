// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_description.dart';import 'zero_trust_gateway_items_input2.dart';import 'zero_trust_gateway_name.dart';@immutable final class ZeroTrustListsUpdateZeroTrustListRequest {const ZeroTrustListsUpdateZeroTrustListRequest({required this.name, this.description, this.items, });

factory ZeroTrustListsUpdateZeroTrustListRequest.fromJson(Map<String, dynamic> json) { return ZeroTrustListsUpdateZeroTrustListRequest(
  description: json['description'] != null ? ZeroTrustGatewayDescription.fromJson(json['description'] as String) : null,
  items: (json['items'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayItemsInput2.fromJson(e as Map<String, dynamic>)).toList(),
  name: ZeroTrustGatewayName.fromJson(json['name'] as String),
); }

/// Provide the list description.
final ZeroTrustGatewayDescription? description;

/// Add items to the list.
final List<ZeroTrustGatewayItemsInput2>? items;

/// Specify the list name.
final ZeroTrustGatewayName name;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (items != null) 'items': items?.map((e) => e.toJson()).toList(),
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
ZeroTrustListsUpdateZeroTrustListRequest copyWith({ZeroTrustGatewayDescription Function()? description, List<ZeroTrustGatewayItemsInput2> Function()? items, ZeroTrustGatewayName? name, }) { return ZeroTrustListsUpdateZeroTrustListRequest(
  description: description != null ? description() : this.description,
  items: items != null ? items() : this.items,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustListsUpdateZeroTrustListRequest &&
          description == other.description &&
          listEquals(items, other.items) &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, Object.hashAll(items ?? const []), name); } 
@override String toString() { return 'ZeroTrustListsUpdateZeroTrustListRequest(description: $description, items: $items, name: $name)'; } 
 }
