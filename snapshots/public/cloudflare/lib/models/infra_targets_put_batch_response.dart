// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_target.dart';@immutable final class InfraTargetsPutBatchResponse {const InfraTargetsPutBatchResponse({this.result});

factory InfraTargetsPutBatchResponse.fromJson(Map<String, dynamic> json) { return InfraTargetsPutBatchResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => InfraTarget.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<InfraTarget>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
InfraTargetsPutBatchResponse copyWith({List<InfraTarget> Function()? result}) { return InfraTargetsPutBatchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTargetsPutBatchResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'InfraTargetsPutBatchResponse(result: $result)'; } 
 }
