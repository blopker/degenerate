// GENERATED CODE - DO NOT MODIFY BY HAND

/// Geodata for tracing request
final class AccountRequestTracerRequestTraceRequestContextGeoloc {const AccountRequestTracerRequestTraceRequestContextGeoloc({this.city, this.continent, this.isEuCountry, this.isoCode, this.latitude, this.longitude, this.postalCode, this.regionCode, this.subdivision2IsoCode, this.timezone, });

factory AccountRequestTracerRequestTraceRequestContextGeoloc.fromJson(Map<String, dynamic> json) { return AccountRequestTracerRequestTraceRequestContextGeoloc(
  city: json['city'] as String?,
  continent: json['continent'] as String?,
  isEuCountry: json['is_eu_country'] as bool?,
  isoCode: json['iso_code'] as String?,
  latitude: json['latitude'] != null ? (json['latitude'] as num).toDouble() : null,
  longitude: json['longitude'] != null ? (json['longitude'] as num).toDouble() : null,
  postalCode: json['postal_code'] as String?,
  regionCode: json['region_code'] as String?,
  subdivision2IsoCode: json['subdivision_2_iso_code'] as String?,
  timezone: json['timezone'] as String?,
); }

final String? city;

final String? continent;

final bool? isEuCountry;

final String? isoCode;

final double? latitude;

final double? longitude;

final String? postalCode;

final String? regionCode;

final String? subdivision2IsoCode;

final String? timezone;

Map<String, dynamic> toJson() { return {
  'city': ?city,
  'continent': ?continent,
  'is_eu_country': ?isEuCountry,
  'iso_code': ?isoCode,
  'latitude': ?latitude,
  'longitude': ?longitude,
  'postal_code': ?postalCode,
  'region_code': ?regionCode,
  'subdivision_2_iso_code': ?subdivision2IsoCode,
  'timezone': ?timezone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'city', 'continent', 'is_eu_country', 'iso_code', 'latitude', 'longitude', 'postal_code', 'region_code', 'subdivision_2_iso_code', 'timezone'}.contains(key)); } 
AccountRequestTracerRequestTraceRequestContextGeoloc copyWith({String Function()? city, String Function()? continent, bool Function()? isEuCountry, String Function()? isoCode, double Function()? latitude, double Function()? longitude, String Function()? postalCode, String Function()? regionCode, String Function()? subdivision2IsoCode, String Function()? timezone, }) { return AccountRequestTracerRequestTraceRequestContextGeoloc(
  city: city != null ? city() : this.city,
  continent: continent != null ? continent() : this.continent,
  isEuCountry: isEuCountry != null ? isEuCountry() : this.isEuCountry,
  isoCode: isoCode != null ? isoCode() : this.isoCode,
  latitude: latitude != null ? latitude() : this.latitude,
  longitude: longitude != null ? longitude() : this.longitude,
  postalCode: postalCode != null ? postalCode() : this.postalCode,
  regionCode: regionCode != null ? regionCode() : this.regionCode,
  subdivision2IsoCode: subdivision2IsoCode != null ? subdivision2IsoCode() : this.subdivision2IsoCode,
  timezone: timezone != null ? timezone() : this.timezone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRequestTracerRequestTraceRequestContextGeoloc &&
          city == other.city &&
          continent == other.continent &&
          isEuCountry == other.isEuCountry &&
          isoCode == other.isoCode &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          postalCode == other.postalCode &&
          regionCode == other.regionCode &&
          subdivision2IsoCode == other.subdivision2IsoCode &&
          timezone == other.timezone; } 
@override int get hashCode { return Object.hash(city, continent, isEuCountry, isoCode, latitude, longitude, postalCode, regionCode, subdivision2IsoCode, timezone); } 
@override String toString() { return 'AccountRequestTracerRequestTraceRequestContextGeoloc(city: $city, continent: $continent, isEuCountry: $isEuCountry, isoCode: $isoCode, latitude: $latitude, longitude: $longitude, postalCode: $postalCode, regionCode: $regionCode, subdivision2IsoCode: $subdivision2IsoCode, timezone: $timezone)'; } 
 }
