// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription2.dart';@immutable final class AccountSubscriptionResponseSingle {const AccountSubscriptionResponseSingle({this.result});

factory AccountSubscriptionResponseSingle.fromJson(Map<String, dynamic> json) { return AccountSubscriptionResponseSingle(
  result: json['result'] != null ? Subscription2.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Subscription2? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountSubscriptionResponseSingle copyWith({Subscription2 Function()? result}) { return AccountSubscriptionResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSubscriptionResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccountSubscriptionResponseSingle(result: $result)'; } 
 }
