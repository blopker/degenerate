// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_uuid.dart';@immutable final class TokenValidationConfigDeleteResponseResult {const TokenValidationConfigDeleteResponseResult({this.id});

factory TokenValidationConfigDeleteResponseResult.fromJson(Map<String, dynamic> json) { return TokenValidationConfigDeleteResponseResult(
  id: json['id'] != null ? ShieldUuid.fromJson(json['id'] as String) : null,
); }

/// UUID.
final ShieldUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
TokenValidationConfigDeleteResponseResult copyWith({ShieldUuid Function()? id}) { return TokenValidationConfigDeleteResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationConfigDeleteResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'TokenValidationConfigDeleteResponseResult(id: $id)'; } 
 }
