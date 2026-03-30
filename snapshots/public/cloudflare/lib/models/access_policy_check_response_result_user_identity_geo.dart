// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessPolicyCheckResponseResultUserIdentityGeo {const AccessPolicyCheckResponseResultUserIdentityGeo({this.country});

factory AccessPolicyCheckResponseResultUserIdentityGeo.fromJson(Map<String, dynamic> json) { return AccessPolicyCheckResponseResultUserIdentityGeo(
  country: json['country'] as String?,
); }

final String? country;

Map<String, dynamic> toJson() { return {
  'country': ?country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country'}.contains(key)); } 
AccessPolicyCheckResponseResultUserIdentityGeo copyWith({String Function()? country}) { return AccessPolicyCheckResponseResultUserIdentityGeo(
  country: country != null ? country() : this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyCheckResponseResultUserIdentityGeo &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'AccessPolicyCheckResponseResultUserIdentityGeo(country: $country)'; } 
 }
