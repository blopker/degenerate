// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_pages_checkout_session_optional_item_adjustable_quantity.dart';/// 
@immutable final class PaymentPagesCheckoutSessionOptionalItem {const PaymentPagesCheckoutSessionOptionalItem({required this.price, required this.quantity, this.adjustableQuantity = const Omittable.absent(), });

factory PaymentPagesCheckoutSessionOptionalItem.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionOptionalItem(
  adjustableQuantity: json.containsKey('adjustable_quantity') ? Omittable(json['adjustable_quantity'] != null ? PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity.fromJson(json['adjustable_quantity'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  price: json['price'] as String,
  quantity: (json['quantity'] as num).toInt(),
); }

final Omittable<PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity?> adjustableQuantity;

final String price;

final int quantity;

Map<String, dynamic> toJson() { return {
  if (adjustableQuantity.isPresent) 'adjustable_quantity': adjustableQuantity.value?.toJson(),
  'price': price,
  'quantity': quantity,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('price') && json['price'] is String &&
      json.containsKey('quantity') && json['quantity'] is num; } 
PaymentPagesCheckoutSessionOptionalItem copyWith({Omittable<PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity?>? adjustableQuantity, String? price, int? quantity, }) { return PaymentPagesCheckoutSessionOptionalItem(
  adjustableQuantity: adjustableQuantity ?? this.adjustableQuantity,
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
