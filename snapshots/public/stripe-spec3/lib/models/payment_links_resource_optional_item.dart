// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_optional_item_adjustable_quantity.dart';/// 
final class PaymentLinksResourceOptionalItem {const PaymentLinksResourceOptionalItem({this.adjustableQuantity, required this.price, required this.quantity, });

factory PaymentLinksResourceOptionalItem.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceOptionalItem(
  adjustableQuantity: json['adjustable_quantity'] != null ? PaymentLinksResourceOptionalItemAdjustableQuantity.fromJson(json['adjustable_quantity'] as Map<String, dynamic>) : null,
  price: json['price'] as String,
  quantity: (json['quantity'] as num).toInt(),
); }

final PaymentLinksResourceOptionalItemAdjustableQuantity? adjustableQuantity;

final String price;

final int quantity;

Map<String, dynamic> toJson() { return {
  if (adjustableQuantity != null) 'adjustable_quantity': adjustableQuantity?.toJson(),
  'price': price,
  'quantity': quantity,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('price') && json['price'] is String &&
      json.containsKey('quantity') && json['quantity'] is num; } 
PaymentLinksResourceOptionalItem copyWith({PaymentLinksResourceOptionalItemAdjustableQuantity? Function()? adjustableQuantity, String? price, int? quantity, }) { return PaymentLinksResourceOptionalItem(
  adjustableQuantity: adjustableQuantity != null ? adjustableQuantity() : this.adjustableQuantity,
  price: price ?? this.price,
  quantity: quantity ?? this.quantity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceOptionalItem &&
          adjustableQuantity == other.adjustableQuantity &&
          price == other.price &&
          quantity == other.quantity; } 
@override int get hashCode { return Object.hash(adjustableQuantity, price, quantity); } 
@override String toString() { return 'PaymentLinksResourceOptionalItem(adjustableQuantity: $adjustableQuantity, price: $price, quantity: $quantity)'; } 
 }
