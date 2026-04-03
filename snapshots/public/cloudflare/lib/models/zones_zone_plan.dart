// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_identifier.dart';/// A Zones subscription information.
@immutable final class ZonesZonePlan {const ZonesZonePlan({this.canSubscribe, this.currency, this.externallyManaged, this.frequency, this.id, this.isSubscribed, this.legacyDiscount, this.legacyId, this.name, this.price, });

factory ZonesZonePlan.fromJson(Map<String, dynamic> json) { return ZonesZonePlan(
  canSubscribe: json['can_subscribe'] as bool?,
  currency: json['currency'] as String?,
  externallyManaged: json['externally_managed'] as bool?,
  frequency: json['frequency'] as String?,
  id: json['id'] != null ? ZonesIdentifier.fromJson(json['id'] as String) : null,
  isSubscribed: json['is_subscribed'] as bool?,
  legacyDiscount: json['legacy_discount'] as bool?,
  legacyId: json['legacy_id'] as String?,
  name: json['name'] as String?,
  price: json['price'] != null ? (json['price'] as num).toDouble() : null,
); }

/// States if the subscription can be activated.
final bool? canSubscribe;

/// The denomination of the customer.
final String? currency;

/// If this Zone is managed by another company.
final bool? externallyManaged;

/// How often the customer is billed.
final String? frequency;

/// Identifier
final ZonesIdentifier? id;

/// States if the subscription active.
final bool? isSubscribed;

/// If the legacy discount applies to this Zone.
final bool? legacyDiscount;

/// The legacy name of the plan.
final String? legacyId;

/// Name of the owner.
final String? name;

/// How much the customer is paying.
final double? price;

Map<String, dynamic> toJson() { return {
  'can_subscribe': ?canSubscribe,
  'currency': ?currency,
  'externally_managed': ?externallyManaged,
  'frequency': ?frequency,
  if (id != null) 'id': id?.toJson(),
  'is_subscribed': ?isSubscribed,
  'legacy_discount': ?legacyDiscount,
  'legacy_id': ?legacyId,
  'name': ?name,
  'price': ?price,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'can_subscribe', 'currency', 'externally_managed', 'frequency', 'id', 'is_subscribed', 'legacy_discount', 'legacy_id', 'name', 'price'}.contains(key)); } 
ZonesZonePlan copyWith({bool Function()? canSubscribe, String Function()? currency, bool Function()? externallyManaged, String Function()? frequency, ZonesIdentifier Function()? id, bool Function()? isSubscribed, bool Function()? legacyDiscount, String Function()? legacyId, String Function()? name, double Function()? price, }) { return ZonesZonePlan(
  canSubscribe: canSubscribe != null ? canSubscribe() : this.canSubscribe,
  currency: currency != null ? currency() : this.currency,
  externallyManaged: externallyManaged != null ? externallyManaged() : this.externallyManaged,
  frequency: frequency != null ? frequency() : this.frequency,
  id: id != null ? id() : this.id,
  isSubscribed: isSubscribed != null ? isSubscribed() : this.isSubscribed,
  legacyDiscount: legacyDiscount != null ? legacyDiscount() : this.legacyDiscount,
  legacyId: legacyId != null ? legacyId() : this.legacyId,
  name: name != null ? name() : this.name,
  price: price != null ? price() : this.price,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesZonePlan &&
          canSubscribe == other.canSubscribe &&
          currency == other.currency &&
          externallyManaged == other.externallyManaged &&
          frequency == other.frequency &&
          id == other.id &&
          isSubscribed == other.isSubscribed &&
          legacyDiscount == other.legacyDiscount &&
          legacyId == other.legacyId &&
          name == other.name &&
          price == other.price; } 
@override int get hashCode { return Object.hash(canSubscribe, currency, externallyManaged, frequency, id, isSubscribed, legacyDiscount, legacyId, name, price); } 
@override String toString() { return 'ZonesZonePlan(canSubscribe: $canSubscribe, currency: $currency, externallyManaged: $externallyManaged, frequency: $frequency, id: $id, isSubscribed: $isSubscribed, legacyDiscount: $legacyDiscount, legacyId: $legacyId, name: $name, price: $price)'; } 
 }
