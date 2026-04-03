// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'terminal_reader_reader_resource_tipping_config.dart';/// Represents a per-transaction override of a reader configuration
@immutable final class TerminalReaderReaderResourceCollectConfig {const TerminalReaderReaderResourceCollectConfig({this.enableCustomerCancellation, this.skipTipping, this.tipping, });

factory TerminalReaderReaderResourceCollectConfig.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceCollectConfig(
  enableCustomerCancellation: json['enable_customer_cancellation'] as bool?,
  skipTipping: json['skip_tipping'] as bool?,
  tipping: json['tipping'] != null ? TerminalReaderReaderResourceTippingConfig.fromJson(json['tipping'] as Map<String, dynamic>) : null,
); }

/// Enable customer-initiated cancellation when processing this payment.
final bool? enableCustomerCancellation;

/// Override showing a tipping selection screen on this transaction.
final bool? skipTipping;

final TerminalReaderReaderResourceTippingConfig? tipping;

Map<String, dynamic> toJson() { return {
  'enable_customer_cancellation': ?enableCustomerCancellation,
  'skip_tipping': ?skipTipping,
  if (tipping != null) 'tipping': tipping?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enable_customer_cancellation', 'skip_tipping', 'tipping'}.contains(key)); } 
TerminalReaderReaderResourceCollectConfig copyWith({bool Function()? enableCustomerCancellation, bool Function()? skipTipping, TerminalReaderReaderResourceTippingConfig Function()? tipping, }) { return TerminalReaderReaderResourceCollectConfig(
  enableCustomerCancellation: enableCustomerCancellation != null ? enableCustomerCancellation() : this.enableCustomerCancellation,
  skipTipping: skipTipping != null ? skipTipping() : this.skipTipping,
  tipping: tipping != null ? tipping() : this.tipping,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceCollectConfig &&
          enableCustomerCancellation == other.enableCustomerCancellation &&
          skipTipping == other.skipTipping &&
          tipping == other.tipping; } 
@override int get hashCode { return Object.hash(enableCustomerCancellation, skipTipping, tipping); } 
@override String toString() { return 'TerminalReaderReaderResourceCollectConfig(enableCustomerCancellation: $enableCustomerCancellation, skipTipping: $skipTipping, tipping: $tipping)'; } 
 }
