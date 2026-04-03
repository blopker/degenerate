// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_ca.dart';@immutable final class AccessCaComponentsSchemasSingleResponse2 {const AccessCaComponentsSchemasSingleResponse2({this.result});

factory AccessCaComponentsSchemasSingleResponse2.fromJson(Map<String, dynamic> json) { return AccessCaComponentsSchemasSingleResponse2(
  result: json['result'] != null ? AccessSchemasCa.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasCa? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCaComponentsSchemasSingleResponse2 copyWith({AccessSchemasCa Function()? result}) { return AccessCaComponentsSchemasSingleResponse2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCaComponentsSchemasSingleResponse2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessCaComponentsSchemasSingleResponse2(result: $result)'; } 
 }
