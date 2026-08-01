// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsPassthroughCard {const PaymentMethodDetailsPassthroughCard({this.brand = const Omittable.absent(), this.country = const Omittable.absent(), this.expMonth = const Omittable.absent(), this.expYear = const Omittable.absent(), this.funding = const Omittable.absent(), this.last4 = const Omittable.absent(), });

factory PaymentMethodDetailsPassthroughCard.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPassthroughCard(
  brand: json.containsKey('brand') ? Omittable(json['brand'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  expMonth: json.containsKey('exp_month') ? Omittable(json['exp_month'] != null ? (json['exp_month'] as num).toInt() : null) : const Omittable.absent(),
  expYear: json.containsKey('exp_year') ? Omittable(json['exp_year'] != null ? (json['exp_year'] as num).toInt() : null) : const Omittable.absent(),
  funding: json.containsKey('funding') ? Omittable(json['funding'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
); }

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final Omittable<String?> brand;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final Omittable<String?> country;

/// Two-digit number representing the card's expiration month.
final Omittable<int?> expMonth;

/// Four-digit number representing the card's expiration year.
final Omittable<int?> expYear;

/// Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
final Omittable<String?> funding;

/// The last four digits of the card.
final Omittable<String?> last4;

Map<String, dynamic> toJson() { return {
  if (brand.isPresent) 'brand': brand.value,
  if (country.isPresent) 'country': country.value,
  if (expMonth.isPresent) 'exp_month': expMonth.value,
  if (expYear.isPresent) 'exp_year': expYear.value,
  if (funding.isPresent) 'funding': funding.value,
  if (last4.isPresent) 'last4': last4.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'brand', 'country', 'exp_month', 'exp_year', 'funding', 'last4'}.contains(key)); } 
PaymentMethodDetailsPassthroughCard copyWith({Omittable<String?>? brand, Omittable<String?>? country, Omittable<int?>? expMonth, Omittable<int?>? expYear, Omittable<String?>? funding, Omittable<String?>? last4, }) { return PaymentMethodDetailsPassthroughCard(
  brand: brand ?? this.brand,
  country: country ?? this.country,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  funding: funding ?? this.funding,
  last4: last4 ?? this.last4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPassthroughCard &&
          brand == other.brand &&
          country == other.country &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          funding == other.funding &&
          last4 == other.last4; } 
@override int get hashCode { return Object.hash(brand, country, expMonth, expYear, funding, last4); } 
@override String toString() { return 'PaymentMethodDetailsPassthroughCard(brand: $brand, country: $country, expMonth: $expMonth, expYear: $expYear, funding: $funding, last4: $last4)'; } 
 }
