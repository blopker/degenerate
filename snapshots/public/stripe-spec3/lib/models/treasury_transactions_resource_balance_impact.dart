// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Change to a FinancialAccount's balance
@immutable final class TreasuryTransactionsResourceBalanceImpact {const TreasuryTransactionsResourceBalanceImpact({required this.cash, required this.inboundPending, required this.outboundPending, });

factory TreasuryTransactionsResourceBalanceImpact.fromJson(Map<String, dynamic> json) { return TreasuryTransactionsResourceBalanceImpact(
  cash: (json['cash'] as num).toInt(),
  inboundPending: (json['inbound_pending'] as num).toInt(),
  outboundPending: (json['outbound_pending'] as num).toInt(),
); }

/// The change made to funds the user can spend right now.
final int cash;

/// The change made to funds that are not spendable yet, but will become available at a later time.
final int inboundPending;

/// The change made to funds in the account, but not spendable because they are being held for pending outbound flows.
final int outboundPending;

Map<String, dynamic> toJson() { return {
  'cash': cash,
  'inbound_pending': inboundPending,
  'outbound_pending': outboundPending,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cash') && json['cash'] is num &&
      json.containsKey('inbound_pending') && json['inbound_pending'] is num &&
      json.containsKey('outbound_pending') && json['outbound_pending'] is num; } 
TreasuryTransactionsResourceBalanceImpact copyWith({int? cash, int? inboundPending, int? outboundPending, }) { return TreasuryTransactionsResourceBalanceImpact(
  cash: cash ?? this.cash,
  inboundPending: inboundPending ?? this.inboundPending,
  outboundPending: outboundPending ?? this.outboundPending,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryTransactionsResourceBalanceImpact &&
          cash == other.cash &&
          inboundPending == other.inboundPending &&
          outboundPending == other.outboundPending; } 
@override int get hashCode { return Object.hash(cash, inboundPending, outboundPending); } 
@override String toString() { return 'TreasuryTransactionsResourceBalanceImpact(cash: $cash, inboundPending: $inboundPending, outboundPending: $outboundPending)'; } 
 }
