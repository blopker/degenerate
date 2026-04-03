// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_groups.dart';@immutable final class AccessGroupsComponentsSchemasResponseCollection {const AccessGroupsComponentsSchemasResponseCollection({this.result});

factory AccessGroupsComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessGroupsComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessComponentsSchemasGroups.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessComponentsSchemasGroups>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessGroupsComponentsSchemasResponseCollection copyWith({List<AccessComponentsSchemasGroups> Function()? result}) { return AccessGroupsComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGroupsComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessGroupsComponentsSchemasResponseCollection(result: $result)'; } 
 }
