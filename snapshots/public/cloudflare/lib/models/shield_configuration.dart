// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_auth_id_characteristics2.dart';@immutable final class ShieldConfiguration {const ShieldConfiguration({required this.authIdCharacteristics});

factory ShieldConfiguration.fromJson(Map<String, dynamic> json) { return ShieldConfiguration(
  authIdCharacteristics: (json['auth_id_characteristics'] as List<dynamic>).map(ShieldAuthIdCharacteristics2.fromJson).toList(),
); }

final List<ShieldAuthIdCharacteristics2> authIdCharacteristics;

Map<String, dynamic> toJson() { return {
  'auth_id_characteristics': authIdCharacteristics.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('auth_id_characteristics'); } 
ShieldConfiguration copyWith({List<ShieldAuthIdCharacteristics2>? authIdCharacteristics}) { return ShieldConfiguration(
  authIdCharacteristics: authIdCharacteristics ?? this.authIdCharacteristics,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldConfiguration &&
          listEquals(authIdCharacteristics, other.authIdCharacteristics); } 
@override int get hashCode { return Object.hashAll(authIdCharacteristics).hashCode; } 
@override String toString() { return 'ShieldConfiguration(authIdCharacteristics: $authIdCharacteristics)'; } 
 }
