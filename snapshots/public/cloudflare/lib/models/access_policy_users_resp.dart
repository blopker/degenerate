// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_policy_users.dart';final class AccessPolicyUsersResp {const AccessPolicyUsersResp({this.result});

factory AccessPolicyUsersResp.fromJson(Map<String, dynamic> json) { return AccessPolicyUsersResp(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessPolicyUsers.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Page of processed users.
final List<AccessPolicyUsers>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessPolicyUsersResp copyWith({List<AccessPolicyUsers> Function()? result}) { return AccessPolicyUsersResp(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyUsersResp &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessPolicyUsersResp(result: $result)'; } 
 }
