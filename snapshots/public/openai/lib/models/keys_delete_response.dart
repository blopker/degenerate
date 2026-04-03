// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class KeysDeleteResponse {const KeysDeleteResponse({this.id, this.object, this.deleted, });

factory KeysDeleteResponse.fromJson(Map<String, dynamic> json) { return KeysDeleteResponse(
  id: json['id'] as String?,
  object: json['object'] as String?,
  deleted: json['deleted'] as bool?,
); }

final String? id;

final String? object;

final bool? deleted;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'object': ?object,
  'deleted': ?deleted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'object', 'deleted'}.contains(key)); } 
KeysDeleteResponse copyWith({String Function()? id, String Function()? object, bool Function()? deleted, }) { return KeysDeleteResponse(
  id: id != null ? id() : this.id,
  object: object != null ? object() : this.object,
  deleted: deleted != null ? deleted() : this.deleted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KeysDeleteResponse &&
          id == other.id &&
          object == other.object &&
          deleted == other.deleted; } 
@override int get hashCode { return Object.hash(id, object, deleted); } 
@override String toString() { return 'KeysDeleteResponse(id: $id, object: $object, deleted: $deleted)'; } 
 }
