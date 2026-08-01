// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsBlik {const PaymentMethodDetailsBlik({this.buyerId = const Omittable.absent()});

factory PaymentMethodDetailsBlik.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsBlik(
  buyerId: json.containsKey('buyer_id') ? Omittable(json['buyer_id'] as String?) : const Omittable.absent(),
); }

/// A unique and immutable identifier assigned by BLIK to every buyer.
final Omittable<String?> buyerId;

Map<String, dynamic> toJson() { return {
  if (buyerId.isPresent) 'buyer_id': buyerId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'buyer_id'}.contains(key)); } 
PaymentMethodDetailsBlik copyWith({Omittable<String?>? buyerId}) { return PaymentMethodDetailsBlik(
  buyerId: buyerId ?? this.buyerId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsBlik &&
          buyerId == other.buyerId; } 
@override int get hashCode { return buyerId.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsBlik(buyerId: $buyerId)'; } 
 }
