// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_support_cohort.dart';@immutable final class MconnSupportCohortListResponse {const MconnSupportCohortListResponse({this.result});

factory MconnSupportCohortListResponse.fromJson(Map<String, dynamic> json) { return MconnSupportCohortListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MconnSupportCohort.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnSupportCohort>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnSupportCohortListResponse copyWith({List<MconnSupportCohort> Function()? result}) { return MconnSupportCohortListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSupportCohortListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MconnSupportCohortListResponse(result: $result)'; } 
 }
