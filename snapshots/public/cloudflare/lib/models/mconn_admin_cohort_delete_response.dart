// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_cohort.dart';@immutable final class MconnAdminCohortDeleteResponse {const MconnAdminCohortDeleteResponse({this.result});

factory MconnAdminCohortDeleteResponse.fromJson(Map<String, dynamic> json) { return MconnAdminCohortDeleteResponse(
  result: json['result'] != null ? MconnAdminCohort.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminCohort? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminCohortDeleteResponse copyWith({MconnAdminCohort Function()? result}) { return MconnAdminCohortDeleteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminCohortDeleteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminCohortDeleteResponse(result: $result)'; } 
 }
