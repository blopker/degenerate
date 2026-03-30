// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_page_test_.dart';import 'observatory_result_info.dart';final class ObservatoryPageTestResponseCollection {const ObservatoryPageTestResponseCollection({this.result, this.resultInfo, });

factory ObservatoryPageTestResponseCollection.fromJson(Map<String, dynamic> json) { return ObservatoryPageTestResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ObservatoryPageTest.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? ObservatoryResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ObservatoryPageTest>? result;

final ObservatoryResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'result_info'}.contains(key)); } 
ObservatoryPageTestResponseCollection copyWith({List<ObservatoryPageTest> Function()? result, ObservatoryResultInfo Function()? resultInfo, }) { return ObservatoryPageTestResponseCollection(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryPageTestResponseCollection &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'ObservatoryPageTestResponseCollection(result: $result, resultInfo: $resultInfo)'; } 
 }
