// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_settings.dart';final class AccessSchemasResponseCollectionHostnames {const AccessSchemasResponseCollectionHostnames({this.result});

factory AccessSchemasResponseCollectionHostnames.fromJson(Map<String, dynamic> json) { return AccessSchemasResponseCollectionHostnames(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasSettings.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessSchemasSettings>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSchemasResponseCollectionHostnames copyWith({List<AccessSchemasSettings> Function()? result}) { return AccessSchemasResponseCollectionHostnames(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasResponseCollectionHostnames &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessSchemasResponseCollectionHostnames(result: $result)'; } 
 }
