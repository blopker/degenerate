// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_intents_intent_request_hooks_inputs.dart';/// Automations to be run during the PaymentIntent lifecycle
final class PostPaymentIntentsIntentRequestHooks {const PostPaymentIntentsIntentRequestHooks({this.inputs});

factory PostPaymentIntentsIntentRequestHooks.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestHooks(
  inputs: json['inputs'] != null ? PostPaymentIntentsIntentRequestHooksInputs.fromJson(json['inputs'] as Map<String, dynamic>) : null,
); }

final PostPaymentIntentsIntentRequestHooksInputs? inputs;

Map<String, dynamic> toJson() { return {
  if (inputs != null) 'inputs': inputs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'inputs'}.contains(key)); } 
PostPaymentIntentsIntentRequestHooks copyWith({PostPaymentIntentsIntentRequestHooksInputs Function()? inputs}) { return PostPaymentIntentsIntentRequestHooks(
  inputs: inputs != null ? inputs() : this.inputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestHooks &&
          inputs == other.inputs; } 
@override int get hashCode { return inputs.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestHooks(inputs: $inputs)'; } 
 }
