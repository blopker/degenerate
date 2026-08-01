// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class LegalEntityJapanAddress {const LegalEntityJapanAddress({this.city = const Omittable.absent(), this.country = const Omittable.absent(), this.line1 = const Omittable.absent(), this.line2 = const Omittable.absent(), this.postalCode = const Omittable.absent(), this.state = const Omittable.absent(), this.town = const Omittable.absent(), });

factory LegalEntityJapanAddress.fromJson(Map<String, dynamic> json) { return LegalEntityJapanAddress(
  city: json.containsKey('city') ? Omittable(json['city'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  line1: json.containsKey('line1') ? Omittable(json['line1'] as String?) : const Omittable.absent(),
  line2: json.containsKey('line2') ? Omittable(json['line2'] as String?) : const Omittable.absent(),
  postalCode: json.containsKey('postal_code') ? Omittable(json['postal_code'] as String?) : const Omittable.absent(),
  state: json.containsKey('state') ? Omittable(json['state'] as String?) : const Omittable.absent(),
  town: json.containsKey('town') ? Omittable(json['town'] as String?) : const Omittable.absent(),
); }

/// City/Ward.
final Omittable<String?> city;

/// Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
final Omittable<String?> country;

/// Block/Building number.
final Omittable<String?> line1;

/// Building details.
final Omittable<String?> line2;

/// ZIP or postal code.
final Omittable<String?> postalCode;

/// Prefecture.
final Omittable<String?> state;

/// Town/cho-me.
final Omittable<String?> town;

Map<String, dynamic> toJson() { return {
  if (city.isPresent) 'city': city.value,
  if (country.isPresent) 'country': country.value,
  if (line1.isPresent) 'line1': line1.value,
  if (line2.isPresent) 'line2': line2.value,
  if (postalCode.isPresent) 'postal_code': postalCode.value,
  if (state.isPresent) 'state': state.value,
  if (town.isPresent) 'town': town.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'city', 'country', 'line1', 'line2', 'postal_code', 'state', 'town'}.contains(key)); } 
LegalEntityJapanAddress copyWith({Omittable<String?>? city, Omittable<String?>? country, Omittable<String?>? line1, Omittable<String?>? line2, Omittable<String?>? postalCode, Omittable<String?>? state, Omittable<String?>? town, }) { return LegalEntityJapanAddress(
  city: city ?? this.city,
  country: country ?? this.country,
  line1: line1 ?? this.line1,
  line2: line2 ?? this.line2,
  postalCode: postalCode ?? this.postalCode,
  state: state ?? this.state,
  town: town ?? this.town,
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
