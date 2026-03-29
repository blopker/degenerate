// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_sessions_request_flow_data_subscription_update_confirm_discounts.dart';import 'post_billing_portal_sessions_request_flow_data_subscription_update_confirm_items.dart';final class PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirm {const PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirm({this.discounts, required this.items, required this.subscription, });

factory PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirm.fromJson(Map<String, dynamic> json) { return PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirm(
  discounts: (json['discounts'] as List<dynamic>?)?.map((e) => PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts.fromJson(e as Map<String, dynamic>)).toList(),
  items: (json['items'] as List<dynamic>).map((e) => PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmItems.fromJson(e as Map<String, dynamic>)).toList(),
  subscription: json['subscription'] as String,
); }

final List<PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts>? discounts;

final List<PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmItems> items;

final String subscription;

Map<String, dynamic> toJson() { return {
  if (discounts != null) 'discounts': discounts?.map((e) => e.toJson()).toList(),
  'items': items.map((e) => e.toJson()).toList(),
  'subscription': subscription,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('subscription') && json['subscription'] is String; } 
PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirm copyWith({List<PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts> Function()? discounts, List<PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmItems>? items, String? subscription, }) { return PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirm(
  discounts: discounts != null ? discounts() : this.discounts,
  items: items ?? this.items,
  subscription: subscription ?? this.subscription,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirm &&
          listEquals(discounts, other.discounts) &&
          listEquals(items, other.items) &&
          subscription == other.subscription; } 
@override int get hashCode { return Object.hash(Object.hashAll(discounts ?? const []), Object.hashAll(items), subscription); } 
@override String toString() { return 'PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirm(discounts: $discounts, items: $items, subscription: $subscription)'; } 
 }
