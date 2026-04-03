// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows {const TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows({this.receivedDebit});

factory TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows.fromJson(Map<String, dynamic> json) { return TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows(
  receivedDebit: json['received_debit'] as String?,
); }

/// If funds for this flow were returned after the flow went to the `succeeded` state, this field contains a reference to the ReceivedDebit return.
final String? receivedDebit;

Map<String, dynamic> toJson() { return {
  'received_debit': ?receivedDebit,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'received_debit'}.contains(key)); } 
TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows copyWith({String? Function()? receivedDebit}) { return TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows(
  receivedDebit: receivedDebit != null ? receivedDebit() : this.receivedDebit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows &&
          receivedDebit == other.receivedDebit; } 
@override int get hashCode { return receivedDebit.hashCode; } 
@override String toString() { return 'TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows(receivedDebit: $receivedDebit)'; } 
 }
