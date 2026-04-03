// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_history.dart';@immutable final class AaaHistoryComponentsSchemasResponseCollection {const AaaHistoryComponentsSchemasResponseCollection({this.result, this.resultInfo, });

factory AaaHistoryComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AaaHistoryComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AaaHistory.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: (json['result_info'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final List<AaaHistory>? result;

final Map<String,dynamic>? resultInfo;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  'result_info': ?resultInfo,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'result_info'}.contains(key)); } 
AaaHistoryComponentsSchemasResponseCollection copyWith({List<AaaHistory> Function()? result, Map<String, dynamic> Function()? resultInfo, }) { return AaaHistoryComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaHistoryComponentsSchemasResponseCollection &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'AaaHistoryComponentsSchemasResponseCollection(result: $result, resultInfo: $resultInfo)'; } 
 }
