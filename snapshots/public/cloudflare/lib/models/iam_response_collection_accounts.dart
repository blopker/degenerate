// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_account.dart';@immutable final class IamResponseCollectionAccounts {const IamResponseCollectionAccounts({this.result});

factory IamResponseCollectionAccounts.fromJson(Map<String, dynamic> json) { return IamResponseCollectionAccounts(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamAccount.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamAccount>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamResponseCollectionAccounts copyWith({List<IamAccount> Function()? result}) { return IamResponseCollectionAccounts(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamResponseCollectionAccounts &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamResponseCollectionAccounts(result: $result)'; } 
 }
