// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasPolicyCheckResponseResultUserIdentityGeo {const AccessSchemasPolicyCheckResponseResultUserIdentityGeo({this.country});

factory AccessSchemasPolicyCheckResponseResultUserIdentityGeo.fromJson(Map<String, dynamic> json) { return AccessSchemasPolicyCheckResponseResultUserIdentityGeo(
  country: json['country'] as String?,
); }

final String? country;

Map<String, dynamic> toJson() { return {
  'country': ?country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country'}.contains(key)); } 
AccessSchemasPolicyCheckResponseResultUserIdentityGeo copyWith({String Function()? country}) { return AccessSchemasPolicyCheckResponseResultUserIdentityGeo(
  country: country != null ? country() : this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasPolicyCheckResponseResultUserIdentityGeo &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'AccessSchemasPolicyCheckResponseResultUserIdentityGeo(country: $country)'; } 
 }
