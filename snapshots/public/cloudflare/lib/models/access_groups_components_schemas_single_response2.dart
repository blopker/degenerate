// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_groups.dart';@immutable final class AccessGroupsComponentsSchemasSingleResponse2 {const AccessGroupsComponentsSchemasSingleResponse2({this.result});

factory AccessGroupsComponentsSchemasSingleResponse2.fromJson(Map<String, dynamic> json) { return AccessGroupsComponentsSchemasSingleResponse2(
  result: json['result'] != null ? AccessComponentsSchemasGroups.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessComponentsSchemasGroups? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessGroupsComponentsSchemasSingleResponse2 copyWith({AccessComponentsSchemasGroups Function()? result}) { return AccessGroupsComponentsSchemasSingleResponse2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGroupsComponentsSchemasSingleResponse2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessGroupsComponentsSchemasSingleResponse2(result: $result)'; } 
 }
