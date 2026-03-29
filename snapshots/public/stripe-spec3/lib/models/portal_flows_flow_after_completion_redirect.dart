// GENERATED CODE - DO NOT MODIFY BY HAND

import 'portal_flows_after_completion_redirect.dart';/// Configuration when `after_completion.type=redirect`.
final class PortalFlowsFlowAfterCompletionRedirect {const PortalFlowsFlowAfterCompletionRedirect({this.portalFlowsAfterCompletionRedirect});

factory PortalFlowsFlowAfterCompletionRedirect.fromJson(Map<String, dynamic> json) { return PortalFlowsFlowAfterCompletionRedirect(
  portalFlowsAfterCompletionRedirect: PortalFlowsAfterCompletionRedirect.canParse(json) ? PortalFlowsAfterCompletionRedirect.fromJson(json) : null,
); }

final PortalFlowsAfterCompletionRedirect? portalFlowsAfterCompletionRedirect;

/// At least one variant must be present.
bool get isValid { return portalFlowsAfterCompletionRedirect != null; } 
Map<String, dynamic> toJson() { return {
  ...?portalFlowsAfterCompletionRedirect?.toJson(),
}; } 
 }
