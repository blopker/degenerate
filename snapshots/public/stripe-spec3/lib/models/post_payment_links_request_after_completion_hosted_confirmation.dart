// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksRequestAfterCompletionHostedConfirmation {const PostPaymentLinksRequestAfterCompletionHostedConfirmation({this.customMessage});

factory PostPaymentLinksRequestAfterCompletionHostedConfirmation.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestAfterCompletionHostedConfirmation(
  customMessage: json['custom_message'] as String?,
); }

final String? customMessage;

Map<String, dynamic> toJson() { return {
  'custom_message': ?customMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentLinksRequestAfterCompletionHostedConfirmation copyWith({String Function()? customMessage}) { return PostPaymentLinksRequestAfterCompletionHostedConfirmation(
  customMessage: customMessage != null ? customMessage() : this.customMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestAfterCompletionHostedConfirmation &&
          customMessage == other.customMessage; } 
@override int get hashCode { return customMessage.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestAfterCompletionHostedConfirmation(customMessage: $customMessage)'; } 
 }
