// GENERATED CODE - DO NOT MODIFY BY HAND

import 'account_subscriptions_delete_subscription_response_result.dart';final class AccountSubscriptionsDeleteSubscriptionResponse {const AccountSubscriptionsDeleteSubscriptionResponse({this.result});

factory AccountSubscriptionsDeleteSubscriptionResponse.fromJson(Map<String, dynamic> json) { return AccountSubscriptionsDeleteSubscriptionResponse(
  result: json['result'] != null ? AccountSubscriptionsDeleteSubscriptionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccountSubscriptionsDeleteSubscriptionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountSubscriptionsDeleteSubscriptionResponse copyWith({AccountSubscriptionsDeleteSubscriptionResponseResult Function()? result}) { return AccountSubscriptionsDeleteSubscriptionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSubscriptionsDeleteSubscriptionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccountSubscriptionsDeleteSubscriptionResponse(result: $result)'; } 
 }
