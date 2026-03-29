// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_active_from.dart';import 'post_tax_registrations_request_country_options.dart';final class PostTaxRegistrationsRequest {const PostTaxRegistrationsRequest({required this.activeFrom, required this.country, required this.countryOptions, this.expand, this.expiresAt, });

factory PostTaxRegistrationsRequest.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequest(
  activeFrom: OneOf2.parse(json['active_from'], fromA: (v) => PostTaxRegistrationsRequestActiveFromVariant1.fromJson(v as String), fromB: (v) => (v as num).toInt(),),
  country: json['country'] as String,
  countryOptions: PostTaxRegistrationsRequestCountryOptions.fromJson(json['country_options'] as Map<String, dynamic>),
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
); }

/// Time at which the Tax Registration becomes active. It can be either `now` to indicate the current time, or a future timestamp measured in seconds since the Unix epoch.
final PostTaxRegistrationsRequestActiveFrom activeFrom;

/// Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
final String country;

/// Specific options for a registration in the specified `country`.
final PostTaxRegistrationsRequestCountryOptions countryOptions;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// If set, the Tax Registration stops being active at this time. If not set, the Tax Registration will be active indefinitely. Timestamp measured in seconds since the Unix epoch.
final int? expiresAt;

Map<String, dynamic> toJson() { return {
  'active_from': activeFrom.toJson(),
  'country': country,
  'country_options': countryOptions.toJson(),
  'expand': ?expand,
  'expires_at': ?expiresAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('active_from') &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('country_options'); } 
PostTaxRegistrationsRequest copyWith({PostTaxRegistrationsRequestActiveFrom? activeFrom, String? country, PostTaxRegistrationsRequestCountryOptions? countryOptions, List<String> Function()? expand, int Function()? expiresAt, }) { return PostTaxRegistrationsRequest(
  activeFrom: activeFrom ?? this.activeFrom,
  country: country ?? this.country,
  countryOptions: countryOptions ?? this.countryOptions,
  expand: expand != null ? expand() : this.expand,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequest &&
          activeFrom == other.activeFrom &&
          country == other.country &&
          countryOptions == other.countryOptions &&
          listEquals(expand, other.expand) &&
          expiresAt == other.expiresAt; } 
@override int get hashCode { return Object.hash(activeFrom, country, countryOptions, Object.hashAll(expand ?? const []), expiresAt); } 
@override String toString() { return 'PostTaxRegistrationsRequest(activeFrom: $activeFrom, country: $country, countryOptions: $countryOptions, expand: $expand, expiresAt: $expiresAt)'; } 
 }
