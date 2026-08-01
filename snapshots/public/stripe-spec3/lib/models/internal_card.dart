// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class InternalCard {const InternalCard({this.brand = const Omittable.absent(), this.country = const Omittable.absent(), this.expMonth = const Omittable.absent(), this.expYear = const Omittable.absent(), this.last4 = const Omittable.absent(), });

factory InternalCard.fromJson(Map<String, dynamic> json) { return InternalCard(
  brand: json.containsKey('brand') ? Omittable(json['brand'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  expMonth: json.containsKey('exp_month') ? Omittable(json['exp_month'] != null ? (json['exp_month'] as num).toInt() : null) : const Omittable.absent(),
  expYear: json.containsKey('exp_year') ? Omittable(json['exp_year'] != null ? (json['exp_year'] as num).toInt() : null) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
); }

/// Brand of the card used in the transaction
final Omittable<String?> brand;

/// Two-letter ISO code representing the country of the card
final Omittable<String?> country;

/// Two digit number representing the card's expiration month
final Omittable<int?> expMonth;

/// Two digit number representing the card's expiration year
final Omittable<int?> expYear;

/// The last 4 digits of the card
final Omittable<String?> last4;

Map<String, dynamic> toJson() { return {
  if (brand.isPresent) 'brand': brand.value,
  if (country.isPresent) 'country': country.value,
  if (expMonth.isPresent) 'exp_month': expMonth.value,
  if (expYear.isPresent) 'exp_year': expYear.value,
  if (last4.isPresent) 'last4': last4.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'brand', 'country', 'exp_month', 'exp_year', 'last4'}.contains(key)); } 
InternalCard copyWith({Omittable<String?>? brand, Omittable<String?>? country, Omittable<int?>? expMonth, Omittable<int?>? expYear, Omittable<String?>? last4, }) { return InternalCard(
  brand: brand ?? this.brand,
  country: country ?? this.country,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  last4: last4 ?? this.last4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InternalCard &&
          brand == other.brand &&
          country == other.country &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          last4 == other.last4; } 
@override int get hashCode { return Object.hash(brand, country, expMonth, expYear, last4); } 
@override String toString() { return 'InternalCard(brand: $brand, country: $country, expMonth: $expMonth, expYear: $expYear, last4: $last4)'; } 
 }
