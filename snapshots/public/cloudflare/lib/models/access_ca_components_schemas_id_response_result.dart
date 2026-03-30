// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_components_schemas_id.dart';final class AccessCaComponentsSchemasIdResponseResult {const AccessCaComponentsSchemasIdResponseResult({this.id});

factory AccessCaComponentsSchemasIdResponseResult.fromJson(Map<String, dynamic> json) { return AccessCaComponentsSchemasIdResponseResult(
  id: json['id'] != null ? AccessComponentsSchemasId.fromJson(json['id'] as String) : null,
); }

final AccessComponentsSchemasId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AccessCaComponentsSchemasIdResponseResult copyWith({AccessComponentsSchemasId Function()? id}) { return AccessCaComponentsSchemasIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCaComponentsSchemasIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AccessCaComponentsSchemasIdResponseResult(id: $id)'; } 
 }
