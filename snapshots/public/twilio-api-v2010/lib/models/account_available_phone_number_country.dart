// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountAvailablePhoneNumberCountry {const AccountAvailablePhoneNumberCountry({this.countryCode, this.country, this.uri, this.beta, this.subresourceUris, });

factory AccountAvailablePhoneNumberCountry.fromJson(Map<String, dynamic> json) { return AccountAvailablePhoneNumberCountry(
  countryCode: json['country_code'] as String?,
  country: json['country'] as String?,
  uri: json['uri'] != null ? Uri.parse(json['uri'] as String) : null,
  beta: json['beta'] as bool?,
  subresourceUris: (json['subresource_uris'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

/// The [ISO-3166-1](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code of the country.
final String? countryCode;

/// The name of the country.
final String? country;

/// The URI of the Country resource, relative to `https://api.twilio.com`.
final Uri? uri;

/// Whether all phone numbers available in the country are new to the Twilio platform. `true` if they are and `false` if all numbers are not in the Twilio Phone Number Beta program.
final bool? beta;

/// A list of related AvailablePhoneNumber resources identified by their URIs relative to `https://api.twilio.com`.
final Map<String,dynamic>? subresourceUris;

Map<String, dynamic> toJson() { return {
  'country_code': ?countryCode,
  'country': ?country,
  if (uri != null) 'uri': uri?.toString(),
  'beta': ?beta,
  'subresource_uris': ?subresourceUris,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country_code', 'country', 'uri', 'beta', 'subresource_uris'}.contains(key)); } 
AccountAvailablePhoneNumberCountry copyWith({String? Function()? countryCode, String? Function()? country, Uri? Function()? uri, bool? Function()? beta, Map<String, dynamic>? Function()? subresourceUris, }) { return AccountAvailablePhoneNumberCountry(
  countryCode: countryCode != null ? countryCode() : this.countryCode,
  country: country != null ? country() : this.country,
  uri: uri != null ? uri() : this.uri,
  beta: beta != null ? beta() : this.beta,
  subresourceUris: subresourceUris != null ? subresourceUris() : this.subresourceUris,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountAvailablePhoneNumberCountry &&
          countryCode == other.countryCode &&
          country == other.country &&
          uri == other.uri &&
          beta == other.beta &&
          subresourceUris == other.subresourceUris; } 
@override int get hashCode { return Object.hash(countryCode, country, uri, beta, subresourceUris); } 
@override String toString() { return 'AccountAvailablePhoneNumberCountry(countryCode: $countryCode, country: $country, uri: $uri, beta: $beta, subresourceUris: $subresourceUris)'; } 
 }
