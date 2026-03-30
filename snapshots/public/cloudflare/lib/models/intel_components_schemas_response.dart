// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_ip_list.dart';final class IntelComponentsSchemasResponse {const IntelComponentsSchemasResponse({this.result});

factory IntelComponentsSchemasResponse.fromJson(Map<String, dynamic> json) { return IntelComponentsSchemasResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IntelIpList.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IntelIpList>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IntelComponentsSchemasResponse copyWith({List<IntelIpList> Function()? result}) { return IntelComponentsSchemasResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelComponentsSchemasResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IntelComponentsSchemasResponse(result: $result)'; } 
 }
