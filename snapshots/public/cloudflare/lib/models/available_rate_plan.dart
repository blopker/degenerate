// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'currency.dart';import 'identifier.dart';import 'schemas_frequency.dart';import 'schemas_name.dart';/// Indicates whether you can subscribe to this plan.
extension type const CanSubscribe(bool value) {
factory CanSubscribe.fromJson(bool json) => CanSubscribe(json);

bool toJson() => value;

}
/// Indicates whether this plan is managed externally.
extension type const ExternallyManaged(bool value) {
factory ExternallyManaged.fromJson(bool json) => ExternallyManaged(json);

bool toJson() => value;

}
/// Indicates whether you are currently subscribed to this plan.
extension type const IsSubscribed(bool value) {
factory IsSubscribed.fromJson(bool json) => IsSubscribed(json);

bool toJson() => value;

}
/// Indicates whether this plan has a legacy discount applied.
extension type const LegacyDiscount(bool value) {
factory LegacyDiscount.fromJson(bool json) => LegacyDiscount(json);

bool toJson() => value;

}
/// The legacy identifier for this rate plan, if any.
extension type const LegacyId(String value) {
factory LegacyId.fromJson(String json) => LegacyId(json);

String toJson() => value;

}
/// The amount you will be billed for this plan.
extension type const SchemasPrice(double value) {
factory SchemasPrice.fromJson(num json) => SchemasPrice(json.toDouble());

num toJson() => value;

}
@immutable final class AvailableRatePlan {const AvailableRatePlan({this.canSubscribe, this.currency, this.externallyManaged, this.frequency, this.id, this.isSubscribed, this.legacyDiscount, this.legacyId, this.name, this.price, });

factory AvailableRatePlan.fromJson(Map<String, dynamic> json) { return AvailableRatePlan(
  canSubscribe: json['can_subscribe'] != null ? CanSubscribe.fromJson(json['can_subscribe'] as bool) : null,
  currency: json['currency'] != null ? Currency.fromJson(json['currency'] as String) : null,
  externallyManaged: json['externally_managed'] != null ? ExternallyManaged.fromJson(json['externally_managed'] as bool) : null,
  frequency: json['frequency'] != null ? SchemasFrequency.fromJson(json['frequency'] as String) : null,
  id: json['id'] != null ? Identifier.fromJson(json['id'] as String) : null,
  isSubscribed: json['is_subscribed'] != null ? IsSubscribed.fromJson(json['is_subscribed'] as bool) : null,
  legacyDiscount: json['legacy_discount'] != null ? LegacyDiscount.fromJson(json['legacy_discount'] as bool) : null,
  legacyId: json['legacy_id'] != null ? LegacyId.fromJson(json['legacy_id'] as String) : null,
  name: json['name'] != null ? SchemasName.fromJson(json['name'] as String) : null,
  price: json['price'] != null ? SchemasPrice.fromJson(json['price'] as num) : null,
); }

final CanSubscribe? canSubscribe;

final Currency? currency;

final ExternallyManaged? externallyManaged;

final SchemasFrequency? frequency;

final Identifier? id;

final IsSubscribed? isSubscribed;

final LegacyDiscount? legacyDiscount;

final LegacyId? legacyId;

final SchemasName? name;

final SchemasPrice? price;

Map<String, dynamic> toJson() { return {
  if (canSubscribe != null) 'can_subscribe': canSubscribe?.toJson(),
  if (currency != null) 'currency': currency?.toJson(),
  if (externallyManaged != null) 'externally_managed': externallyManaged?.toJson(),
  if (frequency != null) 'frequency': frequency?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (isSubscribed != null) 'is_subscribed': isSubscribed?.toJson(),
  if (legacyDiscount != null) 'legacy_discount': legacyDiscount?.toJson(),
  if (legacyId != null) 'legacy_id': legacyId?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (price != null) 'price': price?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'can_subscribe', 'currency', 'externally_managed', 'frequency', 'id', 'is_subscribed', 'legacy_discount', 'legacy_id', 'name', 'price'}.contains(key)); } 
AvailableRatePlan copyWith({CanSubscribe Function()? canSubscribe, Currency Function()? currency, ExternallyManaged Function()? externallyManaged, SchemasFrequency Function()? frequency, Identifier Function()? id, IsSubscribed Function()? isSubscribed, LegacyDiscount Function()? legacyDiscount, LegacyId Function()? legacyId, SchemasName Function()? name, SchemasPrice Function()? price, }) { return AvailableRatePlan(
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
      other is AvailableRatePlan &&
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
@override String toString() { return 'AvailableRatePlan(canSubscribe: $canSubscribe, currency: $currency, externallyManaged: $externallyManaged, frequency: $frequency, id: $id, isSubscribed: $isSubscribed, legacyDiscount: $legacyDiscount, legacyId: $legacyId, name: $name, price: $price)'; } 
 }
