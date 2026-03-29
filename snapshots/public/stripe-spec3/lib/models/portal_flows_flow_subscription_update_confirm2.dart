// GENERATED CODE - DO NOT MODIFY BY HAND

import 'portal_flows_flow_subscription_update_confirm.dart';/// Configuration when `flow.type=subscription_update_confirm`.
final class PortalFlowsFlowSubscriptionUpdateConfirm2 {const PortalFlowsFlowSubscriptionUpdateConfirm2({this.portalFlowsFlowSubscriptionUpdateConfirm});

factory PortalFlowsFlowSubscriptionUpdateConfirm2.fromJson(Map<String, dynamic> json) { return PortalFlowsFlowSubscriptionUpdateConfirm2(
  portalFlowsFlowSubscriptionUpdateConfirm: PortalFlowsFlowSubscriptionUpdateConfirm.canParse(json) ? PortalFlowsFlowSubscriptionUpdateConfirm.fromJson(json) : null,
); }

final PortalFlowsFlowSubscriptionUpdateConfirm? portalFlowsFlowSubscriptionUpdateConfirm;

/// At least one variant must be present.
bool get isValid { return portalFlowsFlowSubscriptionUpdateConfirm != null; } 
Map<String, dynamic> toJson() { return {
  ...?portalFlowsFlowSubscriptionUpdateConfirm?.toJson(),
}; } 
 }
