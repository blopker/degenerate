// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_admin_cohort.dart';final class MconnAdminCohortFetchResponse {const MconnAdminCohortFetchResponse({this.result});

factory MconnAdminCohortFetchResponse.fromJson(Map<String, dynamic> json) { return MconnAdminCohortFetchResponse(
  result: json['result'] != null ? MconnAdminCohort.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminCohort? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminCohortFetchResponse copyWith({MconnAdminCohort Function()? result}) { return MconnAdminCohortFetchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminCohortFetchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminCohortFetchResponse(result: $result)'; } 
 }
