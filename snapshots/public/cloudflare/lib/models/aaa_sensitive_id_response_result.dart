// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// token in form of UUID
extension type const AaaToken(String value) {
factory AaaToken.fromJson(String json) => AaaToken(json);

String toJson() => value;

}
@immutable final class AaaSensitiveIdResponseResult {const AaaSensitiveIdResponseResult({this.id});

factory AaaSensitiveIdResponseResult.fromJson(Map<String, dynamic> json) { return AaaSensitiveIdResponseResult(
  id: json['id'] != null ? AaaToken.fromJson(json['id'] as String) : null,
); }

final AaaToken? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AaaSensitiveIdResponseResult copyWith({AaaToken Function()? id}) { return AaaSensitiveIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaSensitiveIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AaaSensitiveIdResponseResult(id: $id)'; } 
 }
