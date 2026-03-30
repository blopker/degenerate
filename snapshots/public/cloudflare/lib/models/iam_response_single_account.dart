// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_account.dart';final class IamResponseSingleAccount {const IamResponseSingleAccount({this.result});

factory IamResponseSingleAccount.fromJson(Map<String, dynamic> json) { return IamResponseSingleAccount(
  result: json['result'] != null ? IamAccount.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamAccount? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamResponseSingleAccount copyWith({IamAccount Function()? result}) { return IamResponseSingleAccount(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamResponseSingleAccount &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamResponseSingleAccount(result: $result)'; } 
 }
