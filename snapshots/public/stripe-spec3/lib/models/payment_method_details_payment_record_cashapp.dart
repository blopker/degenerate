// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentMethodDetailsPaymentRecordCashapp {const PaymentMethodDetailsPaymentRecordCashapp({this.buyerId, this.cashtag, this.transactionId, });

factory PaymentMethodDetailsPaymentRecordCashapp.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordCashapp(
  buyerId: json['buyer_id'] as String?,
  cashtag: json['cashtag'] as String?,
  transactionId: json['transaction_id'] as String?,
); }

/// A unique and immutable identifier assigned by Cash App to every buyer.
final String? buyerId;

/// A public identifier for buyers using Cash App.
final String? cashtag;

/// A unique and immutable identifier of payments assigned by Cash App.
final String? transactionId;

Map<String, dynamic> toJson() { return {
  'buyer_id': ?buyerId,
  'cashtag': ?cashtag,
  'transaction_id': ?transactionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodDetailsPaymentRecordCashapp copyWith({String? Function()? buyerId, String? Function()? cashtag, String? Function()? transactionId, }) { return PaymentMethodDetailsPaymentRecordCashapp(
  buyerId: buyerId != null ? buyerId() : this.buyerId,
  cashtag: cashtag != null ? cashtag() : this.cashtag,
  transactionId: transactionId != null ? transactionId() : this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaymentRecordCashapp &&
          buyerId == other.buyerId &&
          cashtag == other.cashtag &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(buyerId, cashtag, transactionId); } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordCashapp(buyerId: $buyerId, cashtag: $cashtag, transactionId: $transactionId)'; } 
 }
