// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_schemas_ip.dart';@immutable final class IntelSchemasResponse {const IntelSchemasResponse({this.result});

factory IntelSchemasResponse.fromJson(Map<String, dynamic> json) { return IntelSchemasResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IntelSchemasIp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IntelSchemasIp>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IntelSchemasResponse copyWith({List<IntelSchemasIp> Function()? result}) { return IntelSchemasResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelSchemasResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IntelSchemasResponse(result: $result)'; } 
 }
