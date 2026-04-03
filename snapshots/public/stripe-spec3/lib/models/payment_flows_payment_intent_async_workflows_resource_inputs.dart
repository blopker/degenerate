// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_payment_intent_async_workflows_resource_inputs_resource_tax.dart';/// 
@immutable final class PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs {const PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs({this.tax});

factory PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs.fromJson(Map<String, dynamic> json) { return PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs(
  tax: json['tax'] != null ? PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
); }

final PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax? tax;

Map<String, dynamic> toJson() { return {
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tax'}.contains(key)); } 
PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs copyWith({PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax Function()? tax}) { return PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs(
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs &&
          tax == other.tax; } 
@override int get hashCode { return tax.hashCode; } 
@override String toString() { return 'PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs(tax: $tax)'; } 
 }
