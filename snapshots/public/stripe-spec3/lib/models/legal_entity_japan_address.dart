// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class LegalEntityJapanAddress {const LegalEntityJapanAddress({this.city, this.country, this.line1, this.line2, this.postalCode, this.state, this.town, });

factory LegalEntityJapanAddress.fromJson(Map<String, dynamic> json) { return LegalEntityJapanAddress(
  city: json['city'] as String?,
  country: json['country'] as String?,
  line1: json['line1'] as String?,
  line2: json['line2'] as String?,
  postalCode: json['postal_code'] as String?,
  state: json['state'] as String?,
  town: json['town'] as String?,
); }

/// City/Ward.
final String? city;

/// Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
final String? country;

/// Block/Building number.
final String? line1;

/// Building details.
final String? line2;

/// ZIP or postal code.
final String? postalCode;

/// Prefecture.
final String? state;

/// Town/cho-me.
final String? town;

Map<String, dynamic> toJson() { return {
  'city': ?city,
  'country': ?country,
  'line1': ?line1,
  'line2': ?line2,
  'postal_code': ?postalCode,
  'state': ?state,
  'town': ?town,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'city', 'country', 'line1', 'line2', 'postal_code', 'state', 'town'}.contains(key)); } 
LegalEntityJapanAddress copyWith({String? Function()? city, String? Function()? country, String? Function()? line1, String? Function()? line2, String? Function()? postalCode, String? Function()? state, String? Function()? town, }) { return LegalEntityJapanAddress(
  city: city != null ? city() : this.city,
  country: country != null ? country() : this.country,
  line1: line1 != null ? line1() : this.line1,
  line2: line2 != null ? line2() : this.line2,
  postalCode: postalCode != null ? postalCode() : this.postalCode,
  state: state != null ? state() : this.state,
  town: town != null ? town() : this.town,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LegalEntityJapanAddress &&
          city == other.city &&
          country == other.country &&
          line1 == other.line1 &&
          line2 == other.line2 &&
          postalCode == other.postalCode &&
          state == other.state &&
          town == other.town; } 
@override int get hashCode { return Object.hash(city, country, line1, line2, postalCode, state, town); } 
@override String toString() { return 'LegalEntityJapanAddress(city: $city, country: $country, line1: $line1, line2: $line2, postalCode: $postalCode, state: $state, town: $town)'; } 
 }
