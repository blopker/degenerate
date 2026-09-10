// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of location approximation. Always `approximate`.
@immutable final class ApproximateLocationType {const ApproximateLocationType._(this.value);

factory ApproximateLocationType.fromJson(String json) { return switch (json) {
  'approximate' => approximate,
  _ => ApproximateLocationType._(json),
}; }

static const ApproximateLocationType approximate = ApproximateLocationType._('approximate');

static const List<ApproximateLocationType> values = [approximate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApproximateLocationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ApproximateLocationType($value)'; } 
 }
@immutable final class ApproximateLocation {const ApproximateLocation({this.type = ApproximateLocationType.approximate, this.country = const Omittable.absent(), this.region = const Omittable.absent(), this.city = const Omittable.absent(), this.timezone = const Omittable.absent(), });

factory ApproximateLocation.fromJson(Map<String, dynamic> json) { return ApproximateLocation(
  type: ApproximateLocationType.fromJson(json['type'] as String),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  region: json.containsKey('region') ? Omittable(json['region'] as String?) : const Omittable.absent(),
  city: json.containsKey('city') ? Omittable(json['city'] as String?) : const Omittable.absent(),
  timezone: json.containsKey('timezone') ? Omittable(json['timezone'] as String?) : const Omittable.absent(),
); }

/// The type of location approximation. Always `approximate`.
final ApproximateLocationType type;

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
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
ApproximateLocation copyWith({ApproximateLocationType? type, Omittable<String?>? country, Omittable<String?>? region, Omittable<String?>? city, Omittable<String?>? timezone, }) { return ApproximateLocation(
  type: type ?? this.type,
  country: country ?? this.country,
  region: region ?? this.region,
  city: city ?? this.city,
  timezone: timezone ?? this.timezone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ApproximateLocation &&
          type == other.type &&
          country == other.country &&
          region == other.region &&
          city == other.city &&
          timezone == other.timezone; } 
@override int get hashCode { return Object.hash(type, country, region, city, timezone); } 
@override String toString() { return 'ApproximateLocation(type: $type, country: $country, region: $region, city: $city, timezone: $timezone)'; } 
 }
