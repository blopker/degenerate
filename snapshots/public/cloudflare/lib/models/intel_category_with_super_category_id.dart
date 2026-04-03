// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IntelCategoryWithSuperCategoryId {const IntelCategoryWithSuperCategoryId({this.id, this.name, this.superCategoryId, });

factory IntelCategoryWithSuperCategoryId.fromJson(Map<String, dynamic> json) { return IntelCategoryWithSuperCategoryId(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
  superCategoryId: json['super_category_id'] != null ? (json['super_category_id'] as num).toInt() : null,
); }

final int? id;

final String? name;

final int? superCategoryId;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
  'super_category_id': ?superCategoryId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'super_category_id'}.contains(key)); } 
IntelCategoryWithSuperCategoryId copyWith({int Function()? id, String Function()? name, int Function()? superCategoryId, }) { return IntelCategoryWithSuperCategoryId(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  superCategoryId: superCategoryId != null ? superCategoryId() : this.superCategoryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelCategoryWithSuperCategoryId &&
          id == other.id &&
          name == other.name &&
          superCategoryId == other.superCategoryId; } 
@override int get hashCode { return Object.hash(id, name, superCategoryId); } 
@override String toString() { return 'IntelCategoryWithSuperCategoryId(id: $id, name: $name, superCategoryId: $superCategoryId)'; } 
 }
