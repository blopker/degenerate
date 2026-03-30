// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_policy_init_resp_result.dart';final class AccessPolicyInitResp {const AccessPolicyInitResp({this.result});

factory AccessPolicyInitResp.fromJson(Map<String, dynamic> json) { return AccessPolicyInitResp(
  result: json['result'] != null ? AccessPolicyInitRespResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessPolicyInitRespResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessPolicyInitResp copyWith({AccessPolicyInitRespResult Function()? result}) { return AccessPolicyInitResp(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyInitResp &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessPolicyInitResp(result: $result)'; } 
 }
