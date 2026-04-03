// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalFlowsAfterCompletionRedirect {const PortalFlowsAfterCompletionRedirect({required this.returnUrl});

factory PortalFlowsAfterCompletionRedirect.fromJson(Map<String, dynamic> json) { return PortalFlowsAfterCompletionRedirect(
  returnUrl: json['return_url'] as String,
); }

/// The URL the customer will be redirected to after the flow is completed.
final String returnUrl;

Map<String, dynamic> toJson() { return {
  'return_url': returnUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('return_url') && json['return_url'] is String; } 
PortalFlowsAfterCompletionRedirect copyWith({String? returnUrl}) { return PortalFlowsAfterCompletionRedirect(
  returnUrl: returnUrl ?? this.returnUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsAfterCompletionRedirect &&
          returnUrl == other.returnUrl; } 
@override int get hashCode { return returnUrl.hashCode; } 
@override String toString() { return 'PortalFlowsAfterCompletionRedirect(returnUrl: $returnUrl)'; } 
 }
