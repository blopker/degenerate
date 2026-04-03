// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a per-setup override of a reader configuration
@immutable final class TerminalReaderReaderResourceProcessSetupConfig {const TerminalReaderReaderResourceProcessSetupConfig({this.enableCustomerCancellation});

factory TerminalReaderReaderResourceProcessSetupConfig.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceProcessSetupConfig(
  enableCustomerCancellation: json['enable_customer_cancellation'] as bool?,
); }

/// Enable customer-initiated cancellation when processing this SetupIntent.
final bool? enableCustomerCancellation;

Map<String, dynamic> toJson() { return {
  'enable_customer_cancellation': ?enableCustomerCancellation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enable_customer_cancellation'}.contains(key)); } 
TerminalReaderReaderResourceProcessSetupConfig copyWith({bool Function()? enableCustomerCancellation}) { return TerminalReaderReaderResourceProcessSetupConfig(
  enableCustomerCancellation: enableCustomerCancellation != null ? enableCustomerCancellation() : this.enableCustomerCancellation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceProcessSetupConfig &&
          enableCustomerCancellation == other.enableCustomerCancellation; } 
@override int get hashCode { return enableCustomerCancellation.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceProcessSetupConfig(enableCustomerCancellation: $enableCustomerCancellation)'; } 
 }
