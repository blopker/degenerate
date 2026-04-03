// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_profile.dart';import 'dlp_profile.dart';import 'integration_profile.dart';import 'predefined_profile.dart';@immutable final class DlpProfilesGetDlpProfileResponse {const DlpProfilesGetDlpProfileResponse({this.result});

factory DlpProfilesGetDlpProfileResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesGetDlpProfileResponse(
  result: json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null,
); }

final DlpProfile? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpProfilesGetDlpProfileResponse copyWith({DlpProfile Function()? result}) { return DlpProfilesGetDlpProfileResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesGetDlpProfileResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpProfilesGetDlpProfileResponse(result: $result)'; } 
 }
