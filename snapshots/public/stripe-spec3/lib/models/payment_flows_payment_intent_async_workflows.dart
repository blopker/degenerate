// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_payment_intent_async_workflows_resource_inputs.dart';/// 
@immutable final class PaymentFlowsPaymentIntentAsyncWorkflows {const PaymentFlowsPaymentIntentAsyncWorkflows({this.inputs});

factory PaymentFlowsPaymentIntentAsyncWorkflows.fromJson(Map<String, dynamic> json) { return PaymentFlowsPaymentIntentAsyncWorkflows(
  inputs: json['inputs'] != null ? PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs.fromJson(json['inputs'] as Map<String, dynamic>) : null,
); }

final PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs? inputs;

Map<String, dynamic> toJson() { return {
  if (inputs != null) 'inputs': inputs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'inputs'}.contains(key)); } 
PaymentFlowsPaymentIntentAsyncWorkflows copyWith({PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs Function()? inputs}) { return PaymentFlowsPaymentIntentAsyncWorkflows(
  inputs: inputs != null ? inputs() : this.inputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsPaymentIntentAsyncWorkflows &&
          inputs == other.inputs; } 
@override int get hashCode { return inputs.hashCode; } 
@override String toString() { return 'PaymentFlowsPaymentIntentAsyncWorkflows(inputs: $inputs)'; } 
 }
