// GENERATED CODE - DO NOT MODIFY BY HAND

final class SourceTypeThreeDSecure {const SourceTypeThreeDSecure({this.addressLine1Check, this.addressZipCheck, this.authenticated, this.brand, this.card, this.country, this.customer, this.cvcCheck, this.dynamicLast4, this.expMonth, this.expYear, this.fingerprint, this.funding, this.last4, this.name, this.threeDSecure, this.tokenizationMethod, });

factory SourceTypeThreeDSecure.fromJson(Map<String, dynamic> json) { return SourceTypeThreeDSecure(
  addressLine1Check: json['address_line1_check'] as String?,
  addressZipCheck: json['address_zip_check'] as String?,
  authenticated: json['authenticated'] as bool?,
  brand: json['brand'] as String?,
  card: json['card'] as String?,
  country: json['country'] as String?,
  customer: json['customer'] as String?,
  cvcCheck: json['cvc_check'] as String?,
  dynamicLast4: json['dynamic_last4'] as String?,
  expMonth: json['exp_month'] != null ? (json['exp_month'] as num).toInt() : null,
  expYear: json['exp_year'] != null ? (json['exp_year'] as num).toInt() : null,
  fingerprint: json['fingerprint'] as String?,
  funding: json['funding'] as String?,
  last4: json['last4'] as String?,
  name: json['name'] as String?,
  threeDSecure: json['three_d_secure'] as String?,
  tokenizationMethod: json['tokenization_method'] as String?,
); }

final String? addressLine1Check;

final String? addressZipCheck;

final bool? authenticated;

final String? brand;

final String? card;

final String? country;

final String? customer;

final String? cvcCheck;

final String? dynamicLast4;

final int? expMonth;

final int? expYear;

final String? fingerprint;

final String? funding;

final String? last4;

final String? name;

final String? threeDSecure;

final String? tokenizationMethod;

Map<String, dynamic> toJson() { return {
  'address_line1_check': ?addressLine1Check,
  'address_zip_check': ?addressZipCheck,
  'authenticated': ?authenticated,
  'brand': ?brand,
  'card': ?card,
  'country': ?country,
  'customer': ?customer,
  'cvc_check': ?cvcCheck,
  'dynamic_last4': ?dynamicLast4,
  'exp_month': ?expMonth,
  'exp_year': ?expYear,
  'fingerprint': ?fingerprint,
  'funding': ?funding,
  'last4': ?last4,
  'name': ?name,
  'three_d_secure': ?threeDSecure,
  'tokenization_method': ?tokenizationMethod,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address_line1_check', 'address_zip_check', 'authenticated', 'brand', 'card', 'country', 'customer', 'cvc_check', 'dynamic_last4', 'exp_month', 'exp_year', 'fingerprint', 'funding', 'last4', 'name', 'three_d_secure', 'tokenization_method'}.contains(key)); } 
SourceTypeThreeDSecure copyWith({String? Function()? addressLine1Check, String? Function()? addressZipCheck, bool? Function()? authenticated, String? Function()? brand, String? Function()? card, String? Function()? country, String? Function()? customer, String? Function()? cvcCheck, String? Function()? dynamicLast4, int? Function()? expMonth, int? Function()? expYear, String Function()? fingerprint, String? Function()? funding, String? Function()? last4, String? Function()? name, String Function()? threeDSecure, String? Function()? tokenizationMethod, }) { return SourceTypeThreeDSecure(
  addressLine1Check: addressLine1Check != null ? addressLine1Check() : this.addressLine1Check,
  addressZipCheck: addressZipCheck != null ? addressZipCheck() : this.addressZipCheck,
  authenticated: authenticated != null ? authenticated() : this.authenticated,
  brand: brand != null ? brand() : this.brand,
  card: card != null ? card() : this.card,
  country: country != null ? country() : this.country,
  customer: customer != null ? customer() : this.customer,
  cvcCheck: cvcCheck != null ? cvcCheck() : this.cvcCheck,
  dynamicLast4: dynamicLast4 != null ? dynamicLast4() : this.dynamicLast4,
  expMonth: expMonth != null ? expMonth() : this.expMonth,
  expYear: expYear != null ? expYear() : this.expYear,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  funding: funding != null ? funding() : this.funding,
  last4: last4 != null ? last4() : this.last4,
  name: name != null ? name() : this.name,
  threeDSecure: threeDSecure != null ? threeDSecure() : this.threeDSecure,
  tokenizationMethod: tokenizationMethod != null ? tokenizationMethod() : this.tokenizationMethod,
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
