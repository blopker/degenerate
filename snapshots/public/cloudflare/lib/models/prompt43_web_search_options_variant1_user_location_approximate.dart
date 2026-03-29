// GENERATED CODE - DO NOT MODIFY BY HAND

final class Prompt43WebSearchOptionsVariant1UserLocationApproximate {const Prompt43WebSearchOptionsVariant1UserLocationApproximate({this.city, this.country, this.region, this.timezone, });

factory Prompt43WebSearchOptionsVariant1UserLocationApproximate.fromJson(Map<String, dynamic> json) { return Prompt43WebSearchOptionsVariant1UserLocationApproximate(
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
Prompt43WebSearchOptionsVariant1UserLocationApproximate copyWith({String Function()? city, String Function()? country, String Function()? region, String Function()? timezone, }) { return Prompt43WebSearchOptionsVariant1UserLocationApproximate(
  city: city != null ? city() : this.city,
  country: country != null ? country() : this.country,
  region: region != null ? region() : this.region,
  timezone: timezone != null ? timezone() : this.timezone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43WebSearchOptionsVariant1UserLocationApproximate &&
          city == other.city &&
          country == other.country &&
          region == other.region &&
          timezone == other.timezone; } 
@override int get hashCode { return Object.hash(city, country, region, timezone); } 
@override String toString() { return 'Prompt43WebSearchOptionsVariant1UserLocationApproximate(city: $city, country: $country, region: $region, timezone: $timezone)'; } 
 }
