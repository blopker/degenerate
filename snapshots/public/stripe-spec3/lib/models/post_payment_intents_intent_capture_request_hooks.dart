// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_capture_request_hooks_inputs.dart';/// Automations to be run during the PaymentIntent lifecycle
@immutable final class PostPaymentIntentsIntentCaptureRequestHooks {const PostPaymentIntentsIntentCaptureRequestHooks({this.inputs});

factory PostPaymentIntentsIntentCaptureRequestHooks.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentCaptureRequestHooks(
  inputs: json['inputs'] != null ? PostPaymentIntentsIntentCaptureRequestHooksInputs.fromJson(json['inputs'] as Map<String, dynamic>) : null,
); }

final PostPaymentIntentsIntentCaptureRequestHooksInputs? inputs;

Map<String, dynamic> toJson() { return {
  if (inputs != null) 'inputs': inputs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'inputs'}.contains(key)); } 
PostPaymentIntentsIntentCaptureRequestHooks copyWith({PostPaymentIntentsIntentCaptureRequestHooksInputs Function()? inputs}) { return PostPaymentIntentsIntentCaptureRequestHooks(
  inputs: inputs != null ? inputs() : this.inputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestHooks &&
          inputs == other.inputs; } 
@override int get hashCode { return inputs.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestHooks(inputs: $inputs)'; } 
 }
