// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentMethodDetailsBlik {const PaymentMethodDetailsBlik({this.buyerId});

factory PaymentMethodDetailsBlik.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsBlik(
  buyerId: json['buyer_id'] as String?,
); }

/// A unique and immutable identifier assigned by BLIK to every buyer.
final String? buyerId;

Map<String, dynamic> toJson() { return {
  'buyer_id': ?buyerId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodDetailsBlik copyWith({String? Function()? buyerId}) { return PaymentMethodDetailsBlik(
  buyerId: buyerId != null ? buyerId() : this.buyerId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsBlik &&
          buyerId == other.buyerId; } 
@override int get hashCode { return buyerId.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsBlik(buyerId: $buyerId)'; } 
 }
