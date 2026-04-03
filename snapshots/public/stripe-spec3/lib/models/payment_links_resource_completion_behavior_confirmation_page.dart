// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentLinksResourceCompletionBehaviorConfirmationPage {const PaymentLinksResourceCompletionBehaviorConfirmationPage({this.customMessage});

factory PaymentLinksResourceCompletionBehaviorConfirmationPage.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCompletionBehaviorConfirmationPage(
  customMessage: json['custom_message'] as String?,
); }

/// The custom message that is displayed to the customer after the purchase is complete.
final String? customMessage;

Map<String, dynamic> toJson() { return {
  'custom_message': ?customMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_message'}.contains(key)); } 
PaymentLinksResourceCompletionBehaviorConfirmationPage copyWith({String? Function()? customMessage}) { return PaymentLinksResourceCompletionBehaviorConfirmationPage(
  customMessage: customMessage != null ? customMessage() : this.customMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceCompletionBehaviorConfirmationPage &&
          customMessage == other.customMessage; } 
@override int get hashCode { return customMessage.hashCode; } 
@override String toString() { return 'PaymentLinksResourceCompletionBehaviorConfirmationPage(customMessage: $customMessage)'; } 
 }
