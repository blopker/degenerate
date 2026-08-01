// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalFlowsAfterCompletionHostedConfirmation {const PortalFlowsAfterCompletionHostedConfirmation({this.customMessage = const Omittable.absent()});

factory PortalFlowsAfterCompletionHostedConfirmation.fromJson(Map<String, dynamic> json) { return PortalFlowsAfterCompletionHostedConfirmation(
  customMessage: json.containsKey('custom_message') ? Omittable(json['custom_message'] as String?) : const Omittable.absent(),
); }

/// A custom message to display to the customer after the flow is completed.
final Omittable<String?> customMessage;

Map<String, dynamic> toJson() { return {
  if (customMessage.isPresent) 'custom_message': customMessage.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_message'}.contains(key)); } 
PortalFlowsAfterCompletionHostedConfirmation copyWith({Omittable<String?>? customMessage}) { return PortalFlowsAfterCompletionHostedConfirmation(
  customMessage: customMessage ?? this.customMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsAfterCompletionHostedConfirmation &&
          customMessage == other.customMessage; } 
@override int get hashCode { return customMessage.hashCode; } 
@override String toString() { return 'PortalFlowsAfterCompletionHostedConfirmation(customMessage: $customMessage)'; } 
 }
