// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent.dart';import 'payment_method.dart';import 'terminal_reader_reader_resource_collect_config.dart';import 'terminal_reader_reader_resource_collect_payment_method_action_payment_intent.dart';/// Represents a reader action to collect a payment method
final class TerminalReaderReaderResourceCollectPaymentMethodAction {const TerminalReaderReaderResourceCollectPaymentMethodAction({this.collectConfig, required this.paymentIntent, this.paymentMethod, });

factory TerminalReaderReaderResourceCollectPaymentMethodAction.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceCollectPaymentMethodAction(
  collectConfig: json['collect_config'] != null ? TerminalReaderReaderResourceCollectConfig.fromJson(json['collect_config'] as Map<String, dynamic>) : null,
  paymentIntent: OneOf2.parse(json['payment_intent'], fromA: (v) => v as String, fromB: (v) => PaymentIntent.fromJson(v as Map<String, dynamic>),),
  paymentMethod: json['payment_method'] != null ? PaymentMethod.fromJson(json['payment_method'] as Map<String, dynamic>) : null,
); }

final TerminalReaderReaderResourceCollectConfig? collectConfig;

/// Most recent PaymentIntent processed by the reader.
final TerminalReaderReaderResourceCollectPaymentMethodActionPaymentIntent paymentIntent;

final PaymentMethod? paymentMethod;

Map<String, dynamic> toJson() { return {
  if (collectConfig != null) 'collect_config': collectConfig?.toJson(),
  'payment_intent': paymentIntent.toJson(),
  if (paymentMethod != null) 'payment_method': paymentMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_intent'); } 
TerminalReaderReaderResourceCollectPaymentMethodAction copyWith({TerminalReaderReaderResourceCollectConfig Function()? collectConfig, TerminalReaderReaderResourceCollectPaymentMethodActionPaymentIntent? paymentIntent, PaymentMethod Function()? paymentMethod, }) { return TerminalReaderReaderResourceCollectPaymentMethodAction(
  collectConfig: collectConfig != null ? collectConfig() : this.collectConfig,
  paymentIntent: paymentIntent ?? this.paymentIntent,
  paymentMethod: paymentMethod != null ? paymentMethod() : this.paymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceCollectPaymentMethodAction &&
          collectConfig == other.collectConfig &&
          paymentIntent == other.paymentIntent &&
          paymentMethod == other.paymentMethod; } 
@override int get hashCode { return Object.hash(collectConfig, paymentIntent, paymentMethod); } 
@override String toString() { return 'TerminalReaderReaderResourceCollectPaymentMethodAction(collectConfig: $collectConfig, paymentIntent: $paymentIntent, paymentMethod: $paymentMethod)'; } 
 }
