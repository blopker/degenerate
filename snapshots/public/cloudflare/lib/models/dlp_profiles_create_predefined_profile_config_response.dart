// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_predefined_profile_config.dart';@immutable final class DlpProfilesCreatePredefinedProfileConfigResponse {const DlpProfilesCreatePredefinedProfileConfigResponse({this.result});

factory DlpProfilesCreatePredefinedProfileConfigResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesCreatePredefinedProfileConfigResponse(
  result: json['result'] != null ? DlpPredefinedProfileConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpPredefinedProfileConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpProfilesCreatePredefinedProfileConfigResponse copyWith({DlpPredefinedProfileConfig Function()? result}) { return DlpProfilesCreatePredefinedProfileConfigResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesCreatePredefinedProfileConfigResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpProfilesCreatePredefinedProfileConfigResponse(result: $result)'; } 
 }
