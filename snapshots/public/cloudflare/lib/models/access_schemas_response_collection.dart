// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_groups.dart';final class AccessSchemasResponseCollection {const AccessSchemasResponseCollection({this.result});

factory AccessSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasGroups.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessSchemasGroups>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSchemasResponseCollection copyWith({List<AccessSchemasGroups> Function()? result}) { return AccessSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessSchemasResponseCollection(result: $result)'; } 
 }
