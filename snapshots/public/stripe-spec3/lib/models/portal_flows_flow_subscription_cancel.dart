// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'portal_flows_retention.dart';/// 
@immutable final class PortalFlowsFlowSubscriptionCancel {const PortalFlowsFlowSubscriptionCancel({required this.subscription, this.retention = const Omittable.absent(), });

factory PortalFlowsFlowSubscriptionCancel.fromJson(Map<String, dynamic> json) { return PortalFlowsFlowSubscriptionCancel(
  retention: json.containsKey('retention') ? Omittable(json['retention'] != null ? PortalFlowsRetention.fromJson(json['retention'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  subscription: json['subscription'] as String,
); }

/// Specify a retention strategy to be used in the cancellation flow.
final Omittable<PortalFlowsRetention?> retention;

/// The ID of the subscription to be canceled.
final String subscription;

Map<String, dynamic> toJson() { return {
  if (retention.isPresent) 'retention': retention.value?.toJson(),
  'subscription': subscription,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('subscription') && json['subscription'] is String; } 
PortalFlowsFlowSubscriptionCancel copyWith({Omittable<PortalFlowsRetention?>? retention, String? subscription, }) { return PortalFlowsFlowSubscriptionCancel(
  retention: retention ?? this.retention,
  subscription: subscription ?? this.subscription,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsFlowSubscriptionCancel &&
          retention == other.retention &&
          subscription == other.subscription; } 
@override int get hashCode { return Object.hash(retention, subscription); } 
@override String toString() { return 'PortalFlowsFlowSubscriptionCancel(retention: $retention, subscription: $subscription)'; } 
 }
