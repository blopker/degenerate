// GENERATED CODE - DO NOT MODIFY BY HAND

import 'observatory_trend.dart';final class ObservatoryTrendResponse {const ObservatoryTrendResponse({this.result});

factory ObservatoryTrendResponse.fromJson(Map<String, dynamic> json) { return ObservatoryTrendResponse(
  result: json['result'] != null ? ObservatoryTrend.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ObservatoryTrend? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ObservatoryTrendResponse copyWith({ObservatoryTrend Function()? result}) { return ObservatoryTrendResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryTrendResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ObservatoryTrendResponse(result: $result)'; } 
 }
