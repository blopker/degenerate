// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_request_hooks_inputs_tax_calculation.dart';final class PostPaymentIntentsIntentRequestHooksInputsTax {const PostPaymentIntentsIntentRequestHooksInputsTax({required this.calculation});

factory PostPaymentIntentsIntentRequestHooksInputsTax.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestHooksInputsTax(
  calculation: OneOf2.parse(json['calculation'], fromA: (v) => v as String, fromB: (v) => PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2.fromJson(v as String),),
); }

final PostPaymentIntentsIntentRequestHooksInputsTaxCalculation calculation;

Map<String, dynamic> toJson() { return {
  'calculation': calculation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('calculation'); } 
PostPaymentIntentsIntentRequestHooksInputsTax copyWith({PostPaymentIntentsIntentRequestHooksInputsTaxCalculation? calculation}) { return PostPaymentIntentsIntentRequestHooksInputsTax(
  calculation: calculation ?? this.calculation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestHooksInputsTax &&
          calculation == other.calculation; } 
@override int get hashCode { return calculation.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestHooksInputsTax(calculation: $calculation)'; } 
 }
