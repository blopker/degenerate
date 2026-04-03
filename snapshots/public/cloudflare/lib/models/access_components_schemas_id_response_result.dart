// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_uuid.dart';@immutable final class AccessComponentsSchemasIdResponseResult {const AccessComponentsSchemasIdResponseResult({this.id});

factory AccessComponentsSchemasIdResponseResult.fromJson(Map<String, dynamic> json) { return AccessComponentsSchemasIdResponseResult(
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
); }

final AccessUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AccessComponentsSchemasIdResponseResult copyWith({AccessUuid Function()? id}) { return AccessComponentsSchemasIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessComponentsSchemasIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AccessComponentsSchemasIdResponseResult(id: $id)'; } 
 }
