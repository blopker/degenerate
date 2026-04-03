// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_custom_profile.dart';@immutable final class DlpProfilesListAllCustomProfilesResponse {const DlpProfilesListAllCustomProfilesResponse({this.result});

factory DlpProfilesListAllCustomProfilesResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesListAllCustomProfilesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DlpCustomProfile.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpCustomProfile>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpProfilesListAllCustomProfilesResponse copyWith({List<DlpCustomProfile> Function()? result}) { return DlpProfilesListAllCustomProfilesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesListAllCustomProfilesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlpProfilesListAllCustomProfilesResponse(result: $result)'; } 
 }
