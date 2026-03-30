// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_predefined_profile_config.dart';final class DlpProfilesGetPredefinedProfileConfigResponse {const DlpProfilesGetPredefinedProfileConfigResponse({this.result});

factory DlpProfilesGetPredefinedProfileConfigResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesGetPredefinedProfileConfigResponse(
  result: json['result'] != null ? DlpPredefinedProfileConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpPredefinedProfileConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpProfilesGetPredefinedProfileConfigResponse copyWith({DlpPredefinedProfileConfig Function()? result}) { return DlpProfilesGetPredefinedProfileConfigResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesGetPredefinedProfileConfigResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpProfilesGetPredefinedProfileConfigResponse(result: $result)'; } 
 }
