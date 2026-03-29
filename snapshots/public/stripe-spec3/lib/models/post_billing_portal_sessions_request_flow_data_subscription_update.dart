// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostBillingPortalSessionsRequestFlowDataSubscriptionUpdate {const PostBillingPortalSessionsRequestFlowDataSubscriptionUpdate({required this.subscription});

factory PostBillingPortalSessionsRequestFlowDataSubscriptionUpdate.fromJson(Map<String, dynamic> json) { return PostBillingPortalSessionsRequestFlowDataSubscriptionUpdate(
  subscription: json['subscription'] as String,
); }

final String subscription;

Map<String, dynamic> toJson() { return {
  'subscription': subscription,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('subscription') && json['subscription'] is String; } 
PostBillingPortalSessionsRequestFlowDataSubscriptionUpdate copyWith({String? subscription}) { return PostBillingPortalSessionsRequestFlowDataSubscriptionUpdate(
  subscription: subscription ?? this.subscription,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalSessionsRequestFlowDataSubscriptionUpdate &&
          subscription == other.subscription; } 
@override int get hashCode { return subscription.hashCode; } 
@override String toString() { return 'PostBillingPortalSessionsRequestFlowDataSubscriptionUpdate(subscription: $subscription)'; } 
 }
