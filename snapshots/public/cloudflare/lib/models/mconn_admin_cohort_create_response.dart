// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_admin_cohort.dart';final class MconnAdminCohortCreateResponse {const MconnAdminCohortCreateResponse({this.result});

factory MconnAdminCohortCreateResponse.fromJson(Map<String, dynamic> json) { return MconnAdminCohortCreateResponse(
  result: json['result'] != null ? MconnAdminCohort.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminCohort? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminCohortCreateResponse copyWith({MconnAdminCohort Function()? result}) { return MconnAdminCohortCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminCohortCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminCohortCreateResponse(result: $result)'; } 
 }
