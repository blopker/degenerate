// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_limits.dart';final class DlpLimitsGetResponse {const DlpLimitsGetResponse({this.result});

factory DlpLimitsGetResponse.fromJson(Map<String, dynamic> json) { return DlpLimitsGetResponse(
  result: json['result'] != null ? DlpLimits.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpLimits? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpLimitsGetResponse copyWith({DlpLimits Function()? result}) { return DlpLimitsGetResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpLimitsGetResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpLimitsGetResponse(result: $result)'; } 
 }
