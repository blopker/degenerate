// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_member_with_policies.dart';final class IamCollectionMemberResponseWithPolicies {const IamCollectionMemberResponseWithPolicies({this.result});

factory IamCollectionMemberResponseWithPolicies.fromJson(Map<String, dynamic> json) { return IamCollectionMemberResponseWithPolicies(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamMemberWithPolicies.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamMemberWithPolicies>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamCollectionMemberResponseWithPolicies copyWith({List<IamMemberWithPolicies> Function()? result}) { return IamCollectionMemberResponseWithPolicies(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCollectionMemberResponseWithPolicies &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamCollectionMemberResponseWithPolicies(result: $result)'; } 
 }
