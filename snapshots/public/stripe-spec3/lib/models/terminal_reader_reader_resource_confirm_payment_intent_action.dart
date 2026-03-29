// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent.dart';import 'terminal_reader_reader_resource_confirm_config.dart';import 'terminal_reader_reader_resource_confirm_payment_intent_action_payment_intent.dart';/// Represents a reader action to confirm a payment
final class TerminalReaderReaderResourceConfirmPaymentIntentAction {const TerminalReaderReaderResourceConfirmPaymentIntentAction({this.confirmConfig, required this.paymentIntent, });

factory TerminalReaderReaderResourceConfirmPaymentIntentAction.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceConfirmPaymentIntentAction(
  confirmConfig: json['confirm_config'] != null ? TerminalReaderReaderResourceConfirmConfig.fromJson(json['confirm_config'] as Map<String, dynamic>) : null,
  paymentIntent: OneOf2.parse(json['payment_intent'], fromA: (v) => v as String, fromB: (v) => PaymentIntent.fromJson(v as Map<String, dynamic>),),
); }

final TerminalReaderReaderResourceConfirmConfig? confirmConfig;

/// Most recent PaymentIntent processed by the reader.
final TerminalReaderReaderResourceConfirmPaymentIntentActionPaymentIntent paymentIntent;

Map<String, dynamic> toJson() { return {
  if (confirmConfig != null) 'confirm_config': confirmConfig?.toJson(),
  'payment_intent': paymentIntent.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_intent'); } 
TerminalReaderReaderResourceConfirmPaymentIntentAction copyWith({TerminalReaderReaderResourceConfirmConfig Function()? confirmConfig, TerminalReaderReaderResourceConfirmPaymentIntentActionPaymentIntent? paymentIntent, }) { return TerminalReaderReaderResourceConfirmPaymentIntentAction(
  confirmConfig: confirmConfig != null ? confirmConfig() : this.confirmConfig,
  paymentIntent: paymentIntent ?? this.paymentIntent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceConfirmPaymentIntentAction &&
          confirmConfig == other.confirmConfig &&
          paymentIntent == other.paymentIntent; } 
@override int get hashCode { return Object.hash(confirmConfig, paymentIntent); } 
@override String toString() { return 'TerminalReaderReaderResourceConfirmPaymentIntentAction(confirmConfig: $confirmConfig, paymentIntent: $paymentIntent)'; } 
 }
