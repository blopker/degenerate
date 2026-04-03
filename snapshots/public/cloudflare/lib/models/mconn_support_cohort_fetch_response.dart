// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_support_cohort.dart';@immutable final class MconnSupportCohortFetchResponse {const MconnSupportCohortFetchResponse({this.result});

factory MconnSupportCohortFetchResponse.fromJson(Map<String, dynamic> json) { return MconnSupportCohortFetchResponse(
  result: json['result'] != null ? MconnSupportCohort.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnSupportCohort? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnSupportCohortFetchResponse copyWith({MconnSupportCohort Function()? result}) { return MconnSupportCohortFetchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSupportCohortFetchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnSupportCohortFetchResponse(result: $result)'; } 
 }
