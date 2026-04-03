// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_cohort.dart';@immutable final class MconnAdminCohortListResponse {const MconnAdminCohortListResponse({this.result});

factory MconnAdminCohortListResponse.fromJson(Map<String, dynamic> json) { return MconnAdminCohortListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MconnAdminCohort.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnAdminCohort>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminCohortListResponse copyWith({List<MconnAdminCohort> Function()? result}) { return MconnAdminCohortListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminCohortListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MconnAdminCohortListResponse(result: $result)'; } 
 }
