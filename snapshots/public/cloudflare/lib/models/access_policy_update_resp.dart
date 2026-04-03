// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_policy_update_resp_result.dart';@immutable final class AccessPolicyUpdateResp {const AccessPolicyUpdateResp({this.result});

factory AccessPolicyUpdateResp.fromJson(Map<String, dynamic> json) { return AccessPolicyUpdateResp(
  result: json['result'] != null ? AccessPolicyUpdateRespResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessPolicyUpdateRespResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessPolicyUpdateResp copyWith({AccessPolicyUpdateRespResult Function()? result}) { return AccessPolicyUpdateResp(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyUpdateResp &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessPolicyUpdateResp(result: $result)'; } 
 }
