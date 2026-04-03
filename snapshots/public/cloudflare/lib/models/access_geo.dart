// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessGeo {const AccessGeo({this.country});

factory AccessGeo.fromJson(Map<String, dynamic> json) { return AccessGeo(
  country: json['country'] as String?,
); }

final String? country;

Map<String, dynamic> toJson() { return {
  'country': ?country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country'}.contains(key)); } 
AccessGeo copyWith({String Function()? country}) { return AccessGeo(
  country: country != null ? country() : this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGeo &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'AccessGeo(country: $country)'; } 
 }
