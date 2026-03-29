// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_confirm_request_hooks_inputs_tax_calculation.dart';final class PostPaymentIntentsIntentConfirmRequestHooksInputsTax {const PostPaymentIntentsIntentConfirmRequestHooksInputsTax({required this.calculation});

factory PostPaymentIntentsIntentConfirmRequestHooksInputsTax.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentConfirmRequestHooksInputsTax(
  calculation: OneOf2.parse(json['calculation'], fromA: (v) => v as String, fromB: (v) => PostPaymentIntentsIntentConfirmRequestHooksInputsTaxCalculationVariant2.fromJson(v as String),),
); }

final PostPaymentIntentsIntentConfirmRequestHooksInputsTaxCalculation calculation;

Map<String, dynamic> toJson() { return {
  'calculation': calculation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('calculation'); } 
PostPaymentIntentsIntentConfirmRequestHooksInputsTax copyWith({PostPaymentIntentsIntentConfirmRequestHooksInputsTaxCalculation? calculation}) { return PostPaymentIntentsIntentConfirmRequestHooksInputsTax(
  calculation: calculation ?? this.calculation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestHooksInputsTax &&
          calculation == other.calculation; } 
@override int get hashCode { return calculation.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestHooksInputsTax(calculation: $calculation)'; } 
 }
