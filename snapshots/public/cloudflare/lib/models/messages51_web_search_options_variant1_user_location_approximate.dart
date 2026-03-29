// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages51WebSearchOptionsVariant1UserLocationApproximate {const Messages51WebSearchOptionsVariant1UserLocationApproximate({this.city, this.country, this.region, this.timezone, });

factory Messages51WebSearchOptionsVariant1UserLocationApproximate.fromJson(Map<String, dynamic> json) { return Messages51WebSearchOptionsVariant1UserLocationApproximate(
  city: json['city'] as String?,
  country: json['country'] as String?,
  region: json['region'] as String?,
  timezone: json['timezone'] as String?,
); }

final String? city;

final String? country;

final String? region;

final String? timezone;

Map<String, dynamic> toJson() { return {
  'city': ?city,
  'country': ?country,
  'region': ?region,
  'timezone': ?timezone,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages51WebSearchOptionsVariant1UserLocationApproximate copyWith({String Function()? city, String Function()? country, String Function()? region, String Function()? timezone, }) { return Messages51WebSearchOptionsVariant1UserLocationApproximate(
  city: city != null ? city() : this.city,
  country: country != null ? country() : this.country,
  region: region != null ? region() : this.region,
  timezone: timezone != null ? timezone() : this.timezone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51WebSearchOptionsVariant1UserLocationApproximate &&
          city == other.city &&
          country == other.country &&
          region == other.region &&
          timezone == other.timezone; } 
@override int get hashCode { return Object.hash(city, country, region, timezone); } 
@override String toString() { return 'Messages51WebSearchOptionsVariant1UserLocationApproximate(city: $city, country: $country, region: $region, timezone: $timezone)'; } 
 }
