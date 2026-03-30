// GENERATED CODE - DO NOT MODIFY BY HAND

import 'observatory_page_test_.dart';final class ObservatoryPageTestResponseSingle {const ObservatoryPageTestResponseSingle({this.result});

factory ObservatoryPageTestResponseSingle.fromJson(Map<String, dynamic> json) { return ObservatoryPageTestResponseSingle(
  result: json['result'] != null ? ObservatoryPageTest.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ObservatoryPageTest? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ObservatoryPageTestResponseSingle copyWith({ObservatoryPageTest Function()? result}) { return ObservatoryPageTestResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryPageTestResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ObservatoryPageTestResponseSingle(result: $result)'; } 
 }
