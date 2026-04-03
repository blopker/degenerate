// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'terminal_reader_reader_resource_tipping_config.dart';/// Represents a per-transaction override of a reader configuration
@immutable final class TerminalReaderReaderResourceProcessConfig {const TerminalReaderReaderResourceProcessConfig({this.enableCustomerCancellation, this.returnUrl, this.skipTipping, this.tipping, });

factory TerminalReaderReaderResourceProcessConfig.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceProcessConfig(
  enableCustomerCancellation: json['enable_customer_cancellation'] as bool?,
  returnUrl: json['return_url'] as String?,
  skipTipping: json['skip_tipping'] as bool?,
  tipping: json['tipping'] != null ? TerminalReaderReaderResourceTippingConfig.fromJson(json['tipping'] as Map<String, dynamic>) : null,
); }

/// Enable customer-initiated cancellation when processing this payment.
final bool? enableCustomerCancellation;

/// If the customer doesn't abandon authenticating the payment, they're redirected to this URL after completion.
final String? returnUrl;

/// Override showing a tipping selection screen on this transaction.
final bool? skipTipping;

final TerminalReaderReaderResourceTippingConfig? tipping;

Map<String, dynamic> toJson() { return {
  'enable_customer_cancellation': ?enableCustomerCancellation,
  'return_url': ?returnUrl,
  'skip_tipping': ?skipTipping,
  if (tipping != null) 'tipping': tipping?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enable_customer_cancellation', 'return_url', 'skip_tipping', 'tipping'}.contains(key)); } 
TerminalReaderReaderResourceProcessConfig copyWith({bool Function()? enableCustomerCancellation, String Function()? returnUrl, bool Function()? skipTipping, TerminalReaderReaderResourceTippingConfig Function()? tipping, }) { return TerminalReaderReaderResourceProcessConfig(
  enableCustomerCancellation: enableCustomerCancellation != null ? enableCustomerCancellation() : this.enableCustomerCancellation,
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
  skipTipping: skipTipping != null ? skipTipping() : this.skipTipping,
  tipping: tipping != null ? tipping() : this.tipping,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceProcessConfig &&
          enableCustomerCancellation == other.enableCustomerCancellation &&
          returnUrl == other.returnUrl &&
          skipTipping == other.skipTipping &&
          tipping == other.tipping; } 
@override int get hashCode { return Object.hash(enableCustomerCancellation, returnUrl, skipTipping, tipping); } 
@override String toString() { return 'TerminalReaderReaderResourceProcessConfig(enableCustomerCancellation: $enableCustomerCancellation, returnUrl: $returnUrl, skipTipping: $skipTipping, tipping: $tipping)'; } 
 }
