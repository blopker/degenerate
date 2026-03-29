// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_intents_intent_request_hooks_inputs_tax.dart';final class PostPaymentIntentsIntentRequestHooksInputs {const PostPaymentIntentsIntentRequestHooksInputs({this.tax});

factory PostPaymentIntentsIntentRequestHooksInputs.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestHooksInputs(
  tax: json['tax'] != null ? PostPaymentIntentsIntentRequestHooksInputsTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
); }

final PostPaymentIntentsIntentRequestHooksInputsTax? tax;

Map<String, dynamic> toJson() { return {
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tax'}.contains(key)); } 
PostPaymentIntentsIntentRequestHooksInputs copyWith({PostPaymentIntentsIntentRequestHooksInputsTax Function()? tax}) { return PostPaymentIntentsIntentRequestHooksInputs(
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestHooksInputs &&
          tax == other.tax; } 
@override int get hashCode { return tax.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestHooksInputs(tax: $tax)'; } 
 }
