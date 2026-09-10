// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountAvailablePhoneNumberCountry {const AccountAvailablePhoneNumberCountry({this.countryCode = const Omittable.absent(), this.country = const Omittable.absent(), this.uri = const Omittable.absent(), this.beta = const Omittable.absent(), this.subresourceUris = const Omittable.absent(), });

factory AccountAvailablePhoneNumberCountry.fromJson(Map<String, dynamic> json) { return AccountAvailablePhoneNumberCountry(
  countryCode: json.containsKey('country_code') ? Omittable(json['country_code'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] != null ? Uri.parse(json['uri'] as String) : null) : const Omittable.absent(),
  beta: json.containsKey('beta') ? Omittable(json['beta'] as bool?) : const Omittable.absent(),
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
); }

/// The [ISO-3166-1](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code of the country.
final Omittable<String?> countryCode;

/// The name of the country.
final Omittable<String?> country;

/// The URI of the Country resource, relative to `https://api.twilio.com`.
final Omittable<Uri?> uri;

/// Whether all phone numbers available in the country are new to the Twilio platform. `true` if they are and `false` if all numbers are not in the Twilio Phone Number Beta program.
final Omittable<bool?> beta;

/// A list of related AvailablePhoneNumber resources identified by their URIs relative to `https://api.twilio.com`.
final Omittable<Map<String,dynamic>?> subresourceUris;

Map<String, dynamic> toJson() { return {
  if (countryCode.isPresent) 'country_code': countryCode.value,
  if (country.isPresent) 'country': country.value,
  if (uri.isPresent) 'uri': uri.value?.toString(),
  if (beta.isPresent) 'beta': beta.value,
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country_code', 'country', 'uri', 'beta', 'subresource_uris'}.contains(key)); } 
AccountAvailablePhoneNumberCountry copyWith({Omittable<String?>? countryCode, Omittable<String?>? country, Omittable<Uri?>? uri, Omittable<bool?>? beta, Omittable<Map<String,dynamic>?>? subresourceUris, }) { return AccountAvailablePhoneNumberCountry(
  countryCode: countryCode ?? this.countryCode,
  country: country ?? this.country,
  uri: uri ?? this.uri,
  beta: beta ?? this.beta,
  subresourceUris: subresourceUris ?? this.subresourceUris,
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
