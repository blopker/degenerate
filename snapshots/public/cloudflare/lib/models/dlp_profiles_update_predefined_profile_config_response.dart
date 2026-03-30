// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_predefined_profile_config.dart';final class DlpProfilesUpdatePredefinedProfileConfigResponse {const DlpProfilesUpdatePredefinedProfileConfigResponse({this.result});

factory DlpProfilesUpdatePredefinedProfileConfigResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesUpdatePredefinedProfileConfigResponse(
  result: json['result'] != null ? DlpPredefinedProfileConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpPredefinedProfileConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpProfilesUpdatePredefinedProfileConfigResponse copyWith({DlpPredefinedProfileConfig Function()? result}) { return DlpProfilesUpdatePredefinedProfileConfigResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesUpdatePredefinedProfileConfigResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpProfilesUpdatePredefinedProfileConfigResponse(result: $result)'; } 
 }
