// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_admin_cohort.dart';final class MconnAdminCohortUpdateResponse {const MconnAdminCohortUpdateResponse({this.result});

factory MconnAdminCohortUpdateResponse.fromJson(Map<String, dynamic> json) { return MconnAdminCohortUpdateResponse(
  result: json['result'] != null ? MconnAdminCohort.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminCohort? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminCohortUpdateResponse copyWith({MconnAdminCohort Function()? result}) { return MconnAdminCohortUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminCohortUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminCohortUpdateResponse(result: $result)'; } 
 }
