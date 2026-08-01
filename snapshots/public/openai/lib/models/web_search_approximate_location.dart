// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of location approximation. Always `approximate`.
@immutable final class WebSearchApproximateLocationType {const WebSearchApproximateLocationType._(this.value);

factory WebSearchApproximateLocationType.fromJson(String json) { return switch (json) {
  'approximate' => approximate,
  _ => WebSearchApproximateLocationType._(json),
}; }

static const WebSearchApproximateLocationType approximate = WebSearchApproximateLocationType._('approximate');

static const List<WebSearchApproximateLocationType> values = [approximate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchApproximateLocationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebSearchApproximateLocationType($value)'; } 
 }
/// The approximate location of the user.
/// 
@immutable final class WebSearchApproximateLocation {const WebSearchApproximateLocation({this.type = WebSearchApproximateLocationType.approximate, this.country = const Omittable.absent(), this.region = const Omittable.absent(), this.city = const Omittable.absent(), this.timezone = const Omittable.absent(), });

factory WebSearchApproximateLocation.fromJson(Map<String, dynamic> json) { return WebSearchApproximateLocation(
  type: json.containsKey('type') ? WebSearchApproximateLocationType.fromJson(json['type'] as String) : WebSearchApproximateLocationType.approximate,
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  region: json.containsKey('region') ? Omittable(json['region'] as String?) : const Omittable.absent(),
  city: json.containsKey('city') ? Omittable(json['city'] as String?) : const Omittable.absent(),
  timezone: json.containsKey('timezone') ? Omittable(json['timezone'] as String?) : const Omittable.absent(),
); }

/// The type of location approximation. Always `approximate`.
final WebSearchApproximateLocationType type;

/// The two-letter [ISO country code](https://en.wikipedia.org/wiki/ISO_3166-1) of the user, e.g. `US`.
final Omittable<String?> country;

/// Free text input for the region of the user, e.g. `California`.
final Omittable<String?> region;

/// Free text input for the city of the user, e.g. `San Francisco`.
final Omittable<String?> city;

/// The [IANA timezone](https://timeapi.io/documentation/iana-timezones) of the user, e.g. `America/Los_Angeles`.
final Omittable<String?> timezone;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (country.isPresent) 'country': country.value,
  if (region.isPresent) 'region': region.value,
  if (city.isPresent) 'city': city.value,
  if (timezone.isPresent) 'timezone': timezone.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'country', 'region', 'city', 'timezone'}.contains(key)); } 
WebSearchApproximateLocation copyWith({WebSearchApproximateLocationType Function()? type, Omittable<String?>? country, Omittable<String?>? region, Omittable<String?>? city, Omittable<String?>? timezone, }) { return WebSearchApproximateLocation(
  type: type != null ? type() : this.type,
  country: country ?? this.country,
  region: region ?? this.region,
  city: city ?? this.city,
  timezone: timezone ?? this.timezone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchApproximateLocation &&
          type == other.type &&
          country == other.country &&
          region == other.region &&
          city == other.city &&
          timezone == other.timezone; } 
@override int get hashCode { return Object.hash(type, country, region, city, timezone); } 
@override String toString() { return 'WebSearchApproximateLocation(type: $type, country: $country, region: $region, city: $city, timezone: $timezone)'; } 
 }
