// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_profile.dart';import 'dlp_profile.dart';import 'integration_profile.dart';import 'predefined_profile.dart';final class DlpProfilesCreateCustomProfilesResponse {const DlpProfilesCreateCustomProfilesResponse({this.result});

factory DlpProfilesCreateCustomProfilesResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesCreateCustomProfilesResponse(
  result: json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null,
); }

final DlpProfile? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpProfilesCreateCustomProfilesResponse copyWith({DlpProfile Function()? result}) { return DlpProfilesCreateCustomProfilesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesCreateCustomProfilesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpProfilesCreateCustomProfilesResponse(result: $result)'; } 
 }
