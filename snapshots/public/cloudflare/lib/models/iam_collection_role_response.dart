// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_role.dart';@immutable final class IamCollectionRoleResponse {const IamCollectionRoleResponse({this.result});

factory IamCollectionRoleResponse.fromJson(Map<String, dynamic> json) { return IamCollectionRoleResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamRole.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamRole>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamCollectionRoleResponse copyWith({List<IamRole> Function()? result}) { return IamCollectionRoleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCollectionRoleResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamCollectionRoleResponse(result: $result)'; } 
 }
