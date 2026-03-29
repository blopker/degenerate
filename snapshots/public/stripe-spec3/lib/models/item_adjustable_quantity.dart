// GENERATED CODE - DO NOT MODIFY BY HAND

import 'line_items_adjustable_quantity.dart';final class ItemAdjustableQuantity {const ItemAdjustableQuantity({this.lineItemsAdjustableQuantity});

factory ItemAdjustableQuantity.fromJson(Map<String, dynamic> json) { return ItemAdjustableQuantity(
  lineItemsAdjustableQuantity: LineItemsAdjustableQuantity.canParse(json) ? LineItemsAdjustableQuantity.fromJson(json) : null,
); }

final LineItemsAdjustableQuantity? lineItemsAdjustableQuantity;

/// At least one variant must be present.
bool get isValid { return lineItemsAdjustableQuantity != null; } 
Map<String, dynamic> toJson() { return {
  ...?lineItemsAdjustableQuantity?.toJson(),
}; } 
 }
