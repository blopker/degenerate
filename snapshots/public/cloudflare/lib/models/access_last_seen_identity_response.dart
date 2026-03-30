// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_identity.dart';final class AccessLastSeenIdentityResponse {const AccessLastSeenIdentityResponse({this.result});

factory AccessLastSeenIdentityResponse.fromJson(Map<String, dynamic> json) { return AccessLastSeenIdentityResponse(
  result: json['result'] != null ? AccessIdentity.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessIdentity? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessLastSeenIdentityResponse copyWith({AccessIdentity Function()? result}) { return AccessLastSeenIdentityResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessLastSeenIdentityResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessLastSeenIdentityResponse(result: $result)'; } 
 }
