// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class KlarnaAddress {const KlarnaAddress({this.country});

factory KlarnaAddress.fromJson(Map<String, dynamic> json) { return KlarnaAddress(
  country: json['country'] as String?,
); }

/// The payer address country
final String? country;

Map<String, dynamic> toJson() { return {
  'country': ?country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'country'}.contains(key)); } 
KlarnaAddress copyWith({String? Function()? country}) { return KlarnaAddress(
  country: country != null ? country() : this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KlarnaAddress &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'KlarnaAddress(country: $country)'; } 
 }
