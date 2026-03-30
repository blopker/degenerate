// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_resource_group.dart';final class AccountResourceGroupUpdateResponse {const AccountResourceGroupUpdateResponse({this.result});

factory AccountResourceGroupUpdateResponse.fromJson(Map<String, dynamic> json) { return AccountResourceGroupUpdateResponse(
  result: json['result'] != null ? IamResourceGroup.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamResourceGroup? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountResourceGroupUpdateResponse copyWith({IamResourceGroup Function()? result}) { return AccountResourceGroupUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountResourceGroupUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccountResourceGroupUpdateResponse(result: $result)'; } 
 }
