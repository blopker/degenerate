// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsPayco {const PaymentMethodDetailsPayco({this.buyerId = const Omittable.absent(), this.transactionId = const Omittable.absent(), });

factory PaymentMethodDetailsPayco.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPayco(
  buyerId: json.containsKey('buyer_id') ? Omittable(json['buyer_id'] as String?) : const Omittable.absent(),
  transactionId: json.containsKey('transaction_id') ? Omittable(json['transaction_id'] as String?) : const Omittable.absent(),
); }

/// A unique identifier for the buyer as determined by the local payment processor.
final Omittable<String?> buyerId;

/// The Payco transaction ID associated with this payment.
final Omittable<String?> transactionId;

Map<String, dynamic> toJson() { return {
  if (buyerId.isPresent) 'buyer_id': buyerId.value,
  if (transactionId.isPresent) 'transaction_id': transactionId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'buyer_id', 'transaction_id'}.contains(key)); } 
PaymentMethodDetailsPayco copyWith({Omittable<String?>? buyerId, Omittable<String?>? transactionId, }) { return PaymentMethodDetailsPayco(
  buyerId: buyerId ?? this.buyerId,
  transactionId: transactionId ?? this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPayco &&
          buyerId == other.buyerId &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(buyerId, transactionId); } 
@override String toString() { return 'PaymentMethodDetailsPayco(buyerId: $buyerId, transactionId: $transactionId)'; } 
 }
