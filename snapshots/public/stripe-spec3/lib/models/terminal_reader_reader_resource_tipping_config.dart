// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a per-transaction tipping configuration
@immutable final class TerminalReaderReaderResourceTippingConfig {const TerminalReaderReaderResourceTippingConfig({this.amountEligible});

factory TerminalReaderReaderResourceTippingConfig.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceTippingConfig(
  amountEligible: json['amount_eligible'] != null ? (json['amount_eligible'] as num).toInt() : null,
); }

/// Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
final int? amountEligible;

Map<String, dynamic> toJson() { return {
  'amount_eligible': ?amountEligible,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_eligible'}.contains(key)); } 
TerminalReaderReaderResourceTippingConfig copyWith({int Function()? amountEligible}) { return TerminalReaderReaderResourceTippingConfig(
  amountEligible: amountEligible != null ? amountEligible() : this.amountEligible,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceTippingConfig &&
          amountEligible == other.amountEligible; } 
@override int get hashCode { return amountEligible.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceTippingConfig(amountEligible: $amountEligible)'; } 
 }
