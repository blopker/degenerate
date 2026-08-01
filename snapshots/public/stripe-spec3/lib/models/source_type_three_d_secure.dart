// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeThreeDSecure {const SourceTypeThreeDSecure({this.addressLine1Check = const Omittable.absent(), this.addressZipCheck = const Omittable.absent(), this.authenticated = const Omittable.absent(), this.brand = const Omittable.absent(), this.card = const Omittable.absent(), this.country = const Omittable.absent(), this.customer = const Omittable.absent(), this.cvcCheck = const Omittable.absent(), this.dynamicLast4 = const Omittable.absent(), this.expMonth = const Omittable.absent(), this.expYear = const Omittable.absent(), this.fingerprint, this.funding = const Omittable.absent(), this.last4 = const Omittable.absent(), this.name = const Omittable.absent(), this.threeDSecure, this.tokenizationMethod = const Omittable.absent(), });

factory SourceTypeThreeDSecure.fromJson(Map<String, dynamic> json) { return SourceTypeThreeDSecure(
  addressLine1Check: json.containsKey('address_line1_check') ? Omittable(json['address_line1_check'] as String?) : const Omittable.absent(),
  addressZipCheck: json.containsKey('address_zip_check') ? Omittable(json['address_zip_check'] as String?) : const Omittable.absent(),
  authenticated: json.containsKey('authenticated') ? Omittable(json['authenticated'] as bool?) : const Omittable.absent(),
  brand: json.containsKey('brand') ? Omittable(json['brand'] as String?) : const Omittable.absent(),
  card: json.containsKey('card') ? Omittable(json['card'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  customer: json.containsKey('customer') ? Omittable(json['customer'] as String?) : const Omittable.absent(),
  cvcCheck: json.containsKey('cvc_check') ? Omittable(json['cvc_check'] as String?) : const Omittable.absent(),
  dynamicLast4: json.containsKey('dynamic_last4') ? Omittable(json['dynamic_last4'] as String?) : const Omittable.absent(),
  expMonth: json.containsKey('exp_month') ? Omittable(json['exp_month'] != null ? (json['exp_month'] as num).toInt() : null) : const Omittable.absent(),
  expYear: json.containsKey('exp_year') ? Omittable(json['exp_year'] != null ? (json['exp_year'] as num).toInt() : null) : const Omittable.absent(),
  fingerprint: json['fingerprint'] as String?,
  funding: json.containsKey('funding') ? Omittable(json['funding'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  threeDSecure: json['three_d_secure'] as String?,
  tokenizationMethod: json.containsKey('tokenization_method') ? Omittable(json['tokenization_method'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> addressLine1Check;

final Omittable<String?> addressZipCheck;

final Omittable<bool?> authenticated;

final Omittable<String?> brand;

final Omittable<String?> card;

final Omittable<String?> country;

final Omittable<String?> customer;

final Omittable<String?> cvcCheck;

final Omittable<String?> dynamicLast4;

final Omittable<int?> expMonth;

final Omittable<int?> expYear;

final String? fingerprint;

final Omittable<String?> funding;

final Omittable<String?> last4;

final Omittable<String?> name;

final String? threeDSecure;

final Omittable<String?> tokenizationMethod;

Map<String, dynamic> toJson() { return {
  if (addressLine1Check.isPresent) 'address_line1_check': addressLine1Check.value,
  if (addressZipCheck.isPresent) 'address_zip_check': addressZipCheck.value,
  if (authenticated.isPresent) 'authenticated': authenticated.value,
  if (brand.isPresent) 'brand': brand.value,
  if (card.isPresent) 'card': card.value,
  if (country.isPresent) 'country': country.value,
  if (customer.isPresent) 'customer': customer.value,
  if (cvcCheck.isPresent) 'cvc_check': cvcCheck.value,
  if (dynamicLast4.isPresent) 'dynamic_last4': dynamicLast4.value,
  if (expMonth.isPresent) 'exp_month': expMonth.value,
  if (expYear.isPresent) 'exp_year': expYear.value,
  'fingerprint': ?fingerprint,
  if (funding.isPresent) 'funding': funding.value,
  if (last4.isPresent) 'last4': last4.value,
  if (name.isPresent) 'name': name.value,
  'three_d_secure': ?threeDSecure,
  if (tokenizationMethod.isPresent) 'tokenization_method': tokenizationMethod.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address_line1_check', 'address_zip_check', 'authenticated', 'brand', 'card', 'country', 'customer', 'cvc_check', 'dynamic_last4', 'exp_month', 'exp_year', 'fingerprint', 'funding', 'last4', 'name', 'three_d_secure', 'tokenization_method'}.contains(key)); } 
SourceTypeThreeDSecure copyWith({Omittable<String?>? addressLine1Check, Omittable<String?>? addressZipCheck, Omittable<bool?>? authenticated, Omittable<String?>? brand, Omittable<String?>? card, Omittable<String?>? country, Omittable<String?>? customer, Omittable<String?>? cvcCheck, Omittable<String?>? dynamicLast4, Omittable<int?>? expMonth, Omittable<int?>? expYear, String? Function()? fingerprint, Omittable<String?>? funding, Omittable<String?>? last4, Omittable<String?>? name, String? Function()? threeDSecure, Omittable<String?>? tokenizationMethod, }) { return SourceTypeThreeDSecure(
  addressLine1Check: addressLine1Check ?? this.addressLine1Check,
  addressZipCheck: addressZipCheck ?? this.addressZipCheck,
  authenticated: authenticated ?? this.authenticated,
  brand: brand ?? this.brand,
  card: card ?? this.card,
  country: country ?? this.country,
  customer: customer ?? this.customer,
  cvcCheck: cvcCheck ?? this.cvcCheck,
  dynamicLast4: dynamicLast4 ?? this.dynamicLast4,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  funding: funding ?? this.funding,
  last4: last4 ?? this.last4,
  name: name ?? this.name,
  threeDSecure: threeDSecure != null ? threeDSecure() : this.threeDSecure,
  tokenizationMethod: tokenizationMethod ?? this.tokenizationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeThreeDSecure &&
          addressLine1Check == other.addressLine1Check &&
          addressZipCheck == other.addressZipCheck &&
          authenticated == other.authenticated &&
          brand == other.brand &&
          card == other.card &&
          country == other.country &&
          customer == other.customer &&
          cvcCheck == other.cvcCheck &&
          dynamicLast4 == other.dynamicLast4 &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          last4 == other.last4 &&
          name == other.name &&
          threeDSecure == other.threeDSecure &&
          tokenizationMethod == other.tokenizationMethod; } 
@override int get hashCode { return Object.hash(addressLine1Check, addressZipCheck, authenticated, brand, card, country, customer, cvcCheck, dynamicLast4, expMonth, expYear, fingerprint, funding, last4, name, threeDSecure, tokenizationMethod); } 
@override String toString() { return 'SourceTypeThreeDSecure(addressLine1Check: $addressLine1Check, addressZipCheck: $addressZipCheck, authenticated: $authenticated, brand: $brand, card: $card, country: $country, customer: $customer, cvcCheck: $cvcCheck, dynamicLast4: $dynamicLast4, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, last4: $last4, name: $name, threeDSecure: $threeDSecure, tokenizationMethod: $tokenizationMethod)'; } 
 }
