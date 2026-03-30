// GENERATED CODE - DO NOT MODIFY BY HAND

final class DlpProfilesDeletePredefinedProfileResponse {const DlpProfilesDeletePredefinedProfileResponse({this.result});

factory DlpProfilesDeletePredefinedProfileResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesDeletePredefinedProfileResponse(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpProfilesDeletePredefinedProfileResponse copyWith({Map<String, dynamic>? Function()? result}) { return DlpProfilesDeletePredefinedProfileResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesDeletePredefinedProfileResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpProfilesDeletePredefinedProfileResponse(result: $result)'; } 
 }
