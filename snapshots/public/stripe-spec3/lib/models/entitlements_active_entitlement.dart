// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'entitlements_active_entitlement_feature.dart';import 'entitlements_feature.dart';/// String representing the object's type. Objects of the same type share the same value.
final class EntitlementsActiveEntitlementObject {const EntitlementsActiveEntitlementObject._(this.value);

factory EntitlementsActiveEntitlementObject.fromJson(String json) { return switch (json) {
  'entitlements.active_entitlement' => entitlementsActiveEntitlement,
  _ => EntitlementsActiveEntitlementObject._(json),
}; }

static const EntitlementsActiveEntitlementObject entitlementsActiveEntitlement = EntitlementsActiveEntitlementObject._('entitlements.active_entitlement');

static const List<EntitlementsActiveEntitlementObject> values = [entitlementsActiveEntitlement];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EntitlementsActiveEntitlementObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EntitlementsActiveEntitlementObject($value)'; } 
 }
/// An active entitlement describes access to a feature for a customer.
final class EntitlementsActiveEntitlement {const EntitlementsActiveEntitlement({required this.feature, required this.id, required this.livemode, required this.lookupKey, required this.object, });

factory EntitlementsActiveEntitlement.fromJson(Map<String, dynamic> json) { return EntitlementsActiveEntitlement(
  feature: OneOf2.parse(json['feature'], fromA: (v) => v as String, fromB: (v) => EntitlementsFeature.fromJson(v as Map<String, dynamic>),),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  lookupKey: json['lookup_key'] as String,
  object: EntitlementsActiveEntitlementObject.fromJson(json['object'] as String),
); }

/// The [Feature](https://docs.stripe.com/api/entitlements/feature) that the customer is entitled to.
final EntitlementsActiveEntitlementFeature feature;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// A unique key you provide as your own system identifier. This may be up to 80 characters.
final String lookupKey;

/// String representing the object's type. Objects of the same type share the same value.
final EntitlementsActiveEntitlementObject object;

Map<String, dynamic> toJson() { return {
  'feature': feature.toJson(),
  'id': id,
  'livemode': livemode,
  'lookup_key': lookupKey,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('feature') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('lookup_key') && json['lookup_key'] is String &&
      json.containsKey('object'); } 
EntitlementsActiveEntitlement copyWith({EntitlementsActiveEntitlementFeature? feature, String? id, bool? livemode, String? lookupKey, EntitlementsActiveEntitlementObject? object, }) { return EntitlementsActiveEntitlement(
  feature: feature ?? this.feature,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  lookupKey: lookupKey ?? this.lookupKey,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EntitlementsActiveEntitlement &&
          feature == other.feature &&
          id == other.id &&
          livemode == other.livemode &&
          lookupKey == other.lookupKey &&
          object == other.object; } 
@override int get hashCode { return Object.hash(feature, id, livemode, lookupKey, object); } 
@override String toString() { return 'EntitlementsActiveEntitlement(feature: $feature, id: $id, livemode: $livemode, lookupKey: $lookupKey, object: $object)'; } 
 }
