// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_expression_filter.dart';@immutable final class DosExpressionFilterListResponse {const DosExpressionFilterListResponse({this.result});

factory DosExpressionFilterListResponse.fromJson(Map<String, dynamic> json) { return DosExpressionFilterListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DosExpressionFilter.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DosExpressionFilter>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DosExpressionFilterListResponse copyWith({List<DosExpressionFilter> Function()? result}) { return DosExpressionFilterListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosExpressionFilterListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DosExpressionFilterListResponse(result: $result)'; } 
 }
