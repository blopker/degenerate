// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation {const PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation({this.customMessage});

factory PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation.fromJson(Map<String, dynamic> json) { return PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation(
  customMessage: json['custom_message'] as String?,
); }

final String? customMessage;

Map<String, dynamic> toJson() { return {
  'custom_message': ?customMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_message'}.contains(key)); } 
PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation copyWith({String Function()? customMessage}) { return PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation(
  customMessage: customMessage != null ? customMessage() : this.customMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation &&
          customMessage == other.customMessage; } 
@override int get hashCode { return customMessage.hashCode; } 
@override String toString() { return 'PostBillingPortalSessionsRequestFlowDataAfterCompletionHostedConfirmation(customMessage: $customMessage)'; } 
 }
