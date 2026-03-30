// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_user_invite.dart';final class IamSchemasCollectionInviteResponse {const IamSchemasCollectionInviteResponse({this.result});

factory IamSchemasCollectionInviteResponse.fromJson(Map<String, dynamic> json) { return IamSchemasCollectionInviteResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamUserInvite.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamUserInvite>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSchemasCollectionInviteResponse copyWith({List<IamUserInvite> Function()? result}) { return IamSchemasCollectionInviteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSchemasCollectionInviteResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamSchemasCollectionInviteResponse(result: $result)'; } 
 }
