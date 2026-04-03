// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpRiskScoreResetPostResponse {const DlpRiskScoreResetPostResponse({this.result});

factory DlpRiskScoreResetPostResponse.fromJson(Map<String, dynamic> json) { return DlpRiskScoreResetPostResponse(
  result: json['result'] as Map<String, dynamic>?,
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpRiskScoreResetPostResponse copyWith({Map<String, dynamic>? Function()? result}) { return DlpRiskScoreResetPostResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpRiskScoreResetPostResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpRiskScoreResetPostResponse(result: $result)'; } 
 }
