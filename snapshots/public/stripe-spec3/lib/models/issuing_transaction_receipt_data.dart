// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionReceiptData {const IssuingTransactionReceiptData({this.description = const Omittable.absent(), this.quantity = const Omittable.absent(), this.total = const Omittable.absent(), this.unitCost = const Omittable.absent(), });

factory IssuingTransactionReceiptData.fromJson(Map<String, dynamic> json) { return IssuingTransactionReceiptData(
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  quantity: json.containsKey('quantity') ? Omittable(json['quantity'] != null ? (json['quantity'] as num).toDouble() : null) : const Omittable.absent(),
  total: json.containsKey('total') ? Omittable(json['total'] != null ? (json['total'] as num).toInt() : null) : const Omittable.absent(),
  unitCost: json.containsKey('unit_cost') ? Omittable(json['unit_cost'] != null ? (json['unit_cost'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The description of the item. The maximum length of this field is 26 characters.
final Omittable<String?> description;

/// The quantity of the item.
final Omittable<double?> quantity;

/// The total for this line item in cents.
final Omittable<int?> total;

/// The unit cost of the item in cents.
final Omittable<int?> unitCost;

Map<String, dynamic> toJson() { return {
  if (description.isPresent) 'description': description.value,
  if (quantity.isPresent) 'quantity': quantity.value,
  if (total.isPresent) 'total': total.value,
  if (unitCost.isPresent) 'unit_cost': unitCost.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'quantity', 'total', 'unit_cost'}.contains(key)); } 
IssuingTransactionReceiptData copyWith({Omittable<String?>? description, Omittable<double?>? quantity, Omittable<int?>? total, Omittable<int?>? unitCost, }) { return IssuingTransactionReceiptData(
  description: description ?? this.description,
  quantity: quantity ?? this.quantity,
  total: total ?? this.total,
  unitCost: unitCost ?? this.unitCost,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionReceiptData &&
          description == other.description &&
          quantity == other.quantity &&
          total == other.total &&
          unitCost == other.unitCost; } 
@override int get hashCode { return Object.hash(description, quantity, total, unitCost); } 
@override String toString() { return 'IssuingTransactionReceiptData(description: $description, quantity: $quantity, total: $total, unitCost: $unitCost)'; } 
 }
