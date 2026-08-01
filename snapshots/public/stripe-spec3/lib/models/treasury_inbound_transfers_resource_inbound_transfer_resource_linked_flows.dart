// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows {const TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows({this.receivedDebit = const Omittable.absent()});

factory TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows.fromJson(Map<String, dynamic> json) { return TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows(
  receivedDebit: json.containsKey('received_debit') ? Omittable(json['received_debit'] as String?) : const Omittable.absent(),
); }

/// If funds for this flow were returned after the flow went to the `succeeded` state, this field contains a reference to the ReceivedDebit return.
final Omittable<String?> receivedDebit;

Map<String, dynamic> toJson() { return {
  if (receivedDebit.isPresent) 'received_debit': receivedDebit.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'received_debit'}.contains(key)); } 
TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows copyWith({Omittable<String?>? receivedDebit}) { return TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows(
  receivedDebit: receivedDebit ?? this.receivedDebit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows &&
          receivedDebit == other.receivedDebit; } 
@override int get hashCode { return receivedDebit.hashCode; } 
@override String toString() { return 'TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows(receivedDebit: $receivedDebit)'; } 
 }
