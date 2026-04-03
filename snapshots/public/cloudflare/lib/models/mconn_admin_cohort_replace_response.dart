// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_cohort.dart';@immutable final class MconnAdminCohortReplaceResponse {const MconnAdminCohortReplaceResponse({this.result});

factory MconnAdminCohortReplaceResponse.fromJson(Map<String, dynamic> json) { return MconnAdminCohortReplaceResponse(
  result: json['result'] != null ? MconnAdminCohort.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminCohort? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminCohortReplaceResponse copyWith({MconnAdminCohort Function()? result}) { return MconnAdminCohortReplaceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminCohortReplaceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminCohortReplaceResponse(result: $result)'; } 
 }
