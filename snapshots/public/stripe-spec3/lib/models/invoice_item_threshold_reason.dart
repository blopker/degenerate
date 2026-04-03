// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class InvoiceItemThresholdReason {const InvoiceItemThresholdReason({required this.lineItemIds, required this.usageGte, });

factory InvoiceItemThresholdReason.fromJson(Map<String, dynamic> json) { return InvoiceItemThresholdReason(
  lineItemIds: (json['line_item_ids'] as List<dynamic>).map((e) => e as String).toList(),
  usageGte: (json['usage_gte'] as num).toInt(),
); }

/// The IDs of the line items that triggered the threshold invoice.
final List<String> lineItemIds;

/// The quantity threshold boundary that applied to the given line item.
final int usageGte;

Map<String, dynamic> toJson() { return {
  'line_item_ids': lineItemIds,
  'usage_gte': usageGte,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('line_item_ids') &&
      json.containsKey('usage_gte') && json['usage_gte'] is num; } 
InvoiceItemThresholdReason copyWith({List<String>? lineItemIds, int? usageGte, }) { return InvoiceItemThresholdReason(
  lineItemIds: lineItemIds ?? this.lineItemIds,
  usageGte: usageGte ?? this.usageGte,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceItemThresholdReason &&
          listEquals(lineItemIds, other.lineItemIds) &&
          usageGte == other.usageGte; } 
@override int get hashCode { return Object.hash(Object.hashAll(lineItemIds), usageGte); } 
@override String toString() { return 'InvoiceItemThresholdReason(lineItemIds: $lineItemIds, usageGte: $usageGte)'; } 
 }
