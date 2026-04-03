// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_profile.dart';import 'dlp_profile.dart';import 'integration_profile.dart';import 'predefined_profile.dart';@immutable final class DlpProfilesListAllProfilesResponse {const DlpProfilesListAllProfilesResponse({this.result});

factory DlpProfilesListAllProfilesResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesListAllProfilesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<DlpProfile>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpProfilesListAllProfilesResponse copyWith({List<DlpProfile> Function()? result}) { return DlpProfilesListAllProfilesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesListAllProfilesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlpProfilesListAllProfilesResponse(result: $result)'; } 
 }
