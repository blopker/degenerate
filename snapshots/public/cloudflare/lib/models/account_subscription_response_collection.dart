// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription2.dart';@immutable final class AccountSubscriptionResponseCollection {const AccountSubscriptionResponseCollection({this.result});

factory AccountSubscriptionResponseCollection.fromJson(Map<String, dynamic> json) { return AccountSubscriptionResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => Subscription2.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<Subscription2>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountSubscriptionResponseCollection copyWith({List<Subscription2> Function()? result}) { return AccountSubscriptionResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSubscriptionResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccountSubscriptionResponseCollection(result: $result)'; } 
 }
