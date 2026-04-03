// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a per-transaction override of a reader configuration
@immutable final class TerminalReaderReaderResourceRefundPaymentConfig {const TerminalReaderReaderResourceRefundPaymentConfig({this.enableCustomerCancellation});

factory TerminalReaderReaderResourceRefundPaymentConfig.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceRefundPaymentConfig(
  enableCustomerCancellation: json['enable_customer_cancellation'] as bool?,
); }

/// Enable customer-initiated cancellation when refunding this payment.
final bool? enableCustomerCancellation;

Map<String, dynamic> toJson() { return {
  'enable_customer_cancellation': ?enableCustomerCancellation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enable_customer_cancellation'}.contains(key)); } 
TerminalReaderReaderResourceRefundPaymentConfig copyWith({bool Function()? enableCustomerCancellation}) { return TerminalReaderReaderResourceRefundPaymentConfig(
  enableCustomerCancellation: enableCustomerCancellation != null ? enableCustomerCancellation() : this.enableCustomerCancellation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceRefundPaymentConfig &&
          enableCustomerCancellation == other.enableCustomerCancellation; } 
@override int get hashCode { return enableCustomerCancellation.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceRefundPaymentConfig(enableCustomerCancellation: $enableCustomerCancellation)'; } 
 }
