// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_collection_response_result.dart';@immutable final class IntelCollectionResponse {const IntelCollectionResponse({this.result});

factory IntelCollectionResponse.fromJson(Map<String, dynamic> json) { return IntelCollectionResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IntelCollectionResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IntelCollectionResponseResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IntelCollectionResponse copyWith({List<IntelCollectionResponseResult> Function()? result}) { return IntelCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelCollectionResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IntelCollectionResponse(result: $result)'; } 
 }
