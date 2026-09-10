// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class SourceOrderItem {const SourceOrderItem({this.amount = const Omittable.absent(), this.currency = const Omittable.absent(), this.description = const Omittable.absent(), this.parent = const Omittable.absent(), this.quantity, this.type = const Omittable.absent(), });

factory SourceOrderItem.fromJson(Map<String, dynamic> json) { return SourceOrderItem(
  amount: json.containsKey('amount') ? Omittable(json['amount'] != null ? (json['amount'] as num).toInt() : null) : const Omittable.absent(),
  currency: json.containsKey('currency') ? Omittable(json['currency'] as String?) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  parent: json.containsKey('parent') ? Omittable(json['parent'] as String?) : const Omittable.absent(),
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
  type: json.containsKey('type') ? Omittable(json['type'] as String?) : const Omittable.absent(),
); }

/// The amount (price) for this order item.
final Omittable<int?> amount;

/// This currency of this order item. Required when `amount` is present.
final Omittable<String?> currency;

/// Human-readable description for this order item.
final Omittable<String?> description;

/// The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU).
final Omittable<String?> parent;

/// The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
final int? quantity;

/// The type of this order item. Must be `sku`, `tax`, or `shipping`.
final Omittable<String?> type;

Map<String, dynamic> toJson() { return {
  if (amount.isPresent) 'amount': amount.value,
  if (currency.isPresent) 'currency': currency.value,
  if (description.isPresent) 'description': description.value,
  if (parent.isPresent) 'parent': parent.value,
  'quantity': ?quantity,
  if (type.isPresent) 'type': type.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'currency', 'description', 'parent', 'quantity', 'type'}.contains(key)); } 
SourceOrderItem copyWith({Omittable<int?>? amount, Omittable<String?>? currency, Omittable<String?>? description, Omittable<String?>? parent, int? Function()? quantity, Omittable<String?>? type, }) { return SourceOrderItem(
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
  description: description ?? this.description,
  parent: parent ?? this.parent,
  quantity: quantity != null ? quantity() : this.quantity,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceOrderItem &&
          amount == other.amount &&
          currency == other.currency &&
          description == other.description &&
          parent == other.parent &&
          quantity == other.quantity &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amount, currency, description, parent, quantity, type); } 
@override String toString() { return 'SourceOrderItem(amount: $amount, currency: $currency, description: $description, parent: $parent, quantity: $quantity, type: $type)'; } 
 }
