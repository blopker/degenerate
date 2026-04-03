// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_capture_request_hooks_inputs_tax.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestHooksInputs {const PostPaymentIntentsIntentCaptureRequestHooksInputs({this.tax});

factory PostPaymentIntentsIntentCaptureRequestHooksInputs.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentCaptureRequestHooksInputs(
  tax: json['tax'] != null ? PostPaymentIntentsIntentCaptureRequestHooksInputsTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
); }

final PostPaymentIntentsIntentCaptureRequestHooksInputsTax? tax;

Map<String, dynamic> toJson() { return {
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tax'}.contains(key)); } 
PostPaymentIntentsIntentCaptureRequestHooksInputs copyWith({PostPaymentIntentsIntentCaptureRequestHooksInputsTax Function()? tax}) { return PostPaymentIntentsIntentCaptureRequestHooksInputs(
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestHooksInputs &&
          tax == other.tax; } 
@override int get hashCode { return tax.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestHooksInputs(tax: $tax)'; } 
 }
