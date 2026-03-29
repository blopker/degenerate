// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEntitiesAsnListResponseResultAsns {const RadarGetEntitiesAsnListResponseResultAsns({this.aka, required this.asn, required this.country, required this.countryName, required this.name, this.orgName, this.website, });

factory RadarGetEntitiesAsnListResponseResultAsns.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesAsnListResponseResultAsns(
  aka: json['aka'] as String?,
  asn: (json['asn'] as num).toInt(),
  country: json['country'] as String,
  countryName: json['countryName'] as String,
  name: json['name'] as String,
  orgName: json['orgName'] as String?,
  website: json['website'] as String?,
); }

final String? aka;

final int asn;

final String country;

final String countryName;

final String name;

final String? orgName;

final String? website;

Map<String, dynamic> toJson() { return {
  'aka': ?aka,
  'asn': asn,
  'country': country,
  'countryName': countryName,
  'name': name,
  'orgName': ?orgName,
  'website': ?website,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn') && json['asn'] is num &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('countryName') && json['countryName'] is String &&
      json.containsKey('name') && json['name'] is String; } 
RadarGetEntitiesAsnListResponseResultAsns copyWith({String Function()? aka, int? asn, String? country, String? countryName, String? name, String Function()? orgName, String Function()? website, }) { return RadarGetEntitiesAsnListResponseResultAsns(
  aka: aka != null ? aka() : this.aka,
  asn: asn ?? this.asn,
  country: country ?? this.country,
  countryName: countryName ?? this.countryName,
  name: name ?? this.name,
  orgName: orgName != null ? orgName() : this.orgName,
  website: website != null ? website() : this.website,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesAsnListResponseResultAsns &&
          aka == other.aka &&
          asn == other.asn &&
          country == other.country &&
          countryName == other.countryName &&
          name == other.name &&
          orgName == other.orgName &&
          website == other.website; } 
@override int get hashCode { return Object.hash(aka, asn, country, countryName, name, orgName, website); } 
@override String toString() { return 'RadarGetEntitiesAsnListResponseResultAsns(aka: $aka, asn: $asn, country: $country, countryName: $countryName, name: $name, orgName: $orgName, website: $website)'; } 
 }
