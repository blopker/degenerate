// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_target.dart';@immutable final class InfraTargetsListResponse {const InfraTargetsListResponse({this.result});

factory InfraTargetsListResponse.fromJson(Map<String, dynamic> json) { return InfraTargetsListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => InfraTarget.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<InfraTarget>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
InfraTargetsListResponse copyWith({List<InfraTarget> Function()? result}) { return InfraTargetsListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTargetsListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'InfraTargetsListResponse(result: $result)'; } 
 }
