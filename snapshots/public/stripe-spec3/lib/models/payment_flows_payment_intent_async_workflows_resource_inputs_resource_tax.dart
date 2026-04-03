// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax {const PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax({required this.calculation});

factory PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax.fromJson(Map<String, dynamic> json) { return PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax(
  calculation: json['calculation'] as String,
); }

/// The [TaxCalculation](https://docs.stripe.com/api/tax/calculations) id
final String calculation;

Map<String, dynamic> toJson() { return {
  'calculation': calculation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('calculation') && json['calculation'] is String; } 
PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax copyWith({String? calculation}) { return PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax(
  calculation: calculation ?? this.calculation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax &&
          calculation == other.calculation; } 
@override int get hashCode { return calculation.hashCode; } 
@override String toString() { return 'PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax(calculation: $calculation)'; } 
 }
