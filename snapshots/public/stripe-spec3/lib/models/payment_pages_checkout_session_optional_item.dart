// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_optional_item_adjustable_quantity.dart';/// 
final class PaymentPagesCheckoutSessionOptionalItem {const PaymentPagesCheckoutSessionOptionalItem({this.adjustableQuantity, required this.price, required this.quantity, });

factory PaymentPagesCheckoutSessionOptionalItem.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionOptionalItem(
  adjustableQuantity: json['adjustable_quantity'] != null ? PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity.fromJson(json['adjustable_quantity'] as Map<String, dynamic>) : null,
  price: json['price'] as String,
  quantity: (json['quantity'] as num).toInt(),
); }

final PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity? adjustableQuantity;

final String price;

final int quantity;

Map<String, dynamic> toJson() { return {
  if (adjustableQuantity != null) 'adjustable_quantity': adjustableQuantity?.toJson(),
  'price': price,
  'quantity': quantity,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('price') && json['price'] is String &&
      json.containsKey('quantity') && json['quantity'] is num; } 
PaymentPagesCheckoutSessionOptionalItem copyWith({PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity? Function()? adjustableQuantity, String? price, int? quantity, }) { return PaymentPagesCheckoutSessionOptionalItem(
  adjustableQuantity: adjustableQuantity != null ? adjustableQuantity() : this.adjustableQuantity,
  price: price ?? this.price,
  quantity: quantity ?? this.quantity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionOptionalItem &&
          adjustableQuantity == other.adjustableQuantity &&
          price == other.price &&
          quantity == other.quantity; } 
@override int get hashCode { return Object.hash(adjustableQuantity, price, quantity); } 
@override String toString() { return 'PaymentPagesCheckoutSessionOptionalItem(adjustableQuantity: $adjustableQuantity, price: $price, quantity: $quantity)'; } 
 }
