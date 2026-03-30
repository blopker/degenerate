// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_intents_intent_confirm_request_hooks_inputs_tax.dart';final class PostPaymentIntentsIntentConfirmRequestHooksInputs {const PostPaymentIntentsIntentConfirmRequestHooksInputs({this.tax});

factory PostPaymentIntentsIntentConfirmRequestHooksInputs.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentConfirmRequestHooksInputs(
  tax: json['tax'] != null ? PostPaymentIntentsIntentConfirmRequestHooksInputsTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
); }

final PostPaymentIntentsIntentConfirmRequestHooksInputsTax? tax;

Map<String, dynamic> toJson() { return {
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tax'}.contains(key)); } 
PostPaymentIntentsIntentConfirmRequestHooksInputs copyWith({PostPaymentIntentsIntentConfirmRequestHooksInputsTax Function()? tax}) { return PostPaymentIntentsIntentConfirmRequestHooksInputs(
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestHooksInputs &&
          tax == other.tax; } 
@override int get hashCode { return tax.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestHooksInputs(tax: $tax)'; } 
 }
