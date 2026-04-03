// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TokenCardNetworks {const TokenCardNetworks({this.preferred});

factory TokenCardNetworks.fromJson(Map<String, dynamic> json) { return TokenCardNetworks(
  preferred: json['preferred'] as String?,
); }

/// The preferred network for co-branded cards. Can be `cartes_bancaires`, `mastercard`, `visa` or `invalid_preference` if requested network is not valid for the card.
final String? preferred;

Map<String, dynamic> toJson() { return {
  'preferred': ?preferred,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preferred'}.contains(key)); } 
TokenCardNetworks copyWith({String? Function()? preferred}) { return TokenCardNetworks(
  preferred: preferred != null ? preferred() : this.preferred,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenCardNetworks &&
          preferred == other.preferred; } 
@override int get hashCode { return preferred.hashCode; } 
@override String toString() { return 'TokenCardNetworks(preferred: $preferred)'; } 
 }
