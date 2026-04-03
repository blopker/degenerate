// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_capture_request_hooks_inputs_tax_calculation.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestHooksInputsTax {const PostPaymentIntentsIntentCaptureRequestHooksInputsTax({required this.calculation});

factory PostPaymentIntentsIntentCaptureRequestHooksInputsTax.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentCaptureRequestHooksInputsTax(
  calculation: OneOf2.parse(json['calculation'], fromA: (v) => v as String, fromB: (v) => PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculationVariant2.fromJson(v as String),),
); }

final PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation calculation;

Map<String, dynamic> toJson() { return {
  'calculation': calculation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('calculation'); } 
PostPaymentIntentsIntentCaptureRequestHooksInputsTax copyWith({PostPaymentIntentsIntentCaptureRequestHooksInputsTaxCalculation? calculation}) { return PostPaymentIntentsIntentCaptureRequestHooksInputsTax(
  calculation: calculation ?? this.calculation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestHooksInputsTax &&
          calculation == other.calculation; } 
@override int get hashCode { return calculation.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestHooksInputsTax(calculation: $calculation)'; } 
 }
