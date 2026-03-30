// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_membership.dart';final class IamCollectionMembershipResponse {const IamCollectionMembershipResponse({this.result});

factory IamCollectionMembershipResponse.fromJson(Map<String, dynamic> json) { return IamCollectionMembershipResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamMembership.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamMembership>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamCollectionMembershipResponse copyWith({List<IamMembership> Function()? result}) { return IamCollectionMembershipResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCollectionMembershipResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamCollectionMembershipResponse(result: $result)'; } 
 }
