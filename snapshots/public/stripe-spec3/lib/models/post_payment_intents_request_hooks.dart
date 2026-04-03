// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_request_hooks_inputs.dart';/// Automations to be run during the PaymentIntent lifecycle
@immutable final class PostPaymentIntentsRequestHooks {const PostPaymentIntentsRequestHooks({this.inputs});

factory PostPaymentIntentsRequestHooks.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestHooks(
  inputs: json['inputs'] != null ? PostPaymentIntentsRequestHooksInputs.fromJson(json['inputs'] as Map<String, dynamic>) : null,
); }

final PostPaymentIntentsRequestHooksInputs? inputs;

Map<String, dynamic> toJson() { return {
  if (inputs != null) 'inputs': inputs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'inputs'}.contains(key)); } 
PostPaymentIntentsRequestHooks copyWith({PostPaymentIntentsRequestHooksInputs Function()? inputs}) { return PostPaymentIntentsRequestHooks(
  inputs: inputs != null ? inputs() : this.inputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestHooks &&
          inputs == other.inputs; } 
@override int get hashCode { return inputs.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestHooks(inputs: $inputs)'; } 
 }
