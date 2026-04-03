// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_id.dart';@immutable final class AccessSchemasIdResponseResult {const AccessSchemasIdResponseResult({this.id});

factory AccessSchemasIdResponseResult.fromJson(Map<String, dynamic> json) { return AccessSchemasIdResponseResult(
  id: json['id'] != null ? AccessSchemasId.fromJson(json['id'] as String) : null,
); }

/// The ID of the CA.
final AccessSchemasId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AccessSchemasIdResponseResult copyWith({AccessSchemasId Function()? id}) { return AccessSchemasIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AccessSchemasIdResponseResult(id: $id)'; } 
 }
