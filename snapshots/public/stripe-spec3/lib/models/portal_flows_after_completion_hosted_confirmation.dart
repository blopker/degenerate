// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PortalFlowsAfterCompletionHostedConfirmation {const PortalFlowsAfterCompletionHostedConfirmation({this.customMessage});

factory PortalFlowsAfterCompletionHostedConfirmation.fromJson(Map<String, dynamic> json) { return PortalFlowsAfterCompletionHostedConfirmation(
  customMessage: json['custom_message'] as String?,
); }

/// A custom message to display to the customer after the flow is completed.
final String? customMessage;

Map<String, dynamic> toJson() { return {
  'custom_message': ?customMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_message'}.contains(key)); } 
PortalFlowsAfterCompletionHostedConfirmation copyWith({String? Function()? customMessage}) { return PortalFlowsAfterCompletionHostedConfirmation(
  customMessage: customMessage != null ? customMessage() : this.customMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsAfterCompletionHostedConfirmation &&
          customMessage == other.customMessage; } 
@override int get hashCode { return customMessage.hashCode; } 
@override String toString() { return 'PortalFlowsAfterCompletionHostedConfirmation(customMessage: $customMessage)'; } 
 }
