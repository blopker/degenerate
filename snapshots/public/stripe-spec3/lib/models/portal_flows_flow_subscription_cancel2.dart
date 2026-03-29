// GENERATED CODE - DO NOT MODIFY BY HAND

import 'portal_flows_flow_subscription_cancel.dart';/// Configuration when `flow.type=subscription_cancel`.
final class PortalFlowsFlowSubscriptionCancel2 {const PortalFlowsFlowSubscriptionCancel2({this.portalFlowsFlowSubscriptionCancel});

factory PortalFlowsFlowSubscriptionCancel2.fromJson(Map<String, dynamic> json) { return PortalFlowsFlowSubscriptionCancel2(
  portalFlowsFlowSubscriptionCancel: PortalFlowsFlowSubscriptionCancel.canParse(json) ? PortalFlowsFlowSubscriptionCancel.fromJson(json) : null,
); }

final PortalFlowsFlowSubscriptionCancel? portalFlowsFlowSubscriptionCancel;

/// At least one variant must be present.
bool get isValid { return portalFlowsFlowSubscriptionCancel != null; } 
Map<String, dynamic> toJson() { return {
  ...?portalFlowsFlowSubscriptionCancel?.toJson(),
}; } 
 }
