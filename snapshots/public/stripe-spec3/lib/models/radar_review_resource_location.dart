// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class RadarReviewResourceLocation {const RadarReviewResourceLocation({this.city = const Omittable.absent(), this.country = const Omittable.absent(), this.latitude = const Omittable.absent(), this.longitude = const Omittable.absent(), this.region = const Omittable.absent(), });

factory RadarReviewResourceLocation.fromJson(Map<String, dynamic> json) { return RadarReviewResourceLocation(
  city: json.containsKey('city') ? Omittable(json['city'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  latitude: json.containsKey('latitude') ? Omittable(json['latitude'] != null ? (json['latitude'] as num).toDouble() : null) : const Omittable.absent(),
  longitude: json.containsKey('longitude') ? Omittable(json['longitude'] != null ? (json['longitude'] as num).toDouble() : null) : const Omittable.absent(),
  region: json.containsKey('region') ? Omittable(json['region'] as String?) : const Omittable.absent(),
); }

/// The city where the payment originated.
final Omittable<String?> city;

/// Two-letter ISO code representing the country where the payment originated.
final Omittable<String?> country;

/// The geographic latitude where the payment originated.
final Omittable<double?> latitude;

/// The geographic longitude where the payment originated.
final Omittable<double?> longitude;

/// The state/county/province/region where the payment originated.
final Omittable<String?> region;

Map<String, dynamic> toJson() { return {
  if (city.isPresent) 'city': city.value,
  if (country.isPresent) 'country': country.value,
  if (latitude.isPresent) 'latitude': latitude.value,
  if (longitude.isPresent) 'longitude': longitude.value,
  if (region.isPresent) 'region': region.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'city', 'country', 'latitude', 'longitude', 'region'}.contains(key)); } 
RadarReviewResourceLocation copyWith({Omittable<String?>? city, Omittable<String?>? country, Omittable<double?>? latitude, Omittable<double?>? longitude, Omittable<String?>? region, }) { return RadarReviewResourceLocation(
  city: city ?? this.city,
  country: country ?? this.country,
  latitude: latitude ?? this.latitude,
  longitude: longitude ?? this.longitude,
  region: region ?? this.region,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarReviewResourceLocation &&
          city == other.city &&
          country == other.country &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          region == other.region; } 
@override int get hashCode { return Object.hash(city, country, latitude, longitude, region); } 
@override String toString() { return 'RadarReviewResourceLocation(city: $city, country: $country, latitude: $latitude, longitude: $longitude, region: $region)'; } 
 }
