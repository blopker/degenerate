// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_organizations.dart';final class AccessSingleResponse {const AccessSingleResponse({this.result});

factory AccessSingleResponse.fromJson(Map<String, dynamic> json) { return AccessSingleResponse(
  result: json['result'] != null ? AccessOrganizations.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessOrganizations? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSingleResponse copyWith({AccessOrganizations Function()? result}) { return AccessSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessSingleResponse(result: $result)'; } 
 }
