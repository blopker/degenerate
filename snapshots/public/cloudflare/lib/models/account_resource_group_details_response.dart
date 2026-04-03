// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_resource_group.dart';@immutable final class AccountResourceGroupDetailsResponse {const AccountResourceGroupDetailsResponse({this.result});

factory AccountResourceGroupDetailsResponse.fromJson(Map<String, dynamic> json) { return AccountResourceGroupDetailsResponse(
  result: json['result'] != null ? IamResourceGroup.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamResourceGroup? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountResourceGroupDetailsResponse copyWith({IamResourceGroup Function()? result}) { return AccountResourceGroupDetailsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountResourceGroupDetailsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccountResourceGroupDetailsResponse(result: $result)'; } 
 }
