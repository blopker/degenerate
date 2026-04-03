// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ArgoAnalyticsResponseSingle {const ArgoAnalyticsResponseSingle({this.result});

factory ArgoAnalyticsResponseSingle.fromJson(Map<String, dynamic> json) { return ArgoAnalyticsResponseSingle(
  result: json['result'] as Map<String, dynamic>?,
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ArgoAnalyticsResponseSingle copyWith({Map<String, dynamic> Function()? result}) { return ArgoAnalyticsResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ArgoAnalyticsResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ArgoAnalyticsResponseSingle(result: $result)'; } 
 }
