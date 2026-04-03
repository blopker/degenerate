// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_ca.dart';@immutable final class AccessCaComponentsSchemasResponseCollection2 {const AccessCaComponentsSchemasResponseCollection2({this.result});

factory AccessCaComponentsSchemasResponseCollection2.fromJson(Map<String, dynamic> json) { return AccessCaComponentsSchemasResponseCollection2(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasCa.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessSchemasCa>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCaComponentsSchemasResponseCollection2 copyWith({List<AccessSchemasCa> Function()? result}) { return AccessCaComponentsSchemasResponseCollection2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCaComponentsSchemasResponseCollection2 &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessCaComponentsSchemasResponseCollection2(result: $result)'; } 
 }
