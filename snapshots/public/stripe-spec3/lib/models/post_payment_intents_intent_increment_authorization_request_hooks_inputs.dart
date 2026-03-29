// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_intents_intent_increment_authorization_request_hooks_inputs_tax.dart';final class PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputs {const PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputs({this.tax});

factory PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputs.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputs(
  tax: json['tax'] != null ? PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
); }

final PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTax? tax;

Map<String, dynamic> toJson() { return {
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputs copyWith({PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputsTax Function()? tax}) { return PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputs(
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputs &&
          tax == other.tax; } 
@override int get hashCode { return tax.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestHooksInputs(tax: $tax)'; } 
 }
