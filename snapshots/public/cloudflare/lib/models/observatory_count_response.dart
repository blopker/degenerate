// GENERATED CODE - DO NOT MODIFY BY HAND

import 'observatory_count_response_result.dart';final class ObservatoryCountResponse {const ObservatoryCountResponse({this.result});

factory ObservatoryCountResponse.fromJson(Map<String, dynamic> json) { return ObservatoryCountResponse(
  result: json['result'] != null ? ObservatoryCountResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ObservatoryCountResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ObservatoryCountResponse copyWith({ObservatoryCountResponseResult Function()? result}) { return ObservatoryCountResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryCountResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ObservatoryCountResponse(result: $result)'; } 
 }
